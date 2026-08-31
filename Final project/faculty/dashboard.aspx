<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Final_project.faculty.deshboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  <!-- Page Header -->
    <div class="sp-page-header">
        <div>
            <h1 class="sp-page-title">Faculty Dashboard</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Faculty</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>
        <div class="d-flex gap-2">
            <a href="upload-quiz.html" class="btn btn-sp-primary"><i class="bi bi-plus-lg me-1"></i>Create Quiz</a> <a href="upload-theory.html" class="btn btn-sp-secondary"><i class="bi bi-upload me-1"></i>Upload Paper</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="sp-content">
      
      <!-- Stat Cards Grid (8 Cards as per specs) -->
        <div class="row g-3 mb-4">
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon primary">
                        <i class="bi bi-journal-bookmark-fill"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>7</h3>
                        <p>
                            Total Subjects</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon secondary">
                        <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>142</h3>
                        <p>
                            Total Students</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon success">
                        <i class="bi bi-file-earmark-check-fill"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>18</h3>
                        <p>
                            Uploaded Exams</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon info">
                        <i class="bi bi-file-earmark-text-fill"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>24</h3>
                        <p>
                            Uploaded Notes</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon warning">
                        <i class="bi bi-code-square"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>12</h3>
                        <p>
                            Uploaded Practical Files</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon danger">
                        <i class="bi bi-hourglass-split"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>9</h3>
                        <p>
                            Pending Evaluations</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon success">
                        <i class="bi bi-check-all"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>45</h3>
                        <p>
                            Completed Evaluations</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="sp-stat-card">
                    <div class="sp-stat-icon primary">
                        <i class="bi bi-bell-fill"></i>
                    </div>
                    <div class="sp-stat-details">
                        <h3>3</h3>
                        <p>
                            Notifications</p>
                    </div>
                </div>
            </div>
        </div>

      <!-- Charts & Widgets Row -->
        <div class="row g-4 mb-4">
        <!-- Class Performance Chart -->
            <div class="col-lg-8">
                <div class="card h-100">
                    <div class="card-header">
                        <span><i class="bi bi-bar-chart-fill text-primary me-2"></i>Subject Class Average Performance</span> <span class="badge bg-success-subtle text-success">BCA Semester 3</span>
                    </div>
                    <div class="card-body">
                        <canvas id="facultyPerformanceChart" height="220"></canvas>
                    </div>
                </div>
            </div>

        <!-- Calendar & Announcements -->
            <div class="col-lg-4">
                <div class="card h-100">
                    <div class="card-header">
                        <span><i class="bi bi-calendar3 text-primary me-2"></i>Academic Calendar Widget</span>
                    </div>
                    <div class="card-body text-center">
                        <div class="p-3 bg-primary-subtle text-primary rounded-3 mb-3">
                            <h2 class="fw-bold mb-0">28 JULY</h2>
                            <span class="small fw-semibold">2026 Academic Term</span>
                        </div>
                        <ul class="list-group list-group-flush text-start small">
                            <li class="list-group-item px-0 py-2 border-0"><i class="bi bi-clock-fill text-danger me-2"></i>10:00 AM - ASP.NET Mid-Term Quiz</li>
                            <li class="list-group-item px-0 py-2 border-0"><i class="bi bi-clock-fill text-warning me-2"></i>02:00 PM - Practical Lab Submission Deadline</li>
                            <li class="list-group-item px-0 py-2 border-0"><i class="bi bi-clock-fill text-success me-2"></i>04:30 PM - Departmental Evaluation Meeting</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

      <!-- Upcoming Exams & Recent Activity Row -->
        <div class="row g-4">
        <!-- Upcoming Exams Table -->
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-header">
                        <span><i class="bi bi-file-earmark-medical text-primary me-2"></i>Upcoming Exams Schedule</span> <a href="upload-quiz.html" class="small text-primary text-decoration-none">Manage Schedule &rarr;</a>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table align-middle">
                                <thead>
                                    <tr>
                                        <th>Exam Name</th>
                                        <th>Subject</th>
                                        <th>Type</th>
                                        <th>Date & Time</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="fw-bold">ASP.NET Mid-Term</td>
                                        <td>BCA-201</td>
                                        <td><span class="badge badge-sp primary">Quiz</span></td>
                                        <td>July 29, 10:00 AM</td>
                                        <td><span class="badge badge-sp success">Scheduled</span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">C# Object Oriented Theory</td>
                                        <td>BCA-202</td>
                                        <td><span class="badge badge-sp secondary">Theory</span></td>
                                        <td>Aug 02, 11:30 AM</td>
                                        <td><span class="badge badge-sp warning">Draft</span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">SQL Database Lab Practical</td>
                                        <td>BCA-203</td>
                                        <td><span class="badge badge-sp danger">Practical</span></td>
                                        <td>Aug 05, 09:00 AM</td>
                                        <td><span class="badge badge-sp success">Published</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        <!-- Recent Activities Feed -->
            <div class="col-lg-5">
                <div class="card">
                    <div class="card-header">
                        <span><i class="bi bi-activity text-primary me-2"></i>Recent Activities</span>
                    </div>
                    <div class="card-body">
                        <div class="d-flex align-items-start gap-3 mb-3">
                            <div class="sp-icon-btn bg-success-subtle text-success">
                                <i class="bi bi-check-lg"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold mb-0">Graded 12 Theory Papers</h6>
                                <p class="text-muted small mb-0">
                                    ASP.NET Unit Test 1 evaluated for Section A.</p>
                                <span class="text-muted extra-small">2 hours ago</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-start gap-3 mb-3">
                            <div class="sp-icon-btn bg-primary-subtle text-primary">
                                <i class="bi bi-upload"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold mb-0">Uploaded Practical Manual</h6>
                                <p class="text-muted small mb-0">
                                    Uploaded "SQL Server Stored Procedures Lab 4.pdf".</p>
                                <span class="text-muted extra-small">5 hours ago</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-start gap-3">
                            <div class="sp-icon-btn bg-warning-subtle text-warning">
                                <i class="bi bi-plus-lg"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold mb-0">Created New Quiz Builder Draft</h6>
                                <p class="text-muted small mb-0">
                                    Added 15 Questions to Data Structure Question Bank.</p>
                                <span class="text-muted extra-small">Yesterday</span>
                            </div>
                        </div>
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

