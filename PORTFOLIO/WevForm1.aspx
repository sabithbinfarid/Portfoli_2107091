<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PORTFOLIO.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MD. SABITH | Portfolio</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link  rel="stylesheet" href="StyleSheet1.css">
       
</head>
<body>
    <!-- Header & Navigation -->
    <header>
        <div class="container">
            <nav>
                <div class="logo">Portfolio<span></span></div>
                <ul class="nav-links">
                    <li><a href="#about">About</a></li>
                    <li><a href="#skills">Skills</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#contact">Contact</a></li>
                 <li><a href="#" class="btn" id="admin-login-btn">Admin Login</a></li>
                </ul>
                <div class="mobile-menu-btn">
                    <i class="fas fa-bars"></i>
                </div>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <div class="typing-container">
                        <h1 id="hero-title">MD. SABITH</h1>
                        <div class="developer-title" id="developer-title"></div>
                    </div>
                    <p id="hero-description">A passionate Computer Science & Engineering student specializing in backend systems and full-stack development. Currently pursuing my B.Sc. at Khulna University of Engineering & Technology (KUET).</p>
                    <div class="hero-buttons">
                        <a href="#projects" class="btn">View My Work</a>
                        <a href="#contact" class="btn btn-outline">Contact Me</a>
                        <a href="cv.pdf" class="btn btn-cv" download="MD_Sabith_CV.pdf" target="_blank">
                         Download CV
                    </a>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="profile.jpg" alt="MD. SABITH" id="hero-image">
                </div>
                <div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <div class="section-title">
                <h2 id="about-title">About Me</h2>
                <p id="about-subtitle">Get to know more about my background, education, and career objectives</p>
            </div>
            <div class="about-content">
                <div class="about-text">
                    <h3 id="about-heading">Career Objective</h3>
                    <p id="about-description">A motivated and passionate Computer Science & Engineering student at Khulna University of Engineering & Technology (KUET) with a strong foundation in software development, data structures, and database management.</p>
                    <p id="about-description-2">Eager to apply my technical skills and problem-solving abilities to a challenging software development role, particularly in backend systems or full-stack environments.</p>
                    <p id="about-description-3">I am a quick learner and adaptable to new technologies, with strong analytical and logical reasoning skills.</p>
                </div>
                <div class="about-details">
                    <div class="detail-item">
                        <div class="detail-icon">
                            <i class="fas fa-graduation-cap"></i>
                        </div>
                        <div class="detail-content">
                            <h4 id="education-title">Education</h4>
                            <p id="education-details">B.Sc. in Computer Science and Engineering<br>Khulna University of Engineering & Technology (KUET)<br>Current: 3rd Year (Expected Graduation: 2026)<br>Current CGPA: 3.06 / 4.00</p>
                        </div>
                    </div>
                    <div class="detail-item">
                        <div class="detail-icon">
                            <i class="fas fa-laptop-code"></i>
                        </div>
                        <div class="detail-content">
                            <h4 id="experience-title">Experience</h4>
                            <p id="experience-details">Developed multiple projects including Restaurant Management System, Digital Clock Simulation, and Web Applications using Laravel.<br>Solved 100+ problems on platforms like LeetCode, Codeforces, and UVa.</p>
                        </div>
                    </div>
                    <div class="detail-item">
                        <div class="detail-icon">
                            <i class="fas fa-street-view"></i>
                        </div>
                        <div class="detail-content">
                            <h4 id="strengths-title">Strengths</h4>
                            <p id="strengths-details">Strong Analytical and Logical Reasoning<br>Quick Learner and Adaptable to New Technologies<br>Effective Team Collaboration and Communication</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="skills">
        <div class="container">
            <div class="section-title">
                <h2 id="skills-title">Technical Skills</h2>
                <p id="skills-subtitle">Here are the technologies and tools I work with</p>
            </div>
            <div class="skills-container" id="skills-container">
                <div class="skill-category">
                    <h3><i class="fas fa-code"></i> Programming Languages</h3>
                    <div class="skill-list">
                        <div class="skill-item" data-skill="C">C</div>
                        <div class="skill-item" data-skill="C++">C++</div>
                        <div class="skill-item" data-skill="Java">Java</div>
                        <div class="skill-item" data-skill="Python">Python</div>
                        <div class="skill-item" data-skill="PHP">PHP</div>
                    </div>
                </div>
                
                <div class="skill-category">
                    <h3><i class="fas fa-globe"></i> Web Technologies</h3>
                    <div class="skill-list">
                        <div class="skill-item" data-skill="HTML">HTML</div>
                        <div class="skill-item" data-skill="CSS">CSS</div>
                        <div class="skill-item" data-skill="JavaScript">JavaScript</div>
                        <div class="skill-item" data-skill="Laravel">Laravel</div>
                    </div>
                </div>
                
                <div class="skill-category">
                    <h3><i class="fas fa-database"></i> Database & Tools</h3>
                    <div class="skill-list">
                        <div class="skill-item" data-skill="MySQL">MySQL</div>
                        <div class="skill-item" data-skill="Database Design">Database Design</div>
                        <div class="skill-item" data-skill="SQL Queries">SQL Queries</div>
                        <div class="skill-item" data-skill="Stored Procedures">Stored Procedures</div>
                    </div>
                </div>
                
                <div class="skill-category">
                    <h3><i class="fas fa-tools"></i> Tools & Platforms</h3>
                    <div class="skill-list">
                        <div class="skill-item" data-skill="Git">Git</div>
                        <div class="skill-item" data-skill="Jira">Jira</div>
                        <div class="skill-item" data-skill="IntelliJ IDEA">IntelliJ IDEA</div>
                        <div class="skill-item" data-skill="VS Code">VS Code</div>
                        <div class="skill-item" data-skill="Logisim">Logisim</div>
                        <div class="skill-item" data-skill="Linux/Windows">Linux/Windows</div>
                    </div>
                </div>
                
                <div class="skill-category">
                    <h3><i class="fas fa-lightbulb"></i> Core Concepts</h3>
                    <div class="skill-list">
                        <div class="skill-item" data-skill="Data Structures">Data Structures</div>
                        <div class="skill-item" data-skill="Algorithms">Algorithms</div>
                        <div class="skill-item" data-skill="OOP">OOP</div>
                        <div class="skill-item" data-skill="Digital Logic Design">Digital Logic Design</div>
                        <div class="skill-item" data-skill="Embedded Systems">Embedded Systems</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Skill Detail Modal -->
    <div class="skill-modal" id="skill-modal">
        <div class="skill-modal-content">
            <span class="close-skill-modal" id="close-skill-modal">&times;</span>
            <div class="skill-detail-header">
                <div class="skill-detail-icon">
                    <i class="fas fa-code"></i>
                </div>
                <h3 id="modal-skill-name">Skill Name</h3>
            </div>
            <div class="skill-detail-body">
                <h4>About This Skill</h4>
                <p id="modal-skill-description">Skill description will appear here.</p>
                
                <div class="skill-topics">
                    <h4>Key Topics</h4>
                    <div id="modal-skill-topics">
                        <!-- Topics will be added here dynamically -->
                    </div>
                </div>
                
                <div class="skill-projects">
                    <h4>Projects Using This Skill</h4>
                    <div id="modal-skill-projects">
                        <!-- Projects will be added here dynamically -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Projects Section -->
    <section id="projects" class="projects">
        <div class="container">
            <div class="section-title">
                <h2 id="projects-title">My Projects</h2>
                <p id="projects-subtitle">Here are some of the projects I've worked on</p>
            </div>
            <div class="projects-grid" id="projects-container">
                <div class="project-card">
                    <div class="project-img">
                        <img src="res.jpg" alt="Restaurant Management System">
                    </div>
                    <div class="project-info">
                        <h3>Restaurant Management System</h3>
                        <p>Developed a comprehensive Windows-based desktop application for managing restaurant operations including table management, order tracking, billing, and inventory management.</p>
                        <div class="project-tags">
                            <span class="project-tag">Java</span>
                            <span class="project-tag">OOP</span>
                            <span class="project-tag">SQL</span>
                            <span class="project-tag">IntelliJ IDEA</span>
                        </div>
                        <a href="https://github.com/sabithbinfarid/Restaurent-Management-System.git" class="project-link" target="_blank">View Project</a>
                    </div>
                </div>
                
                <div class="project-card">
                    <div class="project-img">
                        <img src="clock.jpg" alt="Digital Clock Simulation">
                    </div>
                    <div class="project-info">
                        <h3>Digital Clock Simulation</h3>
                        <p>Designed and simulated the complete logic circuit for a functional digital clock using Logisim with counters for seconds, minutes, and hours, and a display decoder.</p>
                        <div class="project-tags">
                            <span class="project-tag">Logisim</span>
                            <span class="project-tag">Digital Logic</span>
                            <span class="project-tag">Circuit Design</span>
                        </div>
                        <a href="https://github.com/sabithbinfarid/Clock-Design.git" class="project-link" target="_blank">View Project</a>
                    </div>
                </div>
                
                <div class="project-card">
                    <div class="project-img">
                        <img src="blood.jpg" alt="Web Development">
                    </div>
                    <div class="project-info">
                        <h3>Blood Donation Management System (Laravel)</h3>
                        <p>Modified and enhanced web applications using the Laravel PHP framework with backend logic, MVC architecture, and frontend integration.</p>
                        <div class="project-tags">
                            <span class="project-tag">Laravel</span>
                            <span class="project-tag">PHP</span>
                            <span class="project-tag">MVC</span>
                            <span class="project-tag">HTML/CSS</span>
                        </div>
                        <a href="https://github.com/sabithbinfarid/Blood-Donation-Management-Laravel-.git" class="project-link" target="_blank">View Project</a>
                    </div>
                </div>

                <div class="project-card">
                    <div class="project-img">
                        <img src="img.jpg" alt="20 Bit Mini Computer Design">
                    </div>
                    <div class="project-info">
                        <h3>20 Bit Mini Computer Design</h3>
                        <p>Designed and implemented a 20-bit mini computer architecture as part of computer architecture course, including ALU, control unit, and memory management components.</p>
                        <div class="project-tags">
                            <span class="project-tag">Computer Architecture</span>
                            <span class="project-tag">Logisim</span>
                            <span class="project-tag">Digital Design</span>
                            <span class="project-tag">Assembly</span>
                        </div>
                        <a href="https://github.com/sabithbinfarid/20-bit-mini-computer.git" class="project-link" target="_blank">View Project</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <div class="container">
            <div class="section-title">
                <h2 id="contact-title">Contact Me</h2>
                <p id="contact-subtitle">Get in touch with me for opportunities or collaborations</p>
            </div>
            <div class="contact-container">
                <div class="contact-info">
                    <h3 id="contact-heading">Let's Talk</h3>
                    <div class="contact-details">
                        <div class="contact-detail">
                            <div class="contact-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h4 id="location-title">Location</h4>
                                <p id="location-details">Khulna, Bangladesh</p>
                            </div>
                        </div>
                        <div class="contact-detail">
                            <div class="contact-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="contact-text">
                                <h4 id="email-title">Email</h4>
                                <p id="email-details">sabithbinfarid2022@gmail.com</p>
                            </div>
                        </div>
                        <div class="contact-detail">
                            <div class="contact-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="contact-text">
                                <h4 id="phone-title">Phone</h4>
                                <p id="phone-details">+8801310348357</p>
                            </div>
                        </div>
                        <div class="contact-detail">
                            <div class="contact-icon">
                                <i class="fas fa-graduation-cap"></i>
                            </div>
                            <div class="contact-text">
                                <h4 id="education-contact-title">Education</h4>
                                <p id="education-contact-details">Khulna University of Engineering & Technology (KUET)</p>
                            </div>
                        </div>
                    </div>
                    <div class="social-links">
                        <a href="https://www.linkedin.com/public-profile/settings?trk=d_flagship3_profile_self_view_public_profile" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                        <a href="https://github.com/sabithbinfarid?tab=overview&from=2025-08-01&to=2025-08-31" class="social-link"><i class="fab fa-github"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.facebook.com/sabith.sabith.752861" class="social-link"><i class="fab fa-facebook-f"></i></a>
                    </div>
                </div>

              <div class="contact-form">
                <form  runat="server">
                 <div class="form-group">
                      <label for="name">Your Name</label>
                 <asp:TextBox ID="txtName" runat="server" required></asp:TextBox>
                  </div>
         <div class="form-group">
              <label for="email">Your Email</label>
          <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required ></asp:TextBox>
    </div>
          <div class="form-group">
              <label for="Subject">Subject</label>
         <asp:TextBox ID="txtSubject" runat="server" required ></asp:TextBox>
              </div>
         <div class="form-group">
               <label for="Message">Message</label>
         <asp:TextBox ID="txtMessage" runat="server" Class="form-control" TextMode="MultiLine"  required ></asp:TextBox>
            </div>
           <asp:Button ID="btnSend" runat="server" Text="Send Message" Class="btn" OnClick="btn_send" />
           <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
                   </form>
            </div>
        </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <h3 id="footer-title">MD. SABITH</h3>
                <p id="footer-description">A passionate Computer Science & Engineering student specializing in backend systems and full-stack development.</p>
                <a href="#contact" class="btn">Get In Touch</a>
            </div>
            <div class="copyright">
                <p>&copy; 2023 MD. SABITH. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Admin Panel -->
    <div class="admin-panel" id="admin-panel">
        <div class="admin-container">
            <div class="admin-header">
                <h2>Admin Panel</h2>
                <button class="close-admin" id="close-admin">Close</button>
            </div>
            
            <div class="admin-options">
                <div class="admin-option">
                    <h3>Admin Access</h3>
                    <p>Click the button below to access the admin dashboard.</p>
                    <button class="login-btn" id="admin-redirect-btn">Login</button>
                </div>
            </div>
        </div>
    </div>

    <script src="JavaScript.js"></script>
    <script>
        // Admin panel functionality
        document.addEventListener('DOMContentLoaded', function () {
            const adminLoginBtn = document.getElementById('admin-login-btn');
            const adminPanel = document.getElementById('admin-panel');
            const closeAdmin = document.getElementById('close-admin');
            const adminRedirectBtn = document.getElementById('admin-redirect-btn');

            // Show admin panel when clicking admin login
            adminLoginBtn.addEventListener('click', function (e) {
                e.preventDefault();
                adminPanel.style.display = 'flex';
            });

            // Close admin panel
            closeAdmin.addEventListener('click', function () {
                adminPanel.style.display = 'none';
            });

            // Close panel when clicking outside
            adminPanel.addEventListener('click', function (e) {
                if (e.target === adminPanel) {
                    adminPanel.style.display = 'none';
                }
            });

            // Redirect to admin page (you can add your link here)
            adminRedirectBtn.addEventListener('click', function () {
                // Replace 'your-admin-page-url.aspx' with your actual admin page URL
                window.location.href = 'Admin.aspx'; // Change this to your admin page URL
            });
        });
    </script>

    <style>
        .admin-panel {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.8);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        .admin-container {
            background: white;
            padding: 2rem;
            border-radius: 15px;
            max-width: 400px;
            width: 90%;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        .admin-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 1rem;
        }

        .admin-header h2 {
            margin: 0;
            color: #333;
        }

        .close-admin {
            background: none;
            border: none;
            font-size: 1rem;
            cursor: pointer;
            color: #666;
            padding: 0.5rem;
        }

        .close-admin:hover {
            color: #333;
        }

        .admin-options {
            text-align: center;
        }

        .admin-option {
            padding: 1rem 0;
        }

        .admin-option h3 {
            color: #333;
            margin-bottom: 1rem;
        }

        .admin-option p {
            color: #666;
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .login-btn {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 25px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            min-width: 120px;
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
        }

        .login-btn:active {
            transform: translateY(0);
        }
    </style>
</body>
</html>