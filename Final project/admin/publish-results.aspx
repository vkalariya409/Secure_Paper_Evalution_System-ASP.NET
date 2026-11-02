
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="publish-results.aspx.cs" Inherits="Final_project.admin.publish_results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

<div class="sp-main-wrapper">

    <header class="sp-navbar">
        <div class="d-flex align-items-center gap-3">

            <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler">
                <i class="bi bi-list fs-5"></i>
            </button>

            <div class="sp-nav-search">
                <i class="bi bi-search"></i>

                <%-- ASP.NET Search TextBox --%>
                <asp:TextBox ID="txtSearch" runat="server"
                    placeholder="Search..."
                    BorderStyle="None">
                </asp:TextBox>

            </div>
        </div>

        <div class="sp-navbar-right">

            <button class="sp-icon-btn sp-theme-toggle">
                <i class="bi bi-moon-stars-fill"></i>
            </button>

            <div class="sp-user-profile">
                <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
                <span class="sp-user-name d-none d-md-inline">Dr. Arthur Pendelton</span>
            </div>

        </div>
    </header>

    <div class="sp-page-header">
        <div>
            <h1 class="sp-page-title">Result Publication Engine</h1>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
                    <li class="breadcrumb-item active">Publish Results</li>
                </ol>
            </nav>
        </div>
    </div>

    <div class="sp-content">

        <div class="card p-4 mb-4">

            <h5 class="fw-bold text-danger mb-3">
                <i class="bi bi-megaphone-fill me-2"></i> Official Marksheet Release Control
            </h5>

            <%-- ASP.NET Result Publication Panel --%>
            <asp:Panel ID="pnlPublishResults" runat="server">

                <div class="row g-3">

                    <div class="col-md-4">

                        <%-- Department Label --%>
                        <asp:Label ID="lblDepartment" runat="server"
                            Text="Department"
                            CssClass="form-label fw-bold">
                        </asp:Label>

                        <%-- Department DropDownList --%>
                        <asp:DropDownList ID="ddlDepartment" runat="server"
                            CssClass="form-select">

                            <asp:ListItem Value="BCA" Text="BCA Department"></asp:ListItem>
                            <asp:ListItem Value="MCA" Text="MCA Department"></asp:ListItem>

                        </asp:DropDownList>

                    </div>

                    <div class="col-md-4">

                        <%-- Semester Label --%>
                        <asp:Label ID="lblSemester" runat="server"
                            Text="Semester"
                            CssClass="form-label fw-bold">
                        </asp:Label>

                        <%-- Semester DropDownList --%>
                        <asp:DropDownList ID="ddlSemester" runat="server"
                            CssClass="form-select">

                            <asp:ListItem Value="Sem 3" Text="Semester 3"></asp:ListItem>
                            <asp:ListItem Value="Sem 4" Text="Semester 4"></asp:ListItem>

                        </asp:DropDownList>

                    </div>

                    <div class="col-md-4">

                        <%-- Batch Label --%>
                        <asp:Label ID="lblBatch" runat="server"
                            Text="Batch"
                            CssClass="form-label fw-bold">
                        </asp:Label>

                        <%-- Batch TextBox --%>
                        <asp:TextBox ID="txtBatch" runat="server"
                            CssClass="form-control"
                            Text="2024-2027">
                        </asp:TextBox>

                    </div>

                    <div class="col-12 mt-4 d-flex gap-3">

                        <%-- Publish Results ASP.NET Button --%>
                        <asp:Button ID="btnPublishResults" runat="server"
                            Text="Publish Results Now"
                            CssClass="btn btn-danger py-2.5 px-5 fw-bold" />

                        <%-- Lock Marksheets ASP.NET Button --%>
                        <asp:Button ID="btnLockMarksheets" runat="server"
                            Text="Lock Marksheets"
                            CssClass="btn btn-dark py-2.5 px-4 fw-bold"
                            OnClientClick="alert('Marksheets locked! No further edits allowed.'); return false;" />

                    </div>

                </div>

            </asp:Panel>

        </div>

        <div class="card">

            <div class="card-header bg-transparent fw-bold border-0">
                Recent Published Batches
            </div>

            <div class="card-body p-0">

                <div class="table-responsive">

                    <table class="table align-middle">

                        <thead>
                            <tr>
                                <th>Department</th>
                                <th>Semester</th>
                                <th>Published Date</th>
                                <th>Pass Rate</th>
                                <th>Status</th>
                            </tr>
                        </thead>

                        <tbody>

                            <tr>
                                <td class="fw-bold">BCA</td>
                                <td>Semester 3</td>
                                <td>July 28, 2026</td>
                                <td><span class="badge bg-success">97.6%</span></td>
                                <td><span class="badge badge-sp success">Live Published</span></td>
                            </tr>

                        </tbody>

                    </table>

                </div>

            </div>
        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>

</asp:Content>
