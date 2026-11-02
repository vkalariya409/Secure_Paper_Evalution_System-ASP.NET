
<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="Final_project.student.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
   <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Account Settings</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Settings</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-4">
        <h5 class="fw-bold mb-3"><i class="bi bi-gear-fill text-primary me-2"></i> Account Preferences</h5>

        <%-- ASP.NET Panel instead of HTML Form --%>
        <asp:Panel ID="pnlSettings" runat="server">
          <div class="row g-3">
            <div class="col-md-6">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblCurrentPassword" runat="server" Text="Current Password" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET Current Password TextBox --%>
              <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
            </div>
            <div class="col-md-6">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblNewPassword" runat="server" Text="New Password" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET New Password TextBox --%>
              <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
            </div>
            <div class="col-12 mt-4">
              <%-- ASP.NET Save Password Button --%>
              <asp:Button ID="btnSavePassword" runat="server" Text="Save Password" CssClass="btn btn-sp-secondary px-4" />
            </div>
          </div>
        </asp:Panel>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</asp:Content>
