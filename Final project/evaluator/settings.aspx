<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="Final_project.evaluator.settings" %>
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
        <h1 class="sp-page-title">Evaluator Settings</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Settings</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-4">
        <h5 class="fw-bold mb-3"><i class="bi bi-shield-lock-fill text-warning me-2"></i> Security Settings</h5>
        <%-- ASP.NET Security Settings Panel --%>
        <asp:Panel ID="pnlSettings" runat="server">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Current Password</label>
              <%-- ASP.NET Current Password TextBox --%>
              <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">New Password</label>
              <%-- ASP.NET New Password TextBox --%>
              <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
            </div>
            <div class="col-12 mt-4">
              <%-- ASP.NET Save Settings Button --%>
              <asp:Button ID="btnSaveSettings" runat="server" Text="Save Settings" CssClass="btn btn-warning text-dark px-4 fw-bold" OnClientClick="alert('Evaluator password updated!'); return false;" />
            </div>
          </div>
        </asp:Panel>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>

</asp:Content>