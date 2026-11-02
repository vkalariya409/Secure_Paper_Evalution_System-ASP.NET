
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Final_project.admin.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

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

                        <h4 class="fw-bold mb-1">
                            <i class="bi bi-shield-check text-danger me-2"></i> Register New Administrator
                        </h4>

                        <p class="text-muted small mb-4">Provision admin credentials for system governance.</p>

                        <%-- ASP.NET Form Controls --%>
                        <asp:Panel ID="pnlRegister" runat="server">

                            <div class="row g-3">

                                <div class="col-md-6">

                                    <%-- Full Name Label --%>
                                    <asp:Label ID="lblFullName" runat="server"
                                        Text="Full Name"
                                        CssClass="form-label fw-semibold">
                                    </asp:Label>

                                    <%-- Full Name TextBox --%>
                                    <asp:TextBox ID="txtFullName" runat="server"
                                        CssClass="form-control"
                                        placeholder="Dr. Arthur Pendelton">
                                    </asp:TextBox>

                                </div>

                                <div class="col-md-6">

                                    <%-- Admin Designation Label --%>
                                    <asp:Label ID="lblDesignation" runat="server"
                                        Text="Admin Designation"
                                        CssClass="form-label fw-semibold">
                                    </asp:Label>

                                    <%-- Admin Designation TextBox --%>
                                    <asp:TextBox ID="txtDesignation" runat="server"
                                        CssClass="form-control"
                                        Text="Controller of Examinations">
                                    </asp:TextBox>

                                </div>

                                <div class="col-md-6">

                                    <%-- University Email Label --%>
                                    <asp:Label ID="lblEmail" runat="server"
                                        Text="University Email"
                                        CssClass="form-label fw-semibold">
                                    </asp:Label>

                                    <%-- University Email TextBox --%>
                                    <asp:TextBox ID="txtEmail" runat="server"
                                        TextMode="Email"
                                        CssClass="form-control"
                                        placeholder="arthur.p@admin.univ.edu">
                                    </asp:TextBox>

                                </div>

                                <div class="col-md-6">

                                    <%-- Phone Contact Label --%>
                                    <asp:Label ID="lblPhone" runat="server"
                                        Text="Phone Contact"
                                        CssClass="form-label fw-semibold">
                                    </asp:Label>

                                    <%-- Phone Contact TextBox --%>
                                    <asp:TextBox ID="txtPhone" runat="server"
                                        TextMode="Phone"
                                        CssClass="form-control"
                                        placeholder="+1 (555) 019-2834">
                                    </asp:TextBox>

                                </div>

                                <div class="col-md-6">

                                    <%-- Master Password Label --%>
                                    <asp:Label ID="lblPassword" runat="server"
                                        Text="Master Password"
                                        CssClass="form-label fw-semibold">
                                    </asp:Label>

                                    <%-- Master Password TextBox --%>
                                    <asp:TextBox ID="txtPassword" runat="server"
                                        TextMode="Password"
                                        CssClass="form-control"
                                        placeholder="••••••••">
                                    </asp:TextBox>

                                </div>

                                <div class="col-md-6">

                                    <%-- System Security Passcode Label --%>
                                    <asp:Label ID="lblSecurityPasscode" runat="server"
                                        Text="System Security Passcode"
                                        CssClass="form-label fw-semibold">
                                    </asp:Label>

                                    <%-- System Security Passcode TextBox --%>
                                    <asp:TextBox ID="txtSecurityPasscode" runat="server"
                                        TextMode="Password"
                                        CssClass="form-control"
                                        placeholder="••••••••">
                                    </asp:TextBox>

                                </div>

                                <div class="col-12 mt-4">

                                    <%-- Create Administrator Account Button --%>
                                    <asp:Button ID="btnRegister" runat="server"
                                        Text="Create Administrator Account"
                                        CssClass="btn btn-danger w-100 py-2.5 fw-bold" />

                                </div>

                            </div>

                        </asp:Panel>

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
