
<%@ Page Title="" Language="C#" MasterPageFile="~/default_page.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Final_project.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SecurePaper · College Examination Management System</title>
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

        <!-- changes html controls to aspx controls -->

        <!-- Landing Top Navbar -->
        <nav class="navbar navbar-expand-lg sticky-top sp-navbar">
            <div class="container">
                <%-- ASP.NET HyperLink for Home Logo --%>
                <asp:HyperLink ID="lnkHomeLogo" runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand d-flex align-items-center gap-2">
                    <div class="sp-brand-icon">
                        <i class="bi bi-shield-lock-fill"></i>
                    </div>
                    <span class="fs-4 fw-extrabold text-dark">Secure<span class="sp-text-gradient">Paper</span></span>
                </asp:HyperLink>

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
    </body>
    </html>
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
                <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
            </ol>
        </nav>

        <div class="row g-5 align-items-start">
            <div class="col-lg-5">
                <span class="sp-badge-pill sp-badge-primary mb-2">Examination Cell Support</span>
                <h1 class="fw-extrabold display-6 mb-3">Get in Touch</h1>
                <p class="text-muted mb-4">Have questions regarding exam schedules, portal access, or result verification? Contact the University Controller of Examinations office.</p>

                <div class="sp-feature-card p-4 mb-4" style="height: auto !important; min-height: 0 !important; align-self: flex-start;">
                    <div class="d-flex align-items-center gap-3 mb-3">
                        <div class="sp-icon-square blue mb-0" style="width:42px; height:42px; font-size:1.1rem;"><i class="bi bi-geo-alt-fill"></i></div>
                        <div>
                            <strong class="d-block text-dark">Examination Controller Office</strong>
                            <span class="text-muted small">Block A, Main University Campus</span>
                        </div>
                    </div>
                    <div class="d-flex align-items-center gap-3 mb-3">
                        <div class="sp-icon-square emerald mb-0" style="width:42px; height:42px; font-size:1.1rem;"><i class="bi bi-telephone-fill"></i></div>
                        <div>
                            <strong class="d-block text-dark">Helpdesk Helpline</strong>
                            <span class="text-muted small">+1 (800) 555-EXAM / +91 (80) 2345-6789</span>
                        </div>
                    </div>
                    <div class="d-flex align-items-center gap-3">
                        <div class="sp-icon-square purple mb-0" style="width:42px; height:42px; font-size:1.1rem;"><i class="bi bi-envelope-fill"></i></div>
                        <div>
                            <strong class="d-block text-dark">Official Email</strong>
                            <span class="text-muted small">exams@securepaper.edu</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-7">
                <div class="sp-feature-card p-4">
                    <h3 class="fw-bold mb-4">Send an Institutional Inquiry</h3>
                    <%-- ASP.NET Panel for Inquiry Form --%>
                    <asp:Panel ID="pnlInquiry" runat="server">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <%-- ASP.NET Label for Full Name --%>
                                <asp:Label ID="lblFullName" runat="server" AssociatedControlID="txtFullName" CssClass="form-label fw-semibold">Your Full Name</asp:Label>
                                <%-- ASP.NET TextBox for Full Name --%>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control rounded-3 py-2" placeholder="Dr. Jane Smith" required="required"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <%-- ASP.NET Label for Email Address --%>
                                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="form-label fw-semibold">Email Address</asp:Label>
                                <%-- ASP.NET TextBox for Email Address --%>
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control rounded-3 py-2" placeholder="jane@university.edu" required="required"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <%-- ASP.NET Label for Role Category --%>
                                <asp:Label ID="lblRole" runat="server" AssociatedControlID="ddlRole" CssClass="form-label fw-semibold">Role Category</asp:Label>
                                <%-- ASP.NET DropDownList for Role Category --%>
                                <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-select rounded-3 py-2">
                                    <asp:ListItem Value="Student">Student</asp:ListItem>
                                    <asp:ListItem Value="Faculty">Faculty</asp:ListItem>
                                    <asp:ListItem Value="Evaluator">Evaluator</asp:ListItem>
                                    <asp:ListItem Value="Administrator">Administrator</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <%-- ASP.NET Label for Query Subject --%>
                                <asp:Label ID="lblSubject" runat="server" AssociatedControlID="txtSubject" CssClass="form-label fw-semibold">Query Subject</asp:Label>
                                <%-- ASP.NET TextBox for Query Subject --%>
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control rounded-3 py-2" placeholder="e.g. Schedule Clarification" required="required"></asp:TextBox>
                            </div>
                            <div class="col-12">
                                <%-- ASP.NET Label for Detailed Message --%>
                                <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" CssClass="form-label fw-semibold">Detailed Message</asp:Label>
                                <%-- ASP.NET TextBox for Detailed Message --%>
                                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control rounded-3" placeholder="Describe your question or technical issue..." required="required"></asp:TextBox>
                            </div>
                            <div class="col-12 mt-4">
                                <%-- ASP.NET Button for Send Message --%>
                                <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="btn btn-sp-primary w-100 py-3" OnClientClick="alert('Thank you! Your query has been submitted to the Examination Helpdesk.'); return false;" />
                            </div>
                        </div>
                    </asp:Panel>
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
</asp:Content>
