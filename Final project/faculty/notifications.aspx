<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="notifications.aspx.cs" Inherits="Final_project.faculty.notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Notifications & Alerts</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Notifications</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-3 mb-3 d-flex flex-row align-items-center justify-content-between">
        <div class="d-flex align-items-center gap-3">
          <div class="sp-icon-btn bg-success-subtle text-success"><i class="bi bi-check-circle-fill"></i></div>
          <div>
            <h6 class="fw-bold mb-0">14 Student Practical Submissions Uploaded</h6>
            <p class="text-muted small mb-0">BCA Semester 3 students uploaded ASP.NET Project ZIPs.</p>
          </div>
        </div>
        <span class="text-muted small">1 hour ago</span>
      </div>

      <div class="card p-3 mb-3 d-flex flex-row align-items-center justify-content-between">
        <div class="d-flex align-items-center gap-3">
          <div class="sp-icon-btn bg-primary-subtle text-primary"><i class="bi bi-calendar-event"></i></div>
          <div>
            <h6 class="fw-bold mb-0">Exam Controller Announcement</h6>
            <p class="text-muted small mb-0">Final semester theory paper evaluations scheduled to lock on Aug 15.</p>
          </div>
        </div>
        <span class="text-muted small">Yesterday</span>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>

 </asp:Content>

