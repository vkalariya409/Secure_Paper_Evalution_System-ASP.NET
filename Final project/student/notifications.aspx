<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="notifications.aspx.cs" Inherits="Final_project.student.notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Notifications</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Notifications</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-3 mb-3 d-flex flex-row align-items-center justify-content-between">
        <div class="d-flex align-items-center gap-3">
          <div class="sp-icon-btn bg-primary-subtle text-primary"><i class="bi bi-patch-question-fill"></i></div>
          <div>
            <h6 class="fw-bold mb-0">ASP.NET Mid-Term Online Quiz Available</h6>
            <p class="text-muted small mb-0">Quiz limit is 15 minutes. Ensure a stable internet connection.</p>
          </div>
        </div>
        <span class="text-muted small">Active Now</span>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>

</asp:Content>

