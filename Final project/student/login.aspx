<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Final_project.student.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Student Login · SecurePaper</title>

    <!-- CSS Links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../assets/css/style.css" />
</head>
<body>

    <form id="form1" runat="server">
        <div class="container-fluid min-vh-100 d-flex justify-content-center align-items-center">
            <div class="sp-auth-card">
                
                <!-- Logo & Header -->
                <div class="sp-auth-header">
                    <a href="../index.aspx" class="d-inline-flex align-items-center gap-2 mb-2 text-decoration-none">
                        <div class="sp-brand-icon"><i class="bi bi-shield-lock-fill"></i></div>
                        <span class="fs-3 fw-extrabold text-dark">Secure<span class="sp-text-gradient">Paper</span></span>
                    </a>
                    <p class="text-muted small mb-0">Student Portal Authorization</p>
                </div>

                <!-- Portal Banner -->
                <div class="d-flex align-items-center gap-3 p-3 rounded-4 bg-info-subtle mb-4">
                    <div class="sp-icon-square cyan mb-0" style="width:46px; height:46px; font-size:1.3rem;">
                        <i class="bi bi-backpack-fill"></i>
                    </div>
                    <div>
                        <h5 class="fw-bold mb-0 text-dark">Student Portal</h5>
                        <span class="text-muted small">Online quizzes & exam submissions</span>
                    </div>
                </div>

                <!-- Enrollment Input -->
                <div class="mb-3">
                    <asp:Label ID="lblEnrollment" runat="server" AssociatedControlID="txtEnrollment" CssClass="form-label fw-semibold" Text="Enrollment Number / Email" />
                    <div class="input-group">
                        <span class="input-group-text bg-body-tertiary border-end-0"><i class="bi bi-person-badge text-muted"></i></span>
                        <asp:TextBox ID="txtEnrollment" runat="server" CssClass="form-control border-start-0 py-2" Placeholder="ENR-2024-001 or student@univ.edu" Text="ENR-2024-001" Required="true" />
                    </div>
                </div>

                <!-- Password Input -->
                <div class="mb-3">
                    <div class="d-flex justify-content-between align-items-center mb-1">
                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" CssClass="form-label fw-semibold mb-0" Text="Password" />
                        <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl="#" CssClass="small text-primary text-decoration-none fw-semibold" Text="Forgot Password?" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-text bg-body-tertiary border-end-0"><i class="bi bi-lock-fill text-muted"></i></span>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control border-start-0 py-2" Value="••••••••" Required="true" />
                    </div>
                </div>

                <!-- Checkbox -->
                <div class="form-check mb-4">
                    <asp:CheckBox ID="chkRememberStud" runat="server" Checked="true" CssClass="form-check-input" />
                    <asp:Label ID="lblRememberStud" runat="server" AssociatedControlID="chkRememberStud" CssClass="form-check-label text-muted small" Text="Remember login on this device" />
                </div>

                <!-- Login Button -->
                <button type="submit" id="btnLogin" runat="server" class="btn btn-sp-primary w-100 py-2.5 fs-6">
                    Log In to Student Dashboard <i class="bi bi-arrow-right ms-1"></i>
                </button>

                <!-- Register Link -->
                <div class="border-top border-secondary border-opacity-10 my-4 pt-3 text-center">
                    <p class="text-muted small mb-2">New Student Enrollment?</p>
                    <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="register.aspx" CssClass="btn btn-sp-outline w-100 py-2">
                        <i class="bi bi-person-plus-fill me-1"></i> Register Student Account
                    </asp:HyperLink>
                </div>

                <!-- Back Link -->
                <div class="text-center mt-3">
                    <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="../login-selection.aspx" CssClass="text-muted small text-decoration-none">
                        <i class="bi bi-arrow-left me-1"></i> Back to Portal Selection
                    </asp:HyperLink>
                </div>

            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/main.js"></script>
</body>
</html>