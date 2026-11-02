
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manage-exams.aspx.cs" Inherits="Final_project.admin.manage_exams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">

  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">

        <%-- ASP.NET Sidebar Toggle Button --%>
        <asp:Button ID="btnSidebarToggle" runat="server" Text="☰" CssClass="btn btn-sm btn-light d-lg-none sp-sidebar-toggler" />

        <%-- ASP.NET Search TextBox --%>
        <div class="sp-nav-search">
          <i class="bi bi-search"></i>
          <asp:TextBox ID="txtSearchSubject" runat="server" placeholder="Search subject..."></asp:TextBox>
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
        <h1 class="sp-page-title">Course Subject Mapping (CRUD)</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Subjects</li>
          </ol>
        </nav>
      </div>

      <%-- ASP.NET Create Subject Button --%>
      <asp:Button ID="btnCreateSubject" runat="server" Text="Create Subject" CssClass="btn btn-danger fw-bold" />
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Subject Code</th>
                  <th>Subject Name</th>
                  <th>Department</th>
                  <th>Semester</th>
                  <th>Assigned Faculty</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold text-primary">BCA-201</td>
                  <td>ASP.NET Web Development</td>
                  <td>BCA</td>
                  <td>Semester 3</td>
                  <td>Dr. Sarah Jenkins</td>
                  <td>
                    <%-- ASP.NET Edit Button --%>
                    <asp:Button ID="btnEditSubject1" runat="server" Text="Edit" CssClass="btn btn-sm btn-sp-outline me-1" />

                    <%-- ASP.NET Delete Button --%>
                    <asp:Button ID="btnDeleteSubject1" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" />
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">BCA-202</td>
                  <td>C# Object Oriented Programming</td>
                  <td>BCA</td>
                  <td>Semester 3</td>
                  <td>Prof. Alan Turing</td>
                  <td>
                    <%-- ASP.NET Edit Button --%>
                    <asp:Button ID="btnEditSubject2" runat="server" Text="Edit" CssClass="btn btn-sm btn-sp-outline me-1" />

                    <%-- ASP.NET Delete Button --%>
                    <asp:Button ID="btnDeleteSubject2" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" />
                  </td>
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
