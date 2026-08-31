<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Final_project.evaluator.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="sp-main-wrapper">
        <header class="sp-navbar">
            <div class="d-flex align-items-center gap-3">
                <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler">
                    <i class="bi bi-list fs-5"></i>
                </button>
                <div class="sp-nav-search">
                    <i class="bi bi-search"></i>
                    <input type="text" placeholder="Search answer scripts..."></div>
            </div>
            <div class="sp-navbar-right">
                <button class="sp-icon-btn sp-theme-toggle">
                    <i class="bi bi-moon-stars-fill"></i>
                </button>
                <div class="sp-user-profile">
                    <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
                    <div class="sp-user-info d-none d-md-block">
                        <span class="sp-user-name">Prof. Robert Langdon</span> <span class="sp-user-role">Senior Evaluator</span>
                    </div>
                </div>
            </div>
        </header>
        <div class="sp-page-header">
            <div>
                <h1 class="sp-page-title">Evaluator Dashboard</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Evaluator</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </nav>
            </div>
            <a href="paper-evaluation.html" class="btn btn-warning text-dark fw-bold px-4"><i class="bi bi-play-circle-fill me-1"></i>Start Paper Evaluation</a>
        </div>
        <div class="sp-content">
      
      <!-- Evaluator Stat Cards -->
            <div class="row g-3 mb-4">
                <div class="col-sm-6 col-xl-4">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon danger">
                            <i class="bi bi-hourglass-split"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>14</h3>
                            <p>
                                Pending Papers</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon success">
                            <i class="bi bi-check-circle-fill"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>86</h3>
                            <p>
                                Completed Papers</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="sp-stat-card">
                        <div class="sp-stat-icon warning">
                            <i class="bi bi-pencil-square"></i>
                        </div>
                        <div class="sp-stat-details">
                            <h3>12</h3>
                            <p>
                                Today's Evaluation</p>
                        </div>
                    </div>
                </div>
            </div>

      <!-- Chart & Activities -->
            <div class="row g-4 mb-4">
                <div class="col-lg-8">
                    <div class="card h-100">
                        <div class="card-header">
                            <span><i class="bi bi-line-chart text-secondary me-2"></i>Daily Paper Evaluation Throughput</span>
                        </div>
                        <div class="card-body">
                            <canvas id="evaluatorThroughputChart" height="200"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card h-100">
                        <div class="card-header">
                            <span><i class="bi bi-activity text-primary me-2"></i>Recent Activities</span>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush small">
                                <li class="list-group-item px-0 py-2 border-0"><i class="bi bi-check-circle-fill text-success me-2"></i>Graded ENR-2024-001 (92 Marks)</li>
                                <li class="list-group-item px-0 py-2 border-0"><i class="bi bi-check-circle-fill text-success me-2"></i>Graded ENR-2024-002 (86 Marks)</li>
                                <li class="list-group-item px-0 py-2 border-0"><i class="bi bi-file-earmark-pdf-fill text-danger me-2"></i>Exported BCA Department Report PDF</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
<script src="../assets/js/charts.js"></script>
</body>
</html>

</asp:Content>

