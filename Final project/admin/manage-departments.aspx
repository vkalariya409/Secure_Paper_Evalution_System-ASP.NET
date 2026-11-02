
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manage-departments.aspx.cs" Inherits="Final_project.admin.manage_departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

<div class="sp-main-wrapper">

    <header class="sp-navbar">
        <div class="d-flex align-items-center gap-3">

            <button type="button" class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler">
                <i class="bi bi-list fs-5"></i>
            </button>

            <div class="sp-nav-search">
                <i class="bi bi-search"></i>

                <%-- ASP.NET Search TextBox --%>
                <asp:TextBox ID="txtSearchDepartment" runat="server"
                    placeholder="Search department..."
                    CssClass="">
                </asp:TextBox>

            </div>
        </div>

        <div class="sp-navbar-right">

            <button type="button" class="sp-icon-btn sp-theme-toggle">
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
            <h1 class="sp-page-title">University Departments (7)</h1>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="dashboard.html">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Departments</li>
                </ol>
            </nav>
        </div>

        <%-- ASP.NET Add Department Button --%>
        <asp:Button ID="btnAddDepartment" runat="server"
            Text="Add Department"
            CssClass="btn btn-danger fw-bold"
            OnClientClick="alert('Add Department Modal Opened!'); return false;" />

    </div>

    <div class="sp-content">
        <div class="card">
            <div class="card-body p-0">

                <div class="table-responsive">

                    <table class="table align-middle">

                        <thead>
                            <tr>
                                <th>Dept Code</th>
                                <th>Department Name</th>
                                <th>HOD Name</th>
                                <th>Faculty Count</th>
                                <th>Enrolled Students</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>

                            <%-- BCA Department --%>
                            <tr>
                                <td class="fw-bold text-primary">BCA</td>
                                <td>Bachelor of Computer Applications</td>
                                <td>Dr. Sarah Jenkins</td>
                                <td>14 Faculty</td>
                                <td>320 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <%-- ASP.NET Edit Button --%>
                                    <asp:Button ID="btnEditBCA" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="BCA" />

                                    <%-- ASP.NET Delete Button --%>
                                    <asp:Button ID="btnDeleteBCA" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="BCA" />
                                </td>
                            </tr>

                            <%-- MCA Department --%>
                            <tr>
                                <td class="fw-bold text-primary">MCA</td>
                                <td>Master of Computer Applications</td>
                                <td>Prof. Alan Turing</td>
                                <td>12 Faculty</td>
                                <td>180 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <asp:Button ID="btnEditMCA" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="MCA" />

                                    <asp:Button ID="btnDeleteMCA" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="MCA" />
                                </td>
                            </tr>

                            <%-- BBA Department --%>
                            <tr>
                                <td class="fw-bold text-primary">BBA</td>
                                <td>Bachelor of Business Administration</td>
                                <td>Dr. Michael Scott</td>
                                <td>10 Faculty</td>
                                <td>250 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <asp:Button ID="btnEditBBA" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="BBA" />

                                    <asp:Button ID="btnDeleteBBA" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="BBA" />
                                </td>
                            </tr>

                            <%-- MBA Department --%>
                            <tr>
                                <td class="fw-bold text-primary">MBA</td>
                                <td>Master of Business Administration</td>
                                <td>Dr. Jan Levinson</td>
                                <td>11 Faculty</td>
                                <td>200 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <asp:Button ID="btnEditMBA" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="MBA" />

                                    <asp:Button ID="btnDeleteMBA" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="MBA" />
                                </td>
                            </tr>

                            <%-- B.Tech Department --%>
                            <tr>
                                <td class="fw-bold text-primary">B.Tech</td>
                                <td>Bachelor of Technology (CSE)</td>
                                <td>Dr. Gordon Moore</td>
                                <td>18 Faculty</td>
                                <td>400 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <asp:Button ID="btnEditBTech" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="B.Tech" />

                                    <asp:Button ID="btnDeleteBTech" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="B.Tech" />
                                </td>
                            </tr>

                            <%-- Pharmacy Department --%>
                            <tr>
                                <td class="fw-bold text-primary">Pharmacy</td>
                                <td>Bachelor of Pharmacy</td>
                                <td>Dr. Alexander Fleming</td>
                                <td>9 Faculty</td>
                                <td>140 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <asp:Button ID="btnEditPharmacy" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="Pharmacy" />

                                    <asp:Button ID="btnDeletePharmacy" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="Pharmacy" />
                                </td>
                            </tr>

                            <%-- Nursing Department --%>
                            <tr>
                                <td class="fw-bold text-primary">Nursing</td>
                                <td>B.Sc Nursing</td>
                                <td>Dr. Florence Nightingale</td>
                                <td>10 Faculty</td>
                                <td>150 Students</td>
                                <td><span class="badge badge-sp success">Active</span></td>

                                <td>
                                    <asp:Button ID="btnEditNursing" runat="server"
                                        Text="Edit"
                                        CssClass="btn btn-sm btn-sp-outline me-1"
                                        CommandArgument="Nursing" />

                                    <asp:Button ID="btnDeleteNursing" runat="server"
                                        Text="Delete"
                                        CssClass="btn btn-sm btn-outline-danger"
                                        CommandArgument="Nursing" />
                                </td>
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
