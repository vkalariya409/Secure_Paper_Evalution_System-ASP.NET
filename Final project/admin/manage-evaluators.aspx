<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manage-evaluators.aspx.cs" Inherits="Final_project.admin.manage_evaluators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
   
  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i><input type="text" placeholder="Search evaluator..."></div>
      </div>
      <div class="sp-navbar-right">
        <button class="sp-icon-btn sp-theme-toggle"><i class="bi bi-moon-stars-fill"></i></button>
        <div class="sp-user-profile">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
          <span class="sp-user-name d-none d-md-inline">Dr. Arthur Pendelton</span>
        </div>
      </div>
    </header>

    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Manage Evaluators (CRUD)</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Evaluators</li>
          </ol>
        </nav>
      </div>
      <button class="btn btn-danger fw-bold" onclick="alert('Evaluator Assignment Modal Opened!')"><i class="bi bi-plus-lg me-1"></i> Register Evaluator</button>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Evaluator Name</th>
                  <th>Evaluator ID</th>
                  <th>Department</th>
                  <th>Experience</th>
                  <th>Email</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold">Prof. Robert Langdon</td>
                  <td class="text-primary fw-semibold">EVAL-7721</td>
                  <td>BCA</td>
                  <td>8 Years</td>
                  <td>robert.l@univ.edu</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
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

