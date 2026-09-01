<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Final_project.student.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Student Profile</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Profile</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="card p-4 text-center">
            <img src="https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?auto=format&fit=crop&w=160&q=80" class="rounded-circle mb-3 mx-auto" style="width: 110px; height: 110px; object-fit: cover;">
            <h4 class="fw-bold mb-1">Alex Rivera</h4>
            <p class="text-success fw-semibold small mb-2">Enrollment: ENR-2024-001</p>
            <span class="badge bg-primary-subtle text-primary px-3 py-1 rounded-pill">BCA Semester 3</span>
          </div>
        </div>

        <div class="col-md-8">
          <div class="card p-4">
            <h5 class="fw-bold mb-3"><i class="bi bi-person-badge-fill text-success me-2"></i> Student Details</h5>
            <form onsubmit="event.preventDefault(); alert('Profile updated!');">
              <div class="row g-3">
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Full Name</label>
                  <input type="text" class="form-control" value="Alex Rivera">
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Enrollment Number</label>
                  <input type="text" class="form-control" value="ENR-2024-001" readonly>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Department</label>
                  <input type="text" class="form-control" value="BCA" readonly>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Batch</label>
                  <input type="text" class="form-control" value="2024-2027" readonly>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Phone Number</label>
                  <input type="tel" class="form-control" value="+1 (555) 019-2834">
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Student Email</label>
                  <input type="email" class="form-control" value="alex.rivera@student.univ.edu">
                </div>
                <div class="col-12 mt-4">
                  <button type="submit" class="btn btn-sp-secondary px-4">Update Profile</button>
                </div>
              </div>
            </form>
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

