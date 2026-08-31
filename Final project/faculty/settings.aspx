<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="Final_project.faculty.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Faculty Settings</h1>
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
        <h5 class="fw-bold mb-3"><i class="bi bi-shield-lock-fill text-primary me-2"></i> Security & Preferences</h5>
        <form onsubmit="event.preventDefault(); alert('Settings saved successfully!');">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Current Password</label>
              <input type="password" class="form-control" placeholder="••••••••">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">New Password</label>
              <input type="password" class="form-control" placeholder="••••••••">
            </div>
            <div class="col-12">
              <div class="form-check form-switch">
                <input class="form-check-input" type="checkbox" id="emailNotif" checked>
                <label class="form-check-label fw-semibold" for="emailNotif">Receive Email Alerts for Practical Submissions</label>
              </div>
            </div>
            <div class="col-12 mt-4">
              <button type="submit" class="btn btn-sp-primary px-4">Save Settings</button>
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

