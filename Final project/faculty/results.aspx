<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="Final_project.faculty.results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Faculty Exam Results Management</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Results</li>
          </ol>
        </nav>
      </div>
      <button class="btn btn-sp-secondary" onclick="alert('Results exported as Excel/PDF report!')"><i class="bi bi-download me-1"></i> Export Report</button>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Student Name</th>
                  <th>Enrollment No</th>
                  <th>Subject</th>
                  <th>Exam Type</th>
                  <th>Score</th>
                  <th>Grade</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold">Alex Rivera</td>
                  <td>ENR-001</td>
                  <td>BCA-201 (ASP.NET)</td>
                  <td>Mid-Term Quiz</td>
                  <td>18 / 20</td>
                  <td><span class="badge bg-success">A+</span></td>
                  <td><span class="badge badge-sp success">Passed</span></td>
                </tr>
                <tr>
                  <td class="fw-bold">Emily Watson</td>
                  <td>ENR-002</td>
                  <td>BCA-201 (ASP.NET)</td>
                  <td>Mid-Term Quiz</td>
                  <td>16 / 20</td>
                  <td><span class="badge bg-primary">A</span></td>
                  <td><span class="badge badge-sp success">Passed</span></td>
                </tr>
              </tbody>
            </table>
          </div>
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

