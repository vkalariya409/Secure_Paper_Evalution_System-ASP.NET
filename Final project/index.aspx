<%@ Page Title="" Language="C#" MasterPageFile="~/default_page.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Final_project.index" %>
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
                <a class="navbar-brand d-flex align-items-center gap-2" href="index.aspx">
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
                   <!-- Hero Section -->
    <section class="sp-landing-hero">
        <div class="container">
            <div class="row align-items-center g-5">
                <div class="col-lg-6">
                    <span class="sp-badge-pill sp-badge-primary mb-3"><i class="bi bi-award-fill"></i>Trusted by 40+ Higher Education Institutions </span>
                    <h1 class="display-4 fw-extrabold mb-3 leading-tight">Secure, Smart <span class="sp-text-gradient">Examination Management</span> for Modern Colleges </h1>
                    <p class="lead text-muted mb-4">
                        SecurePaper unifies faculty, students, evaluators and administrators on one premium ERP platform — quizzes, theory papers, practicals, evaluations, results and analytics in a single secure workspace.
                    </p>
                    <div class="d-flex flex-wrap gap-3 mb-4">
                        <a href="login-selection.aspx" class="btn btn-sp-primary btn-lg"><i class="bi bi-rocket-takeoff-fill"></i>Get Started </a><a href="#features" class="btn btn-sp-secondary btn-lg"><i class="bi bi-compass"></i>Explore Features </a>
                    </div>
                    <div class="sp-hero-stats">
                        <div class="sp-stat-item">
                            <h4>12k+</h4>
                            <p>
                                Active Students</p>
                        </div>
                        <div class="vr">
                        </div>
                        <div class="sp-stat-item">
                            <h4>99.8%</h4>
                            <p>
                                Evaluation Accuracy</p>
                        </div>
                        <div class="vr">
                        </div>
                        <div class="sp-stat-item">
                            <h4>100%</h4>
                            <p>
                                Anti-Tamper Security</p>
                        </div>
                    </div>
                </div>

        <!-- Live Dashboard Mockup Card -->
                <div class="col-lg-6">
                    <div class="sp-dashboard-mockup">
                        <div class="d-flex align-items-center justify-content-between mb-3 border-bottom pb-3">
                            <div class="d-flex align-items-center gap-2">
                                <span class="sp-live-pulse"></span><span class="fw-bold fs-6">Live Examination Portal</span>
                            </div>
                            <span class="sp-badge-pill sp-badge-emerald">ASP.NET & SQL Ready</span>
                        </div>
                        <div class="row g-3 mb-4">
                            <div class="col-6">
                                <div class="sp-mock-metric">
                                    <i class="bi bi-journal-check text-primary fs-3 mb-1"></i>
                                    <h4 class="fw-bold mb-0">12,500+</h4>
                                    <p class="text-muted small mb-0">
                                        Exams Processed</p>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="sp-mock-metric">
                                    <i class="bi bi-people-fill text-success fs-3 mb-1"></i>
                                    <h4 class="fw-bold mb-0">4,800+</h4>
                                    <p class="text-muted small mb-0">
                                        Active Students</p>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="sp-mock-metric">
                                    <i class="bi bi-person-badge-fill text-warning fs-3 mb-1"></i>
                                    <h4 class="fw-bold mb-0">350+</h4>
                                    <p class="text-muted small mb-0">
                                        Faculty Members</p>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="sp-mock-metric">
                                    <i class="bi bi-shield-check text-info fs-3 mb-1"></i>
                                    <h4 class="fw-bold mb-0">99.9%</h4>
                                    <p class="text-muted small mb-0">
                                        Security Audit</p>
                                </div>
                            </div>
                        </div>

            <!-- Live Chart Canvas -->
                        <div style="height: 180px;">
                            <canvas id="heroLiveChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <!-- Feature Cards Section -->
    <section class="py-5" id="features">
        <div class="container py-4">
            <div class="text-center mb-5 max-w-xl mx-auto">
                <span class="sp-badge-pill sp-badge-primary mb-2">Platform Capabilities</span>
                <h2 class="fw-extrabold display-6 mb-2">Everything your examination cell needs</h2>
                <p class="text-muted fs-6">
                    A complete, role-based toolkit designed to run secure examinations end-to-end.</p>
            </div>
            <div class="row g-4">
        <!-- Feature 1 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-feature-card">
                        <div class="sp-icon-square blue">
                            <i class="bi bi-patch-question-fill"></i>
                        </div>
                        <h4 class="fw-bold mb-2">Online Quiz Builder</h4>
                        <p class="text-muted small mb-0">
                            Create MCQ quizzes with timers, difficulty levels, marks and auto-evaluation with instant results.</p>
                    </div>
                </div>

        <!-- Feature 2 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-feature-card">
                        <div class="sp-icon-square cyan">
                            <i class="bi bi-file-earmark-pdf-fill"></i>
                        </div>
                        <h4 class="fw-bold mb-2">Theory Paper Upload</h4>
                        <p class="text-muted small mb-0">
                            Upload question papers as PDF/DOC with instructions, duration, time-locks and mark schemes.</p>
                    </div>
                </div>

        <!-- Feature 3 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-feature-card">
                        <div class="sp-icon-square purple">
                            <i class="bi bi-code-square"></i>
                        </div>
                        <h4 class="fw-bold mb-2">Practical Submissions</h4>
                        <p class="text-muted small mb-0">
                            Students submit ZIP files, source code and images with structured evaluator feedback and verification.</p>
                    </div>
                </div>

        <!-- Feature 4 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-feature-card">
                        <div class="sp-icon-square emerald">
                            <i class="bi bi-pencil-square"></i>
                        </div>
                        <h4 class="fw-bold mb-2">Digital Evaluation</h4>
                        <p class="text-muted small mb-0">
                            Side-by-side paper and answer sheet view for fast, transparent grading and automated total calculation.</p>
                    </div>
                </div>

        <!-- Feature 5 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-feature-card">
                        <div class="sp-icon-square orange">
                            <i class="bi bi-graph-up-arrow"></i>
                        </div>
                        <h4 class="fw-bold mb-2">Analytics & Reports</h4>
                        <p class="text-muted small mb-0">
                            Department, batch and semester-wise visual performance reports with export options to PDF/Excel.</p>
                    </div>
                </div>

        <!-- Feature 6 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-feature-card">
                        <div class="sp-icon-square pink">
                            <i class="bi bi-shield-lock-fill"></i>
                        </div>
                        <h4 class="fw-bold mb-2">Role-Based Security</h4>
                        <p class="text-muted small mb-0">
                            Separate secure portals for faculty, students, evaluators and admins with encrypted session controls.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <!-- Departments Section -->
    <section class="py-5 bg-body-tertiary" id="departments">
        <div class="container py-4">
            <div class="text-center mb-5 max-w-xl mx-auto">
                <span class="sp-badge-pill sp-badge-secondary mb-2">Academic Catalog</span>
                <h2 class="fw-extrabold display-6 mb-2">Our Departments</h2>
                <p class="text-muted fs-6">
                    Ten active departments with dedicated subject catalogues and examination workflows.</p>
            </div>
            <div class="row g-4">
        <!-- Department 1 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-laptop"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">BCA</h4>
                        <p class="text-muted small mb-3">
                            Computer Applications</p>
                        <span class="sp-badge-pill sp-badge-primary">12 Subjects</span>
                    </div>
                </div>
        <!-- Department 2 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-code-slash"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">MCA</h4>
                        <p class="text-muted small mb-3">
                            Master of Computer Applications</p>
                        <span class="sp-badge-pill sp-badge-primary">16 Subjects</span>
                    </div>
                </div>
        <!-- Department 3 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-cpu"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">B.Tech CSE</h4>
                        <p class="text-muted small mb-3">
                            Computer Science Engineering</p>
                        <span class="sp-badge-pill sp-badge-primary">24 Subjects</span>
                    </div>
                </div>
        <!-- Department 4 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-phone"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">B.Tech IT</h4>
                        <p class="text-muted small mb-3">
                            Information Technology</p>
                        <span class="sp-badge-pill sp-badge-primary">20 Subjects</span>
                    </div>
                </div>
        <!-- Department 5 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-diagram-3"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">Data Science</h4>
                        <p class="text-muted small mb-3">
                            B.Sc / M.Sc Data Analytics</p>
                        <span class="sp-badge-pill sp-badge-primary">14 Subjects</span>
                    </div>
                </div>
        <!-- Department 6 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-robot"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">AI & ML</h4>
                        <p class="text-muted small mb-3">
                            Artificial Intelligence & ML</p>
                        <span class="sp-badge-pill sp-badge-primary">15 Subjects</span>
                    </div>
                </div>
        <!-- Department 7 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-broadcast"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">ECE</h4>
                        <p class="text-muted small mb-3">
                            Electronics & Comm Engg</p>
                        <span class="sp-badge-pill sp-badge-primary">18 Subjects</span>
                    </div>
                </div>
        <!-- Department 8 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-lightning-charge"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">EEE</h4>
                        <p class="text-muted small mb-3">
                            Electrical & Electronics</p>
                        <span class="sp-badge-pill sp-badge-primary">16 Subjects</span>
                    </div>
                </div>
        <!-- Department 9 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-gear-wide-connected"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">Mechanical</h4>
                        <p class="text-muted small mb-3">
                            Mechanical Engineering</p>
                        <span class="sp-badge-pill sp-badge-primary">22 Subjects</span>
                    </div>
                </div>
        <!-- Department 10 -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="sp-department-card">
                        <div class="sp-dept-icon">
                            <i class="bi bi-building"></i>
                        </div>
                        <h4 class="fw-extrabold mb-1 text-dark">Civil</h4>
                        <p class="text-muted small mb-3">
                            Civil Engineering</p>
                        <span class="sp-badge-pill sp-badge-primary">18 Subjects</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <!-- Faculty Section -->
    <section class="py-5" id="faculty">
        <div class="container py-4">
            <div class="text-center mb-5 max-w-xl mx-auto">
                <span class="sp-badge-pill sp-badge-purple mb-2">Academic Leadership</span>
                <h2 class="fw-extrabold display-6 mb-2">Distinguished Faculty</h2>
                <p class="text-muted fs-6">
                    Experienced educators managing examinations across departments.</p>
            </div>
            <div class="row g-4">
        <!-- Faculty Member 1 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-faculty-card">
                        <div class="sp-faculty-banner">
                        </div>
                        <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150" alt="Dr. Vance" class="sp-faculty-avatar">
                        <div class="text-center p-3">
                            <h5 class="fw-bold mb-1">Dr. Robert Vance</h5>
                            <p class="text-muted small mb-3">
                                Head of Department · Computer Science</p>
                            <div class="d-flex justify-content-center gap-3 border-top pt-3 text-muted small">
                                <span><i class="bi bi-journal-bookmark text-primary me-1"></i>8 Courses</span> <span><i class="bi bi-check-circle text-success me-1"></i>1,200 Exams</span>
                            </div>
                        </div>
                    </div>
                </div>

        <!-- Faculty Member 2 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-faculty-card">
                        <div class="sp-faculty-banner">
                        </div>
                        <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=150" alt="Prof. Rostova" class="sp-faculty-avatar">
                        <div class="text-center p-3">
                            <h5 class="fw-bold mb-1">Prof. Elena Rostova</h5>
                            <p class="text-muted small mb-3">
                                Dean of Examinations & IT Systems</p>
                            <div class="d-flex justify-content-center gap-3 border-top pt-3 text-muted small">
                                <span><i class="bi bi-journal-bookmark text-primary me-1"></i>6 Courses</span> <span><i class="bi bi-check-circle text-success me-1"></i>980 Exams</span>
                            </div>
                        </div>
                    </div>
                </div>

        <!-- Faculty Member 3 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-faculty-card">
                        <div class="sp-faculty-banner">
                        </div>
                        <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?w=150" alt="Dr. Sterling" class="sp-faculty-avatar">
                        <div class="text-center p-3">
                            <h5 class="fw-bold mb-1">Dr. Marcus Sterling</h5>
                            <p class="text-muted small mb-3">
                                Controller of Digital Evaluation</p>
                            <div class="d-flex justify-content-center gap-3 border-top pt-3 text-muted small">
                                <span><i class="bi bi-journal-bookmark text-primary me-1"></i>10 Courses</span> <span><i class="bi bi-check-circle text-success me-1"></i>1,500 Exams</span>
                            </div>
                        </div>
                    </div>
                </div>

        <!-- Faculty Member 4 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-faculty-card">
                        <div class="sp-faculty-banner">
                        </div>
                        <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?w=150" alt="Prof. Chen" class="sp-faculty-avatar">
                        <div class="text-center p-3">
                            <h5 class="fw-bold mb-1">Prof. Sophia Chen</h5>
                            <p class="text-muted small mb-3">
                                Head of Data Science & Analytics</p>
                            <div class="d-flex justify-content-center gap-3 border-top pt-3 text-muted small">
                                <span><i class="bi bi-journal-bookmark text-primary me-1"></i>5 Courses</span> <span><i class="bi bi-check-circle text-success me-1"></i>750 Exams</span>
                            </div>
                        </div>
                    </div>
                </div>

        <!-- Faculty Member 5 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-faculty-card">
                        <div class="sp-faculty-banner">
                        </div>
                        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150" alt="Dr. Turing" class="sp-faculty-avatar">
                        <div class="text-center p-3">
                            <h5 class="fw-bold mb-1">Dr. Alan Turing Jr.</h5>
                            <p class="text-muted small mb-3">
                                Head of AI & Robotics Department</p>
                            <div class="d-flex justify-content-center gap-3 border-top pt-3 text-muted small">
                                <span><i class="bi bi-journal-bookmark text-primary me-1"></i>7 Courses</span> <span><i class="bi bi-check-circle text-success me-1"></i>890 Exams</span>
                            </div>
                        </div>
                    </div>
                </div>

        <!-- Faculty Member 6 -->
                <div class="col-md-6 col-lg-4">
                    <div class="sp-faculty-card">
                        <div class="sp-faculty-banner">
                        </div>
                        <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150" alt="Prof. Miller" class="sp-faculty-avatar">
                        <div class="text-center p-3">
                            <h5 class="fw-bold mb-1">Prof. David Miller</h5>
                            <p class="text-muted small mb-3">
                                Chief Academic & Security Auditor</p>
                            <div class="d-flex justify-content-center gap-3 border-top pt-3 text-muted small">
                                <span><i class="bi bi-journal-bookmark text-primary me-1"></i>9 Courses</span> <span><i class="bi bi-check-circle text-success me-1"></i>1,100 Exams</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <!-- CTA Banner Section -->
    <div class="container my-5">
        <div class="sp-cta-banner">
            <h2 class="display-6 fw-extrabold mb-3">Ready to modernize your examination system?</h2>
            <p class="lead opacity-90 mb-4">
                Choose your portal and experience SecurePaper's premium interface today.</p>
            <a href="login-selection.aspx" class="btn btn-sp-white btn-lg"><i class="bi bi-box-arrow-in-right"></i>Select Your Portal </a>
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

