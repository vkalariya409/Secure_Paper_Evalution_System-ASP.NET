<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="Final_project.student.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
   <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Account Settings</h1>
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
        <h5 class="fw-bold mb-3"><i class="bi bi-gear-fill text-primary me-2"></i> Account Preferences</h5>
        <form onsubmit="event.preventDefault(); alert('Account settings saved!');">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Current Password</label>
              <input type="password" class="form-control" placeholder="••••••••">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">New Password</label>
              <input type="password" class="form-control" placeholder="••••••••">
            </div>
            <div class="col-12 mt-4">
              <button type="submit" class="btn btn-sp-secondary px-4">Save Password</button>
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

