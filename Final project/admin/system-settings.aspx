<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="system-settings.aspx.cs" Inherits="Final_project.admin.system_settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    
  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i><input type="text" placeholder="Search..."></div>
      </div>
      <div class="sp-navbar-right">
        <button class="sp-icon-btn sp-theme-toggle"><i class="bi bi-moon-stars-fill"></i></button>
        <div class="sp-user-profile">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
          <span class="sp-user-name d-none d-md-inline">Dr. Arthur Pendelton</span>
        </div>
      </div>
    </header>

    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Global System Settings</h1>
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
        <h5 class="fw-bold mb-3"><i class="bi bi-sliders text-danger me-2"></i> Infrastructure & ASP.NET Readiness Options</h5>
        <form onsubmit="event.preventDefault(); alert('System Configuration Saved!');">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">University System Name</label>
              <input type="text" class="form-control" value="SecurePaper College Examination System">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Target Integration Framework</label>
              <input type="text" class="form-control" value="ASP.NET Web Forms (C#) + SQL Server" readonly>
            </div>
            <div class="col-12 mt-4">
              <button type="submit" class="btn btn-danger px-4">Save Configuration</button>
            </div>
          </div>
        </form>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>


 </asp:Content>

