<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Final_project.faculty.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Faculty Profile</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Profile</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="card p-4 text-center">
            <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=160&q=80" class="rounded-circle mb-3 mx-auto" style="width: 110px; height: 110px; object-fit: cover;">
            <h4 class="fw-bold mb-1">Dr. Sarah Jenkins</h4>
            <p class="text-primary fw-semibold small mb-2">Associate Professor</p>
            <span class="badge bg-primary-subtle text-primary px-3 py-1 rounded-pill">Dept of BCA</span>
          </div>
        </div>

        <div class="col-md-8">
          <div class="card p-4">
            <h5 class="fw-bold mb-3"><i class="bi bi-person-lines-fill text-primary me-2"></i> Professional Details</h5>
            <form onsubmit="event.preventDefault(); alert('Profile updated successfully!');">
              <div class="row g-3">
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Employee ID</label>
                  <input type="text" class="form-control" value="EMP-8842" readonly>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Department</label>
                  <input type="text" class="form-control" value="BCA" readonly>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Email Address</label>
                  <input type="email" class="form-control" value="sarah.jenkins@university.edu">
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Phone Number</label>
                  <input type="tel" class="form-control" value="+1 (555) 019-2834">
                </div>
                <div class="col-12 mt-4">
                  <button type="submit" class="btn btn-sp-primary px-4">Update Profile</button>
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

