<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Final_project.student.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
  
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Login · SecurePaper</title>
  <meta name="description" content="Student Portal Authorization for SecurePaper Examination System.">
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
      <div class="container-fluid min-vh-100 d-flex justify-content-center align-items-center">
  <div class="sp-auth-card">
    <div class="sp-auth-header">
      <a href="../index.aspx" class="d-inline-flex align-items-center gap-2 mb-2 text-decoration-none">
        <div class="sp-brand-icon"><i class="bi bi-shield-lock-fill"></i></div>
        <span class="fs-3 fw-extrabold text-dark">Secure<span class="sp-text-gradient">Paper</span></span>
      </a>
      <p class="text-muted small mb-0">Student Portal Authorization</p>
    </div>

    <div class="d-flex align-items-center gap-3 p-3 rounded-4 bg-info-subtle mb-4">
      <div class="sp-icon-square cyan mb-0" style="width:46px; height:46px; font-size:1.3rem;"><i class="bi bi-backpack-fill"></i></div>
      <div>
        <h5 class="fw-bold mb-0 text-dark">Student Portal</h5>
        <span class="text-muted small">Online quizzes & exam submissions</span>
      </div>
    </div>

    <form action="dashboard.aspx" method="get">
      <div class="mb-3">
        <label class="form-label fw-semibold">Enrollment Number / Email</label>
        <div class="input-group">
          <span class="input-group-text bg-body-tertiary border-end-0"><i class="bi bi-person-badge text-muted"></i></span>
          <input type="text" class="form-control border-start-0 py-2" placeholder="ENR-2024-001 or student@univ.edu" value="ENR-2024-001" required>
        </div>
      </div>

      <div class="mb-3">
        <div class="d-flex justify-content-between align-items-center mb-1">
          <label class="form-label fw-semibold mb-0">Password</label>
          <a href="#" class="small text-primary text-decoration-none fw-semibold">Forgot Password?</a>
        </div>
        <div class="input-group">
          <span class="input-group-text bg-body-tertiary border-end-0"><i class="bi bi-lock-fill text-muted"></i></span>
          <input type="password" class="form-control border-start-0 py-2" value="••••••••" required>
        </div>
      </div>

      <div class="form-check mb-4">
        <input type="checkbox" class="form-check-input" id="rememberStud" checked>
        <label class="form-check-label text-muted small" for="rememberStud">Remember login on this device</label>
      </div>

      <button type="submit" class="btn btn-sp-primary w-100 py-2.5 fs-6">
        Log In to Student Dashboard <i class="bi bi-arrow-right ms-1"></i>
      </button>
    </form>

    <div class="border-top border-secondary border-opacity-10 my-4 pt-3 text-center">
      <p class="text-muted small mb-2">New Student Enrollment?</p>
      <a href="register.aspx" class="btn btn-sp-outline w-100 py-2"><i class="bi bi-person-plus-fill me-1"></i> Register Student Account</a>
    </div>

    <div class="text-center mt-3">
      <a href="../login-selection.aspx" class="text-muted small text-decoration-none"><i class="bi bi-arrow-left me-1"></i> Back to Portal Selection</a>
    </div>
  </div>
          </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>

</asp:Content>

