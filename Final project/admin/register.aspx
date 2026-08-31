<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Final_project.admin.register" %>
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
  <title>Admin Registration - SecurePaper</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-8">
        
        <div class="text-center mb-4">
          <a href="../index.html" class="d-inline-flex align-items-center gap-2 fw-bold text-primary fs-3 text-decoration-none">
            <div class="sp-brand-icon"><i class="bi bi-shield-lock-fill"></i></div>
            <span>Secure<span class="text-dark">Paper</span></span>
          </a>
          <p class="text-muted small mt-1">System Administrator Registration</p>
        </div>

        <div class="card border-0 shadow-lg p-4">
          <div class="card-body">
            <h4 class="fw-bold mb-1"><i class="bi bi-shield-check text-danger me-2"></i> Register New Administrator</h4>
            <p class="text-muted small mb-4">Provision admin credentials for system governance.</p>

            <form action="dashboard.html" method="get">
              <div class="row g-3">
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Full Name</label>
                  <input type="text" class="form-control" placeholder="Dr. Arthur Pendelton" required>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Admin Designation</label>
                  <input type="text" class="form-control" value="Controller of Examinations" required>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">University Email</label>
                  <input type="email" class="form-control" placeholder="arthur.p@admin.univ.edu" required>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Phone Contact</label>
                  <input type="tel" class="form-control" placeholder="+1 (555) 019-2834" required>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Master Password</label>
                  <input type="password" class="form-control" placeholder="••••••••" required>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">System Security Passcode</label>
                  <input type="password" class="form-control" placeholder="••••••••" required>
                </div>

                <div class="col-12 mt-4">
                  <button type="submit" class="btn btn-danger w-100 py-2.5 fw-bold">
                    <i class="bi bi-shield-lock-fill me-2"></i> Create Administrator Account
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>

      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>
</asp:Content>

