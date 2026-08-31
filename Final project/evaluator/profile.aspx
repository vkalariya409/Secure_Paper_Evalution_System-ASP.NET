<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Final_project.evaluator.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
   <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i><input type="text" placeholder="Search..."></div>
      </div>
      <div class="sp-navbar-right">
        <button class="sp-icon-btn sp-theme-toggle"><i class="bi bi-moon-stars-fill"></i></button>
        <div class="sp-user-profile">
          <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=120&q=80" class="sp-avatar">
          <span class="sp-user-name d-none d-md-inline">Prof. Robert Langdon</span>
        </div>
      </div>
    </header>

    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Evaluator Profile</h1>
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
            <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=160&q=80" class="rounded-circle mb-3 mx-auto" style="width: 110px; height: 110px; object-fit: cover;">
            <h4 class="fw-bold mb-1">Prof. Robert Langdon</h4>
            <p class="text-warning fw-semibold small mb-2">Evaluator ID: EVAL-7721</p>
            <span class="badge bg-warning-subtle text-dark px-3 py-1 rounded-pill">Senior Paper Examiner</span>
          </div>
        </div>

        <div class="col-md-8">
          <div class="card p-4">
            <h5 class="fw-bold mb-3"><i class="bi bi-person-lines-fill text-warning me-2"></i> Evaluator Details</h5>
            <form onsubmit="event.preventDefault(); alert('Profile updated!');">
              <div class="row g-3">
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Full Name</label>
                  <input type="text" class="form-control" value="Prof. Robert Langdon">
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Evaluator ID</label>
                  <input type="text" class="form-control" value="EVAL-7721" readonly>
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Email Address</label>
                  <input type="email" class="form-control" value="robert.l@evaluators.edu">
                </div>
                <div class="col-md-6">
                  <label class="form-label fw-semibold">Phone Number</label>
                  <input type="tel" class="form-control" value="+1 (555) 019-2834">
                </div>
                <div class="col-12 mt-4">
                  <button type="submit" class="btn btn-warning text-dark px-4 fw-bold">Update Profile</button>
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

