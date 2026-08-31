<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="assignments.aspx.cs" Inherits="Final_project.faculty.assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Course Assignments</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Assignments</li>
          </ol>
        </nav>
      </div>
      <button class="btn btn-sp-primary" onclick="alert('Assignment creation modal opened!')"><i class="bi bi-plus-lg me-1"></i> Create Assignment</button>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Title</th>
                  <th>Subject</th>
                  <th>Deadline</th>
                  <th>Submissions</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold">ASP.NET State Management & Sessions</td>
                  <td>BCA-201</td>
                  <td>Aug 04, 2026</td>
                  <td><span class="badge bg-primary">38 / 42 Submitted</span></td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td><button class="btn btn-sm btn-sp-outline">Review Submissions</button></td>
                </tr>
                <tr>
                  <td class="fw-bold">C# Linq Queries & Delegates</td>
                  <td>BCA-202</td>
                  <td>Aug 10, 2026</td>
                  <td><span class="badge bg-warning text-dark">12 / 42 Submitted</span></td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td><button class="btn btn-sm btn-sp-outline">Review Submissions</button></td>
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

