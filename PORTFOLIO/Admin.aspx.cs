using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PORTFOLIO
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is already logged in via session
                if (Session["IsAdminLoggedIn"] != null && (bool)Session["IsAdminLoggedIn"])
                {
                    ShowLoggedInState();
                    return;
                }

                // Check for "Remember Me" cookie
                HttpCookie adminCookie = Request.Cookies["AdminLogin"];
                if (adminCookie != null && !string.IsNullOrEmpty(adminCookie.Value))
                {
                    string[] credentials = adminCookie.Value.Split('|');
                    if (credentials.Length == 2)
                    {
                        txtUsername.Text = credentials[0];
                        // Auto-login with remembered credentials
                        if (ValidateLogin(credentials[0], credentials[1]))
                        {
                            SetLoggedInSession(credentials[0]);
                            ShowLoggedInState();
                        }
                    }
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "❌ Please enter both username and password!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (ValidateLogin(username, password))
            {
                // Set session
                SetLoggedInSession(username);

                // Handle "Remember Me" functionality
                if (chkRememberMe.Checked)
                {
                    // Create cookie for 30 days
                    HttpCookie adminCookie = new HttpCookie("AdminLogin");
                    adminCookie.Value = username + "|" + password; // In production, consider hashing
                    adminCookie.Expires = DateTime.Now.AddDays(30);
                    adminCookie.HttpOnly = true; // Security: prevent client-side access
                    adminCookie.Secure = Request.IsSecureConnection; // Use HTTPS only if available
                    Response.Cookies.Add(adminCookie);
                }

                ShowLoggedInState();
            }
            else
            {
                lblMessage.Text = "❌ Invalid login!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                GridContacts.Visible = false;

                // Clear any existing sessions
                Session.Clear();
                Session.Abandon();

                // Remove remember me cookie if exists
                ClearRememberMeCookie();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            LogoutAdmin();
        }

        private bool ValidateLogin(string username, string password)
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    string query = "SELECT COUNT(*) FROM login WHERE Username=@user AND Password=@pass";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@user", username);
                    cmd.Parameters.AddWithValue("@pass", password);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
            catch (Exception ex)
            {
                // Log the exception (you can implement logging as needed)
                lblMessage.Text = "❌ Database connection error!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return false;
            }
        }

        private void SetLoggedInSession(string username)
        {
            Session["IsAdminLoggedIn"] = true;
            Session["AdminUsername"] = username;
            Session["LoginTime"] = DateTime.Now;
            Session.Timeout = 20; // Session timeout in minutes
        }

        private void ShowLoggedInState()
        {
            lblMessage.Text = "✅ Login successful! Welcome, " + Session["AdminUsername"] + "!";
            lblMessage.ForeColor = System.Drawing.Color.Green;

            // Show/hide appropriate controls
            btnLogin.Visible = false;
            btnLogout.Visible = true;
            txtUsername.Enabled = false;
            txtPassword.Enabled = false;
            chkRememberMe.Enabled = false;

            // Load and display contacts
            LoadContacts();
        }

        private void LoadContacts()
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM contact", conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridContacts.DataSource = dt;
                    GridContacts.DataBind();
                    GridContacts.Visible = true;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "❌ Error loading contacts!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                GridContacts.Visible = false;
            }
        }

        private void ClearRememberMeCookie()
        {
            if (Request.Cookies["AdminLogin"] != null)
            {
                HttpCookie adminCookie = new HttpCookie("AdminLogin");
                adminCookie.Expires = DateTime.Now.AddDays(-1);
                adminCookie.Value = "";
                Response.Cookies.Add(adminCookie);
            }
        }

        // Method to logout
        private void LogoutAdmin()
        {
            // Clear session
            Session.Clear();
            Session.Abandon();

            // Remove remember me cookie
            ClearRememberMeCookie();

            // Reset UI
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtUsername.Enabled = true;
            txtPassword.Enabled = true;
            chkRememberMe.Checked = false;
            chkRememberMe.Enabled = true;
            btnLogin.Visible = true;
            btnLogout.Visible = false;
            GridContacts.Visible = false;
            lblMessage.Text = "👋 You have been logged out successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Blue;
        }

        // Optional: Add session validation for additional security
        private bool IsValidSession()
        {
            if (Session["IsAdminLoggedIn"] == null || !(bool)Session["IsAdminLoggedIn"])
                return false;

            if (Session["LoginTime"] != null)
            {
                DateTime loginTime = (DateTime)Session["LoginTime"];
                if (DateTime.Now.Subtract(loginTime).TotalMinutes > Session.Timeout)
                {
                    LogoutAdmin();
                    return false;
                }
            }

            return true;
        }

        // Override PreRender to ensure session validation on each request
        protected override void OnPreRender(EventArgs e)
        {
            if (Session["IsAdminLoggedIn"] != null && (bool)Session["IsAdminLoggedIn"])
            {
                IsValidSession();
            }
            base.OnPreRender(e);
        }
    }
}