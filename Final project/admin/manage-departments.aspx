<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manage-departments.aspx.cs" Inherits="Final_project.admin.manage_departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
   
  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i><input type="text" placeholder="Search department..."></div>
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
        <h1 class="sp-page-title">University Departments (7)</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Departments</li>
          </ol>
        </nav>
      </div>
      <button class="btn btn-danger fw-bold" onclick="alert('Add Department Modal Opened!')"><i class="bi bi-plus-lg me-1"></i> Add Department</button>
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
                <tr>
                  <td class="fw-bold text-primary">BCA</td>
                  <td>Bachelor of Computer Applications</td>
                  <td>Dr. Sarah Jenkins</td>
                  <td>14 Faculty</td>
                  <td>320 Students</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">MCA</td>
                  <td>Master of Computer Applications</td>
                  <td>Prof. Alan Turing</td>
                  <td>12 Faculty</td>
                  <td>180 Students</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">BBA</td>
                  <td>Bachelor of Business Administration</td>
                  <td>Dr. Michael Scott</td>
                  <td>10 Faculty</td>
                  <td>250 Students</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">MBA</td>
                  <td>Master of Business Administration</td>
                  <td>Dr. Jan Levinson</td>
                  <td>11 Faculty</td>
                  <td>200 Students</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">B.Tech</td>
                  <td>Bachelor of Technology (CSE)</td>
                  <td>Dr. Gordon Moore</td>
                  <td>18 Faculty</td>
                  <td>400 Students</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">Pharmacy</td>
                  <td>Bachelor of Pharmacy</td>
                  <td>Dr. Alexander Fleming</td>
                  <td>9 Faculty</td>
                  <td>140 Students</td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline me-1"><i class="bi bi-pencil"></i> Edit</button>
                    <button class="btn btn-sm btn-outline-danger"><i class="bi bi-trash"></i> Delete</button>
                  </td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">Nursing</td>
                  <td>B.Sc Nursing</td>
                  <td>Dr. Florence Nightingale</td>
                  <td>10 Faculty</td>
                  <td>150 Students</td>
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

