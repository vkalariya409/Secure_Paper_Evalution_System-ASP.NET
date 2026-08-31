<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="assignments.aspx.cs" Inherits="Final_project.student.assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
     <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">My Assignments</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Assignments</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Assignment Title</th>
                  <th>Subject</th>
                  <th>Deadline</th>
                  <th>Submission Status</th>
                  <th>Grade</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold">ASP.NET State Management & Session Lab</td>
                  <td>BCA-201</td>
                  <td>Aug 04, 2026</td>
                  <td><span class="badge badge-sp success">Submitted</span></td>
                  <td><span class="badge bg-success">A (90/100)</span></td>
                  <td><button class="btn btn-sm btn-sp-outline">View Feedback</button></td>
                </tr>
                <tr>
                  <td class="fw-bold">C# Delegates & Event Handling</td>
                  <td>BCA-202</td>
                  <td>Aug 10, 2026</td>
                  <td><span class="badge badge-sp warning">Pending</span></td>
                  <td>-</td>
                  <td><a href="practical.html" class="btn btn-sm btn-sp-primary">Upload File</a></td>
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

