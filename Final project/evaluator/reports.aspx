<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="Final_project.evaluator.reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">

  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i>
          <%-- ASP.NET Search TextBox --%>
          <asp:TextBox ID="txtSearch" runat="server" placeholder="Search..."></asp:TextBox>
        </div>
      </div>
      <div class="sp-navbar-right">
        <button class="sp-icon-btn sp-theme-toggle"><i class="bi bi-moon-stars-fill"></i></button>
        <div class="sp-user-profile">
          <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
          <span class="sp-user-name d-none d-md-inline">Prof. Robert Langdon</span>
        </div>
      </div>
    </header>

    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Comprehensive Evaluation Reports</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Reports</li>
          </ol>
        </nav>
      </div>

      <!-- Required Spec Export PDF & Print Buttons -->
      <div class="d-flex gap-2">
        <button class="btn btn-sp-secondary" onclick="alert('Exporting Evaluation Report as PDF...')">
          <i class="bi bi-file-earmark-pdf-fill me-1"></i> Export PDF Report
        </button>
        <button class="btn btn-sp-outline" onclick="window.print()">
          <i class="bi bi-printer-fill me-1"></i> Print Report
        </button>
      </div>
    </div>

    <div class="sp-content">

      <!-- Breakdown Filters (Department-Wise, Faculty-Wise, Student-Wise, Semester-Wise, Batch-Wise) -->
      <div class="card p-3 mb-4">
        <div class="row g-3">
          <div class="col-md-4">
            <label class="form-label fw-bold">Department-Wise</label>
            <%-- ASP.NET Department DropDownList --%>
            <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-select">
              <asp:ListItem Value="BCA" Selected="True">BCA Department</asp:ListItem>
              <asp:ListItem Value="MCA">MCA Department</asp:ListItem>
              <asp:ListItem Value="BBA">BBA Department</asp:ListItem>
            </asp:DropDownList>
          </div>

          <div class="col-md-4">
            <label class="form-label fw-bold">Faculty-Wise</label>
            <%-- ASP.NET Faculty DropDownList --%>
            <asp:DropDownList ID="ddlFaculty" runat="server" CssClass="form-select">
              <asp:ListItem Value="All">All Faculty</asp:ListItem>
              <asp:ListItem Value="Sarah">Dr. Sarah Jenkins</asp:ListItem>
              <asp:ListItem Value="Alan">Prof. Alan Turing</asp:ListItem>
            </asp:DropDownList>
          </div>

          <div class="col-md-4">
            <label class="form-label fw-bold">Semester & Batch-Wise</label>
            <%-- ASP.NET Semester and Batch DropDownList --%>
            <asp:DropDownList ID="ddlSemesterBatch" runat="server" CssClass="form-select">
              <asp:ListItem Value="Sem3">Semester 3 (2024-2027)</asp:ListItem>
              <asp:ListItem Value="Sem4">Semester 4 (2024-2027)</asp:ListItem>
            </asp:DropDownList>
          </div>
        </div>
      </div>

      <!-- Report Table -->
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Department</th>
                  <th>Faculty In-Charge</th>
                  <th>Semester / Batch</th>
                  <th>Evaluated Papers</th>
                  <th>Average Score</th>
                  <th>Pass Percentage</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold">BCA</td>
                  <td>Dr. Sarah Jenkins</td>
                  <td>Sem 3 (2024-27)</td>
                  <td>42 Papers</td>
                  <td>86.4 / 100</td>
                  <td><span class="badge bg-success">97.6%</span></td>
                </tr>

                <tr>
                  <td class="fw-bold">MCA</td>
                  <td>Prof. Alan Turing</td>
                  <td>Sem 1 (2025-27)</td>
                  <td>38 Papers</td>
                  <td>82.1 / 100</td>
                  <td><span class="badge bg-success">94.7%</span></td>
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