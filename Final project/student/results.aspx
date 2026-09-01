<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="Final_project.student.results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Semester Examination Marksheet</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Results</li>
          </ol>
        </nav>
      </div>

      <!-- Required Spec Action Buttons: Download & Print -->
      <div class="d-flex gap-2">
        <button class="btn btn-sp-secondary" onclick="alert('Downloading Marksheet PDF document...')">
          <i class="bi bi-file-earmark-arrow-down-fill me-1"></i> Download Result
        </button>
        <button class="btn btn-sp-outline" onclick="window.print()">
          <i class="bi bi-printer-fill me-1"></i> Print Marksheet
        </button>
      </div>
    </div>

    <div class="sp-content">
      
      <!-- Marksheet Document Card -->
      <div class="card p-4 shadow-sm" id="printableMarksheet">
        <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-4">
          <div>
            <h4 class="fw-bold mb-0 text-primary">OFFICIAL UNIVERSITY MARKSHEET</h4>
            <p class="text-muted small mb-0">Bachelor of Computer Applications (BCA) - Semester 3</p>
          </div>
          <div class="text-end">
            <span class="badge bg-success fs-6">Status: PASSED</span>
            <div class="small text-muted">Date: July 28, 2026</div>
          </div>
        </div>

        <div class="row g-3 mb-4 bg-light p-3 rounded-3">
          <div class="col-md-3"><strong>Student Name:</strong> Alex Rivera</div>
          <div class="col-md-3"><strong>Enrollment No:</strong> ENR-2024-001</div>
          <div class="col-md-3"><strong>Department:</strong> BCA</div>
          <div class="col-md-3"><strong>Cumulative GPA:</strong> 3.85 / 4.0</div>
        </div>

        <!-- Table with Specs: Subject, Marks, Grade, Percentage, Status, Remarks -->
        <div class="table-responsive">
          <table class="table align-middle border">
            <thead>
              <tr class="table-light">
                <th>Subject Name & Code</th>
                <th>Marks Obtained</th>
                <th>Grade</th>
                <th>Percentage</th>
                <th>Status</th>
                <th>Remarks</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="fw-bold">BCA-201: ASP.NET Web Development</td>
                <td>92 / 100</td>
                <td><span class="badge bg-success">A+</span></td>
                <td>92.0%</td>
                <td><span class="badge badge-sp success">PASSED</span></td>
                <td>Outstanding Web Architecture Execution</td>
              </tr>

              <tr>
                <td class="fw-bold">BCA-202: C# Object Oriented Programming</td>
                <td>86 / 100</td>
                <td><span class="badge bg-primary">A</span></td>
                <td>86.0%</td>
                <td><span class="badge badge-sp success">PASSED</span></td>
                <td>Excellent OOP Design Logic</td>
              </tr>

              <tr>
                <td class="fw-bold">BCA-203: SQL Server Database System</td>
                <td>88 / 100</td>
                <td><span class="badge bg-primary">A</span></td>
                <td>88.0%</td>
                <td><span class="badge badge-sp success">PASSED</span></td>
                <td>Strong Query Optimization</td>
              </tr>

              <tr>
                <td class="fw-bold">BCA-301: Data Structures & Algorithms</td>
                <td>79 / 100</td>
                <td><span class="badge bg-info text-dark">B+</span></td>
                <td>79.0%</td>
                <td><span class="badge badge-sp success">PASSED</span></td>
                <td>Good Graph Traversal Implementation</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>
</asp:Content>

