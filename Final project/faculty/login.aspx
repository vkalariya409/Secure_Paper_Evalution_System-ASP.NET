
<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Final_project.faculty.login" %>
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
  <title>Faculty Login · SecurePaper</title>
  <meta name="description" content="Faculty Portal Authentication for SecurePaper Examination System.">
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
        <div class="container-fluid min-vh-100 d-flex justify-content-center align-items-center">

  <div class="sp-auth-card">
    <div class="sp-auth-header">
      <a href="../index.html" class="d-inline-flex align-items-center gap-2 mb-2 text-decoration-none">
        <div class="sp-brand-icon"><i class="bi bi-shield-lock-fill"></i></div>
        <span class="fs-3 fw-extrabold text-dark">Secure<span class="sp-text-gradient">Paper</span></span>
      </a>
      <p class="text-muted small mb-0">Faculty Portal Authentication</p>
    </div>

    <div class="d-flex align-items-center gap-3 p-3 rounded-4 bg-primary-subtle mb-4">
      <div class="sp-icon-square blue mb-0" style="width:46px; height:46px; font-size:1.3rem;"><i class="bi bi-person-workspace"></i></div>
      <div>
        <h5 class="fw-bold mb-0 text-dark">Faculty Portal</h5>
        <span class="text-muted small">Course management & exam uploads</span>
      </div>
    </div>

    <form action="dashboard.html" method="get">
      <div class="mb-3">
        <label class="form-label fw-semibold">Faculty ID / Email</label>
        <div class="input-group">
          <span class="input-group-text bg-body-tertiary border-end-0"><i class="bi bi-person-fill text-muted"></i></span>
          <%-- ASP.NET Faculty ID / Email TextBox --%>
          <asp:TextBox ID="txtFacultyID" runat="server" CssClass="form-control border-start-0 py-2" placeholder="FAC-8842 or faculty@univ.edu" Text="FAC-8842" required="required"></asp:TextBox>
        </div>
      </div>

      <div class="mb-3">
        <div class="d-flex justify-content-between align-items-center mb-1">
          <label class="form-label fw-semibold mb-0">Password</label>
          <a href="#" class="small text-primary text-decoration-none fw-semibold">Forgot Password?</a>
        </div>
        <div class="input-group">
          <span class="input-group-text bg-body-tertiary border-end-0"><i class="bi bi-lock-fill text-muted"></i></span>
          <%-- ASP.NET Password TextBox --%>
          <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control border-start-0 py-2" Text="••••••••" required="required"></asp:TextBox>
        </div>
      </div>

      <div class="form-check mb-4">
        <%-- ASP.NET Remember Login CheckBox --%>
        <asp:CheckBox ID="chkRememberFac" runat="server" CssClass="form-check-input" Checked="true" />
        <label class="form-check-label text-muted small" for="rememberFac">Remember login on this device</label>
      </div>

      <%-- ASP.NET Login Button --%>
      <asp:Button ID="btnLogin" runat="server" Text="Log In to Faculty Dashboard" CssClass="btn btn-sp-primary w-100 py-2.5 fs-6" />
    </form>

    <div class="border-top border-secondary border-opacity-10 my-4 pt-3 text-center">
      <p class="text-muted small mb-2">New Faculty Member?</p>
      <a href="register.html" class="btn btn-sp-outline w-100 py-2"><i class="bi bi-person-plus-fill me-1"></i> Register Faculty Account</a>
    </div>

    <div class="text-center mt-3">
      <a href="../login-selection.html" class="text-muted small text-decoration-none"><i class="bi bi-arrow-left me-1"></i> Back to Portal Selection</a>
    </div>
  </div>
            </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>

 </asp:Content>
