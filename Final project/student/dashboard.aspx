<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Final_project.student.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="sp-page-header">
        <div>
            <h1 class="sp-page-title">Student Overview</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>
        <div class="d-flex gap-2">
            <a href="quiz.html" class="btn btn-sp-primary"><i class="bi bi-play-circle-fill me-1"></i>Start Active Quiz</a>
        </div>
    </div>
    <div class="sp-content">

                    <!-- Student Dashboard Cards Grid (8 Cards) -->
                    <div class="row g-3 mb-4">
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon danger">
                                    <i class="bi bi-alarm-fill"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>2</h3>
                                    <p>
                                        Upcoming Exams</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon warning">
                                    <i class="bi bi-file-earmark-text-fill"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>3</h3>
                                    <p>
                                        Pending Assignments</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon primary">
                                    <i class="bi bi-journal-text"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>18</h3>
                                    <p>
                                        Available Notes</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon info">
                                    <i class="bi bi-code-square"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>5</h3>
                                    <p>
                                        Practical Files</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon secondary">
                                    <i class="bi bi-patch-question-fill"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>4</h3>
                                    <p>
                                        Quiz Count</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon success">
                                    <i class="bi bi-calendar-check-fill"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>92%</h3>
                                    <p>
                                        Attendance Rate</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon primary">
                                    <i class="bi bi-award-fill"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>3.85</h3>
                                    <p>
                                        Cumulative GPA</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="sp-stat-card">
                                <div class="sp-stat-icon danger">
                                    <i class="bi bi-bell-fill"></i>
                                </div>
                                <div class="sp-stat-details">
                                    <h3>2</h3>
                                    <p>
                                        Notifications</p>
                                </div>
                            </div>
                        </div>
        </div>

                    <!-- Main Action Grid -->
                    <div class="row g-4 mb-4">
                        <!-- Live Active Exams -->
                        <div class="col-lg-8">
                            <div class="card h-100">
                                <div class="card-header">
                                    <span><i class="bi bi-controller text-primary me-2"></i>Ready for Attempt</span>
                                </div>
                                <div class="card-body">
                                    <div class="card p-3 mb-3 border border-primary-subtle bg-primary-subtle">
                                        <div class="d-flex align-items-center justify-content-between flex-wrap gap-2">
                                            <div>
                                                <span class="badge bg-primary mb-1">Live Online Quiz</span>
                                                <h5 class="fw-bold text-primary mb-1">ASP.NET Mid-Term Online Quiz</h5>
                                                <p class="text-muted small mb-0">
                                                    Course: BCA-201 | Duration: 15 Mins | Total Questions: 20</p>
                                            </div>
                                            <a href="quiz.html" class="btn btn-sp-primary px-4 fw-bold">Attempt Now &rarr;</a>
                                        </div>
                                    </div>
                                    <div class="card p-3 border border-secondary-subtle">
                                        <div class="d-flex align-items-center justify-content-between flex-wrap gap-2">
                                            <div>
                                                <span class="badge bg-secondary mb-1">Theory Paper</span>
                                                <h5 class="fw-bold mb-1">C# Object Oriented Theory Exam</h5>
                                                <p class="text-muted small mb-0">
                                                    Course: BCA-202 | Available: Aug 05, 10:00 AM</p>
                                            </div>
                                            <a href="theory-exam.html" class="btn btn-sp-outline px-4">View Exam Paper</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Attendance Chart -->
                        <div class="col-lg-4">
                            <div class="card h-100">
                                <div class="card-header">
                                    <span><i class="bi bi-pie-chart-fill text-success me-2"></i>Attendance Percentage</span>
                                </div>
                                <div class="card-body">
                                    <canvas id="studentAttendanceChart" height="200"></canvas>
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

