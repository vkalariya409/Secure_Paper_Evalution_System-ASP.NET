<%@ Page Title="" Language="C#" MasterPageFile="~/default_page.Master" AutoEventWireup="true" CodeBehind="login-selection.aspx.cs" Inherits="Final_project.login_selection" %>
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
  <div class="container py-5 flex-grow-1">
    <!-- Breadcrumbs -->
    <nav aria-label="breadcrumb" class="mb-4">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html"><i class="bi bi-house me-1"></i> Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Login Selection</li>
      </ol>
    </nav>

    <!-- Header Title -->
    <div class="text-center max-w-xl mx-auto mb-5">
      <span class="sp-badge-pill sp-badge-primary mb-2">Institutional Access</span>
      <h1 class="fw-extrabold display-5 mb-2">Sign in to SecurePaper</h1>
      <p class="text-muted fs-6">Choose your designated system portal to continue to secure authorization.</p>
    </div>

    <!-- 4-Column Role Cards Grid -->
    <div class="row g-4 justify-content-center">
      <!-- 1. Faculty Portal -->
      <div class="col-md-6 col-lg-3">
        <div class="sp-portal-selector-card">
          <div>
            <div class="sp-portal-icon-container bg-primary-subtle text-primary">
              <i class="bi bi-person-workspace"></i>
            </div>
            <h4 class="fw-bold mb-2">Faculty Portal</h4>
            <p class="text-muted small mb-3">Course management, quiz creation, theory & practical uploads, and attendance tracking.</p>

            <ul class="sp-portal-checklist">
              <li><i class="bi bi-check-circle-fill"></i> Quiz Builder & Timer Setup</li>
              <li><i class="bi bi-check-circle-fill"></i> Theory & Practical Upload</li>
              <li><i class="bi bi-check-circle-fill"></i> Live Attendance Tracker</li>
            </ul>
          </div>
          <a href="faculty/login.aspx" class="btn btn-sp-primary w-100">
            Continue <i class="bi bi-arrow-right ms-1"></i>
          </a>
        </div>
      </div>

      <!-- 2. Student Portal -->
      <div class="col-md-6 col-lg-3">
        <div class="sp-portal-selector-card">
          <div>
            <div class="sp-portal-icon-container bg-info-subtle text-info">
              <i class="bi bi-backpack-fill"></i>
            </div>
            <h4 class="fw-bold mb-2">Student Portal</h4>
            <p class="text-muted small mb-3">Online quiz attempt, theory exam viewer, practical submission, and semester marksheets.</p>

            <ul class="sp-portal-checklist">
              <li><i class="bi bi-check-circle-fill"></i> Timed MCQ Test Engine</li>
              <li><i class="bi bi-check-circle-fill"></i> Secure Theory Viewer</li>
              <li><i class="bi bi-check-circle-fill"></i> Code & ZIP Submissions</li>
            </ul>
          </div>
          <a href="student/login.aspx" class="btn btn-sp-primary w-100">
            Continue <i class="bi bi-arrow-right ms-1"></i>
          </a>
        </div>
      </div>

      <!-- 3. Evaluator Portal -->
      <div class="col-md-6 col-lg-3">
        <div class="sp-portal-selector-card">
          <div>
            <div class="sp-portal-icon-container bg-purple-subtle text-purple" style="background-color: var(--sp-purple-light); color: var(--sp-purple);">
              <i class="bi bi-pencil-square"></i>
            </div>
            <h4 class="fw-bold mb-2">Evaluator Portal</h4>
            <p class="text-muted small mb-3">Split-screen answer script evaluation, score entry, and departmental grade reporting.</p>

            <ul class="sp-portal-checklist">
              <li><i class="bi bi-check-circle-fill"></i> Side-by-Side Paper Grading</li>
              <li><i class="bi bi-check-circle-fill"></i> Automated Mark Calculator</li>
              <li><i class="bi bi-check-circle-fill"></i> Grade Audit & PDF Export</li>
            </ul>
          </div>
          <a href="evaluator/login.aspx" class="btn btn-sp-primary w-100">
            Continue <i class="bi bi-arrow-right ms-1"></i>
          </a>
        </div>
      </div>

      <!-- 4. Admin Portal -->
      <div class="col-md-6 col-lg-3">
        <div class="sp-portal-selector-card">
          <div>
            <div class="sp-portal-icon-container bg-dark-subtle text-dark">
              <i class="bi bi-shield-lock-fill"></i>
            </div>
            <h4 class="fw-bold mb-2">Admin Portal</h4>
            <p class="text-muted small mb-3">Master configuration of departments, faculty, students, evaluators, and exam schedules.</p>

            <ul class="sp-portal-checklist">
              <li><i class="bi bi-check-circle-fill"></i> Master User Management</li>
              <li><i class="bi bi-check-circle-fill"></i> Exam Schedules & Timetables</li>
              <li><i class="bi bi-check-circle-fill"></i> Security Audit Logs</li>
            </ul>
          </div>
          <a href="admin/login.aspx" class="btn btn-sp-primary w-100">
            Continue <i class="bi bi-arrow-right ms-1"></i>

          </a>
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
                        <li><a href="index.html">Home Overview</a></li>
                        <li><a href="about.html">About System</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#departments">Departments</a></li>
                        <li><a href="#faculty">Faculty Directory</a></li>
                        <li><a href="faq.html">System FAQ</a></li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2">
                    <h6 class="sp-footer-col-title">Portals</h6>
                    <ul class="list-unstyled mb-0 d-flex flex-column gap-2">
                        <li><a href="faculty/login.html">Faculty Portal</a></li>
                        <li><a href="student/login.html">Student Portal</a></li>
                        <li><a href="evaluator/login.html">Evaluator Portal</a></li>
                        <li><a href="admin/login.html">Admin Portal</a></li>
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

