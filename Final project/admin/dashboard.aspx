
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Final_project.admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="sp-main-wrapper">
        <header class="sp-navbar">
            <div class="d-flex align-items-center gap-3">
                <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler">
                    <i class="bi bi-list fs-5"></i>
                </button>
                <div class="sp-nav-search">
                    <i class="bi bi-search"></i>
                    <%-- ASP.NET Search TextBox --%>
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="Search system entities, logs..."></asp:TextBox></div>
            </div>
            <div class="sp-navbar-right">
                <button class="sp-icon-btn sp-theme-toggle">
                    <i class="bi bi-moon-stars-fill"></i>
                </button>
                <div class="sp-user-profile">
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
                    <div class="sp-user-info d-none d-md-block">
                        <span class="sp-user-name">Dr. Arthur Pendelton</span> <span class="sp-user-role">Exam Controller</span>
                    </div>
                </div>
            </div>
        </header>
        <div class="sp-page-header">
            <div>
                <h1 class="sp-page-title">Admin Control Dashboard</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Admin</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </nav>
            </div>
            <div class="d-flex gap-2">
                <a href="publish-results.html" class="btn btn-danger font-semibold px-4"><i class="bi bi-megaphone-fill me-1"></i>Publish Results Engine</a>
            </div>
        </div>
        <div class="sp-content">
      
      <!-- Admin 8 Stat Cards Grid -->
            <div class="row g-3 mb-4">
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon success">
                            <i class="bi bi-mortarboard-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>1,240</h3>
                            <p>
                                Total Students</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon primary">
                            <i class="bi bi-person-badge-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>84</h3>
                            <p>
                                Total Faculty</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon warning">
                            <i class="bi bi-pencil-square"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>28</h3>
                            <p>
                                Total Evaluators</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon info">
                            <i class="bi bi-building-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>7</h3>
                            <p>
                                Total Departments</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon secondary">
                            <i class="bi bi-journal-text"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>46</h3>
                            <p>
                                Total Subjects</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon danger">
                            <i class="bi bi-file-earmark-check-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>128</h3>
                            <p>
                                Exams Conducted</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon success">
                            <i class="bi bi-trophy-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>12</h3>
                            <p>
                                Result Publications</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon primary">
                            <i class="bi bi-cpu-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3 class="text-success">100%</h3>
                            <p>
                                Server Status</p>
                        </div>
                    </div>
                </div>
            </div>

      <!-- Admin Overview Bar Chart -->
            <div class="row g-4 mb-4">
                <div class="col-lg-12">
                    <div class="card p-3">
                        <div class="card-header border-0 bg-transparent">
                            <h5 class="fw-bold mb-0"><i class="bi bi-bar-chart-fill text-danger me-2"></i>Department-Wise Student & Faculty Distribution</h5>
                        </div>
                        <div class="card-body">
                            <canvas id="adminOverviewChart" height="120"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--</div>--%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
<script src="../assets/js/charts.js"></script>
</body>
</html>

 </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
</asp:Content>
