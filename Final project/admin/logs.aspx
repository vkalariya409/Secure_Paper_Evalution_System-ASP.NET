
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="logs.aspx.cs" Inherits="Final_project.admin.logs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    
  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">

        <%-- ASP.NET Sidebar Toggle Button --%>
        <asp:Button ID="btnSidebarToggle" runat="server" Text="☰" CssClass="btn btn-sm btn-light d-lg-none sp-sidebar-toggler" />

        <%-- ASP.NET Search TextBox --%>
        <div class="sp-nav-search">
          <i class="bi bi-search"></i>
          <asp:TextBox ID="txtSearchLogs" runat="server" placeholder="Search logs..."></asp:TextBox>
        </div>
      </div>

      <div class="sp-navbar-right">

        <%-- ASP.NET Theme Toggle Button --%>
        <asp:Button ID="btnThemeToggle" runat="server" Text="☾" CssClass="sp-icon-btn sp-theme-toggle" />

        <div class="sp-user-profile">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
          <span class="sp-user-name d-none d-md-inline">Dr. Arthur Pendelton</span>
        </div>
      </div>
    </header>

    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">System Audit Logs & Security History</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">System Logs</li>
          </ol>
        </nav>
      </div>

      <%-- ASP.NET Export Logs Button --%>
      <asp:Button ID="btnExportLogs" runat="server" Text="Export Logs" CssClass="btn btn-sp-outline" />
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle font-monospace small">
              <thead>
                <tr class="table-light">
                  <th>Timestamp</th>
                  <th>User & Role</th>
                  <th>Event Type</th>
                  <th>IP Address</th>
                  <th>Event Summary</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>2026-07-28 13:45:12</td>
                  <td><strong>Dr. Sarah Jenkins</strong> (Faculty)</td>
                  <td><span class="badge bg-primary">QUIZ_UPLOAD</span></td>
                  <td>192.168.1.45</td>
                  <td>Uploaded ASP.NET Mid-Term Quiz (5 Questions)</td>
                </tr>
                <tr>
                  <td>2026-07-28 13:48:22</td>
                  <td><strong>Alex Rivera</strong> (Student)</td>
                  <td><span class="badge bg-success">QUIZ_SUBMIT</span></td>
                  <td>192.168.1.88</td>
                  <td>Completed ASP.NET Mid-Term Quiz (Score: 18/20)</td>
                </tr>
                <tr>
                  <td>2026-07-28 13:52:01</td>
                  <td><strong>Prof. Robert Langdon</strong> (Evaluator)</td>
                  <td><span class="badge bg-warning text-dark">MARKS_SUBMIT</span></td>
                  <td>192.168.1.12</td>
                  <td>Submitted Paper Marks for Script SCR-9901 (46.0/50)</td>
                </tr>
                <tr>
                  <td>2026-07-28 13:54:15</td>
                  <td><strong>Dr. Arthur Pendelton</strong> (Admin)</td>
                  <td><span class="badge bg-danger">RESULT_PUBLISH</span></td>
                  <td>192.168.1.100</td>
                  <td>Published BCA Semester 3 Results to Student Portals</td>
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
