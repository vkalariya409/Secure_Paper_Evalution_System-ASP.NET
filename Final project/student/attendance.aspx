
<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Final_project.student.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Attendance Log</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Attendance</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-4 mb-4">
        <div class="row text-center">
          <div class="col-md-4 border-end">
            <h2 class="fw-bold text-success">92%</h2>
            <span class="text-muted small">Total Attendance</span>
          </div>
          <div class="col-md-4 border-end">
            <h2 class="fw-bold text-primary">46 / 50</h2>
            <span class="text-muted small">Classes Attended</span>
          </div>
          <div class="col-md-4">
            <h2 class="fw-bold text-danger">4</h2>
            <span class="text-muted small">Leaves / Absences</span>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</asp:Content>
