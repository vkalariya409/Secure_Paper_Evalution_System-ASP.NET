<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manage-faculty.aspx.cs" Inherits="Final_project.admin.manage_faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder3">
   
  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i><input type="text" placeholder="Search faculty name or ID..."></div>
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
        <h1 class="sp-page-title">Faculty Member Directory (CRUD)</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Manage Faculty</li>
          </ol>
        </nav>
      </div>
      <button class="btn btn-danger fw-bold" data-bs-toggle="modal" data-bs-target="#addFacultyModal"><i class="bi bi-plus-lg me-1"></i> Add Faculty Member</button>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Faculty Name</th>
                  <th>Employee ID</th>
                  <th>Department</th>
                  <th>Designation</th>
                  <th>Contact Email</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold">
                    <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80" class="sp-avatar me-2">
                    Dr. Sarah Jenkins
                  </td>
                  <td class="text-primary fw-semibold">EMP-8842</td>
                  <td>BCA</td>
                  <td>Associate Professor</td>
                  <td>sarah.j@univ.edu</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1" onclick="alert('Editing Faculty Details...')"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger" onclick="confirm('Are you sure you want to delete this faculty member?')"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold">
                    <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" class="sp-avatar me-2">
                    Prof. Alan Turing
                  </td>
                  <td class="text-primary fw-semibold">EMP-8843</td>
                  <td>MCA</td>
                  <td>Professor & HOD</td>
                  <td>alan.t@univ.edu</td>
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

<!-- Add Faculty Modal -->
<div class="modal fade" id="addFacultyModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title fw-bold"><i class="bi bi-person-plus-fill me-2"></i> Add New Faculty Member</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body p-4">
        <form onsubmit="event.preventDefault(); alert('New Faculty Added!'); location.reload();">
          <div class="mb-3">
            <label class="form-label fw-bold">Full Name</label>
            <input type="text" class="form-control" required>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Department</label>
            <select class="form-select" required>
              <option value="BCA">BCA</option>
              <option value="MCA">MCA</option>
              <option value="BBA">BBA</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Email</label>
            <input type="email" class="form-control" required>
          </div>
          <button type="submit" class="btn btn-danger w-100 fw-bold">Save Faculty</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>

 </asp:Content>

