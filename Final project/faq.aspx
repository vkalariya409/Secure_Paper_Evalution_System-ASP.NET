<%@ Page Title="" Language="C#" MasterPageFile="~/default_page.Master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="Final_project.faq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>SecurePaper · College Examination Management System</title>
        <meta name="description" content="Secure, Smart Examination Management for Modern Colleges - Online quizzes, theory papers, practicals, digital evaluation, and role-based portals.">
  
  <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Icons & Font Awesome -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
  
  <!-- Custom Style -->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

  <!-- Landing Top Navbar -->
        <nav class="navbar navbar-expand-lg sticky-top sp-navbar">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center gap-2" href="index.html">
                <div class="sp-brand-icon">
                    <i class="bi bi-shield-lock-fill"></i>
                </div>
                <span class="fs-4 fw-extrabold text-dark">Secure<span class="sp-text-gradient">Paper</span></span> </a>
                <button class="navbar-toggler border-0 shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#landingNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="landingNavbar">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link sp-nav-link active" href="index.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link sp-nav-link" href="about.aspx">About</a></li>
                        <li class="nav-item"><a class="nav-link sp-nav-link" href="index.aspx#features">Features</a></li>
                        <li class="nav-item"><a class="nav-link sp-nav-link" href="index.aspx#departments">Departments</a></li>
                        <li class="nav-item"><a class="nav-link sp-nav-link" href="index.aspx#faculty">Faculty</a></li>
                        <li class="nav-item"><a class="nav-link sp-nav-link" href="contact.aspx">Contact</a></li>
                        <li class="nav-item"><a class="nav-link sp-nav-link" href="faq.aspx">FAQ</a></li>
                    </ul>
                    <div class="d-flex align-items-center gap-3">
                        <button class="sp-icon-btn sp-theme-toggle" title="Toggle Theme">
                            <i class="bi bi-moon-stars-fill"></i>
                        </button>
                        <a href="login-selection.aspx" class="btn btn-sp-primary"><i class="bi bi-box-arrow-in-right"></i>Login</a>
                    </div>
                </div>
            </div>
        </nav>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
            
  <!-- Content -->
  <div class="container py-5 flex-grow-1 max-w-2xl">
    <nav aria-label="breadcrumb" class="mb-4">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.aspx"><i class="bi bi-house me-1"></i> Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">FAQ</li>
      </ol>
    </nav>

    <div class="text-center mb-5">
      <span class="sp-badge-pill sp-badge-primary mb-2">Help Center</span>
      <h1 class="fw-extrabold display-5 mb-2">Frequently Asked Questions</h1>
      <p class="text-muted fs-6">Find quick answers to key questions about SecurePaper Examination Management System.</p>
    </div>

    <div class="accordion shadow-sm rounded-4 overflow-hidden" id="faqAccordion">
      <!-- FAQ 1 -->
      <div class="accordion-item border-0 border-bottom">
        <h2 class="accordion-header">
          <button class="accordion-button fw-bold py-3" type="button" data-bs-toggle="collapse" data-bs-target="#faq1">
            <i class="bi bi-patch-question text-primary me-2 fs-5"></i> How do students attempt live online quizzes?
          </button>
        </h2>
        <div id="faq1" class="accordion-collapse collapse show" data-bs-parent="#faqAccordion">
          <div class="accordion-body text-muted">
            Students log into the Student Portal, select their active registered course, and start the timed test engine. The question palette updates live as answers are submitted with automatic submit upon timer expiry.
          </div>
        </div>
      </div>

      <!-- FAQ 2 -->
      <div class="accordion-item border-0 border-bottom">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed fw-bold py-3" type="button" data-bs-toggle="collapse" data-bs-target="#faq2">
            <i class="bi bi-diagram-3 text-info me-2 fs-5"></i> How does Department-based subject filtering work for Faculty?
          </button>
        </h2>
        <div id="faq2" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body text-muted">
            Selecting a department (e.g., BCA, MCA, B.Tech CSE) automatically updates the subject catalogue dropdown and course cards (showing subject code, credits, and paper upload options).
          </div>
        </div>
      </div>

      <!-- FAQ 3 -->
      <div class="accordion-item border-0 border-bottom">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed fw-bold py-3" type="button" data-bs-toggle="collapse" data-bs-target="#faq3">
            <i class="bi bi-pencil-square text-warning me-2 fs-5"></i> What is the Split-Screen Paper Evaluation feature?
          </button>
        </h2>
        <div id="faq3" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body text-muted">
            Evaluators view the question key on the left side of the screen and the student's answer sheet on the right side, with live total grade and percentage calculation as marks are entered.
          </div>
        </div>
      </div>

      <!-- FAQ 4 -->
      <div class="accordion-item border-0">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed fw-bold py-3" type="button" data-bs-toggle="collapse" data-bs-target="#faq4">
            <i class="bi bi-shield-check text-success me-2 fs-5"></i> Is this codebase prepared for ASP.NET Web Forms (C#) & SQL Server?
          </button>
        </h2>
        <div id="faq4" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body text-muted">
            Yes! All HTML forms, form controls, IDs, buttons, and table structures follow standard ASP.NET server control conventions for seamless binding with C# Code-Behind (`.aspx.cs`) and SQL stored procedures.
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  <!-- Dark Footer -->
    <footer class="sp-footer">
        <div class="container">
            <div class="row g-4 mb-5">
                <div class="col-lg-4">
                    <div class="d-flex align-items-center gap-2 mb-3">
                        <div class="sp-brand-icon">
                            <i class="bi bi-shield-lock-fill"></i>
                        </div>
                        <span class="sp-footer-heading mb-0">SecurePaper</span>
                    </div>
                    <p class="sp-footer-desc mb-4">
                        Next-generation College Examination Management System built with enterprise standards for ASP.NET Web Forms (C#) & SQL Server database integration.
                    </p>
                    <div class="d-flex align-items-center gap-2">
                        <a href="#" class="sp-social-btn" aria-label="LinkedIn"><i class="bi bi-linkedin"></i></a><a href="#" class="sp-social-btn" aria-label="Twitter"><i class="bi bi-twitter-x"></i></a><a href="#" class="sp-social-btn" aria-label="GitHub"><i class="bi bi-github"></i></a><a href="#" class="sp-social-btn" aria-label="YouTube"><i class="bi bi-youtube"></i></a>
                    </div>
                </div>
                <div class="col-6 col-lg-2">
                    <h6 class="sp-footer-col-title">Platform</h6>
                    <ul class="list-unstyled mb-0 d-flex flex-column gap-2">
                        <li><a href="index.aspx">Home Overview</a></li>
                        <li><a href="about.aspx">About System</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#departments">Departments</a></li>
                        <li><a href="#faculty">Faculty Directory</a></li>
                        <li><a href="faq.aspx">System FAQ</a></li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2">
                    <h6 class="sp-footer-col-title">Portals</h6>
                    <ul class="list-unstyled mb-0 d-flex flex-column gap-2">
                        <li><a href="faculty/login.aspx">Faculty Portal</a></li>
                        <li><a href="student/login.aspx">Student Portal</a></li>
                        <li><a href="evaluator/login.aspx">Evaluator Portal</a></li>
                        <li><a href="admin/login.aspx">Admin Portal</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h6 class="sp-footer-col-title">Contact Information</h6>
                    <div class="d-flex flex-column gap-3">
                        <div class="d-flex align-items-start gap-3 sp-contact-item">
                            <i class="bi bi-geo-alt-fill mt-1"></i><span>Controller of Examinations, Main Campus Block A</span>
                        </div>
                        <div class="d-flex align-items-center gap-3 sp-contact-item">
                            <i class="bi bi-envelope-fill"></i><span>exams@university.edu.in</span>
                        </div>
                        <div class="d-flex align-items-center gap-3 sp-contact-item">
                            <i class="bi bi-telephone-fill"></i><span>+1 (800) 555-EXAM / +91 (80) 2345-6789</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="border-top border-secondary border-opacity-25 pt-4 text-center sp-footer-copyright">
                &copy; 2026 SecurePaper Examination System. All rights reserved. Built for ASP.NET Web Forms integration.
            </div>
        </div>
    </footer>

  <!-- Scripts -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.3/dist/chart.umd.min.js"></script>
  <script src="assets/js/main.js"></script>
  <script src="assets/js/charts.js"></script>
</body>
</html>

  </asp:Content>

