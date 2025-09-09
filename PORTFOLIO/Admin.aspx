<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PORTFOLIO.Admin" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .login-container {
            background: white;
            width: 350px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            margin-bottom: 30px;
        }

        .login-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group.checkbox {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .form-group input[type="checkbox"] {
            margin-right: 8px;
            transform: scale(1.2);
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: 500;
        }

        .form-group.checkbox label {
            margin-bottom: 0;
            font-size: 14px;
            cursor: pointer;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #e1e1e1;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.3s ease;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="password"]:focus {
            outline: none;
            border-color: #667eea;
        }

        #btnLogin {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s ease;
        }

        #btnLogin:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        #btnLogout {
            background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 20px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            margin-bottom: 15px;
            transition: transform 0.2s ease;
        }

        #btnLogout:hover {
            transform: translateY(-1px);
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
        }

        #lblMessage {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-weight: 500;
        }

        .grid-container {
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            padding: 20px;
            max-width: 90%;
            width: 100%;
            overflow-x: auto;
        }

        /* GridView Styling */
        #GridContacts {
            width: 100%;
            border-collapse: collapse;
            font-size: 15px;
            background-color: white;
            border: none;
            min-width: 700px;
        }

        #GridContacts th {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 15px 10px;
            text-align: left;
            font-weight: 600;
            border: none;
            position: sticky;
            top: 0;
        }

        #GridContacts td {
            padding: 12px 10px;
            border-bottom: 1px solid #e1e1e1;
            border-right: 1px solid #f0f0f0;
            color: #333;
        }

        #GridContacts tr:nth-child(even) {
            background-color: #f8f9ff;
        }

        #GridContacts tr:hover {
            background-color: #e8f2ff;
            transition: background-color 0.2s ease;
        }

        #GridContacts tr:first-child th:first-child {
            border-top-left-radius: 8px;
        }

        #GridContacts tr:first-child th:last-child {
            border-top-right-radius: 8px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .login-container {
                width: 90%;
                max-width: 350px;
            }
            
            .grid-container {
                padding: 15px;
                max-width: 95%;
            }
            
            #GridContacts {
                font-size: 12px;
            }
            
            #GridContacts th,
            #GridContacts td {
                padding: 8px 5px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Admin Login</h2>
            <div class="form-group">
                <label>Username</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group checkbox">
                <asp:CheckBox ID="chkRememberMe" runat="server" />
                <label for="<%= chkRememberMe.ClientID %>">Remember Me</label>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Visible="false" />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div class="grid-container">
            <asp:GridView ID="GridContacts" runat="server" AutoGenerateColumns="true" Visible="false" BorderWidth="0" GridLines="None"></asp:GridView>
        </div>
    </form>
</body>
</html>