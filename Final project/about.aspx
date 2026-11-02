
<%@ Page Title="" Language="C#" MasterPageFile="~/default_page.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Final_project.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                
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
                <%-- ASP.NET HyperLink for Home Logo --%>
                <asp:HyperLink ID="lnkHomeLogo" runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand d-flex align-items-center gap-2">
                <div class="sp-brand-icon">
                    <i class="bi bi-shield-lock-fill"></i>
                </div>
                <span class="fs-4 fw-extrabold text-dark">Secure<span class="sp-text-gradient">Paper</span></span> </asp:HyperLink>
                <button class="navbar-toggler border-0 shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#landingNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="landingNavbar">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for Home --%>
                            <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="index.aspx" CssClass="nav-link sp-nav-link active">Home</asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for About --%>
                            <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="about.aspx" CssClass="nav-link sp-nav-link">About</asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for Features --%>
                            <asp:HyperLink ID="lnkFeatures" runat="server" NavigateUrl="index.aspx#features" CssClass="nav-link sp-nav-link">Features</asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for Departments --%>
                            <asp:HyperLink ID="lnkDepartments" runat="server" NavigateUrl="index.aspx#departments" CssClass="nav-link sp-nav-link">Departments</asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for Faculty --%>
                            <asp:HyperLink ID="lnkFaculty" runat="server" NavigateUrl="index.aspx#faculty" CssClass="nav-link sp-nav-link">Faculty</asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for Contact --%>
                            <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="contact.aspx" CssClass="nav-link sp-nav-link">Contact</asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <%-- ASP.NET HyperLink for FAQ --%>
                            <asp:HyperLink ID="lnkFAQ" runat="server" NavigateUrl="faq.aspx" CssClass="nav-link sp-nav-link">FAQ</asp:HyperLink>
                        </li>
                    </ul>
                    <div class="d-flex align-items-center gap-3">
                        <button class="sp-icon-btn sp-theme-toggle" title="Toggle Theme">
                            <i class="bi bi-moon-stars-fill"></i>
                        </button>
                        <%-- ASP.NET HyperLink for Login --%>
                        <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="login-selection.aspx" CssClass="btn btn-sp-primary"><i class="bi bi-box-arrow-in-right"></i>Login</asp:HyperLink>
                    </div>
                </div>
            </div>
        </nav>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
                
  <!-- Content -->
  <div class="container py-5 flex-grow-1">
    <nav aria-label="breadcrumb" class="mb-4">
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <%-- ASP.NET HyperLink for Breadcrumb Home --%>
          <asp:HyperLink ID="lnkBreadcrumbHome" runat="server" NavigateUrl="index.aspx"><i class="bi bi-house me-1"></i> Home</asp:HyperLink>
        </li>
        <li class="breadcrumb-item active" aria-current="page">About Us</li>
      </ol>
    </nav>

    <div class="text-center max-w-xl mx-auto mb-5">
      <span class="sp-badge-pill sp-badge-primary mb-2">Institutional Mission</span>
      <h1 class="fw-extrabold display-5 mb-2">Empowering Educational Excellence</h1>
      <p class="text-muted fs-6">Enterprise grade architecture designed specifically for higher education academic examination management.</p>
    </div>

    <div class="row g-5 align-items-center mb-5">
      <div class="col-lg-6">
        <h3 class="fw-bold mb-3">Next-Generation Examination ERP</h3>
        <p class="text-muted mb-3">SecurePaper is engineered for higher education institutions, universities, and polytechnics seeking a bulletproof, highly accessible digital examination infrastructure.</p>
        <p class="text-muted mb-4">Architected for seamless integration with ASP.NET Web Forms (C#) and SQL Server databases, the system strictly isolates student test workflows, faculty paper authoring, evaluator paper grading, and administrative governance into four distinct role-based security perimeters.</p>
        
        <div class="d-flex flex-column gap-2">
          <div class="d-flex align-items-center gap-2">
            <i class="bi bi-check-circle-fill text-success fs-5"></i>
            <span class="fw-semibold">100% Tamper-Proof Question Paper Time-Lock Encryption</span>
          </div>
          <div class="d-flex align-items-center gap-2">
            <i class="bi bi-check-circle-fill text-success fs-5"></i>
            <span class="fw-semibold">Split-Screen PDF Evaluation with Instant Score Calculations</span>
          </div>
          <div class="d-flex align-items-center gap-2">
            <i class="bi bi-check-circle-fill text-success fs-5"></i>
            <span class="fw-semibold">Automated MCQ Quiz Engine with Dynamic Timer Restrictions</span>
          </div>
        </div>
      </div>

      <div class="col-lg-6">
        <div class="sp-feature-card p-4">
          <h4 class="fw-bold mb-4 d-flex align-items-center gap-2">
            <i class="bi bi-cpu-fill text-primary"></i> Technical Architecture
          </h4>
          <ul class="list-unstyled d-flex flex-column gap-3 mb-0">
            <li class="d-flex align-items-start gap-3">
              <div class="sp-icon-square blue p-2 text-center" style="width:36px; height:36px; font-size:1rem;"><i class="bi bi-layers"></i></div>
              <div>
                <strong class="d-block text-dark">HTML5 & Plus Jakarta Sans UI</strong>
                <span class="text-muted small">Modern responsive SaaS interface styled with CSS variable design tokens.</span>
              </div>
            </li>
            <li class="d-flex align-items-start gap-3">
              <div class="sp-icon-square cyan p-2 text-center" style="width:36px; height:36px; font-size:1rem;"><i class="bi bi-bootstrap"></i></div>
              <div>
                <strong class="d-block text-dark">Bootstrap 5.3.3 Grid & Components</strong>
                <span class="text-muted small">Full cross-device viewport responsiveness with accessibility compliance.</span>
              </div>
            </li>
            <li class="d-flex align-items-start gap-3">
              <div class="sp-icon-square purple p-2 text-center" style="width:36px; height:36px; font-size:1rem;"><i class="bi bi-bar-chart"></i></div>
              <div>
                <strong class="d-block text-dark">Chart.js Visual Analytics</strong>
                <span class="text-muted small">Real-time graphic data representation across department pass rates & throughput.</span>
              </div>
            </li>
            <li class="d-flex align-items-start gap-3">
              <div class="sp-icon-square emerald p-2 text-center" style="width:36px; height:36px; font-size:1rem;"><i class="bi bi-code-slash"></i></div>
              <div>
                <strong class="d-block text-dark">ASP.NET Server Controls (.aspx) Ready</strong>
                <span class="text-muted small">Directly compatible with Web Forms Code-Behind (C#) and SQL stored procedures.</span>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>

</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
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
                        <li><%-- ASP.NET HyperLink for Home Overview --%><asp:HyperLink ID="lnkFooterHome" runat="server" NavigateUrl="index.aspx">Home Overview</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for About System --%><asp:HyperLink ID="lnkFooterAbout" runat="server" NavigateUrl="about.aspx">About System</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for Features --%><asp:HyperLink ID="lnkFooterFeatures" runat="server" NavigateUrl="#features">Features</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for Departments --%><asp:HyperLink ID="lnkFooterDepartments" runat="server" NavigateUrl="#departments">Departments</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for Faculty Directory --%><asp:HyperLink ID="lnkFooterFaculty" runat="server" NavigateUrl="#faculty">Faculty Directory</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for System FAQ --%><asp:HyperLink ID="lnkFooterFAQ" runat="server" NavigateUrl="faq.aspx">System FAQ</asp:HyperLink></li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2">
                    <h6 class="sp-footer-col-title">Portals</h6>
                    <ul class="list-unstyled mb-0 d-flex flex-column gap-2">
                        <li><%-- ASP.NET HyperLink for Faculty Portal --%><asp:HyperLink ID="lnkFacultyPortal" runat="server" NavigateUrl="faculty/login.aspx">Faculty Portal</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for Student Portal --%><asp:HyperLink ID="lnkStudentPortal" runat="server" NavigateUrl="student/login.aspx">Student Portal</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for Evaluator Portal --%><asp:HyperLink ID="lnkEvaluatorPortal" runat="server" NavigateUrl="evaluator/login.aspx">Evaluator Portal</asp:HyperLink></li>
                        <li><%-- ASP.NET HyperLink for Admin Portal --%><asp:HyperLink ID="lnkAdminPortal" runat="server" NavigateUrl="admin/login.aspx">Admin Portal</asp:HyperLink></li>
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
