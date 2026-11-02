
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

            <%-- ASP.NET Panel replaces the inner HTML form --%>
            <asp:Panel ID="pnlProfile" runat="server">
              <div class="row g-3">
                <div class="col-md-6">
                  <%-- ASP.NET Label --%>
                  <asp:Label ID="lblFullName" runat="server" CssClass="form-label fw-semibold" Text="Full Name"></asp:Label>
                  <%-- ASP.NET TextBox --%>
                  <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" Text="Alex Rivera"></asp:TextBox>
                </div>
                <div class="col-md-6">
                  <%-- ASP.NET Label --%>
                  <asp:Label ID="lblEnrollment" runat="server" CssClass="form-label fw-semibold" Text="Enrollment Number"></asp:Label>
                  <%-- ASP.NET ReadOnly TextBox --%>
                  <asp:TextBox ID="txtEnrollment" runat="server" CssClass="form-control" Text="ENR-2024-001" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="col-md-6">
                  <%-- ASP.NET Label --%>
                  <asp:Label ID="lblDepartment" runat="server" CssClass="form-label fw-semibold" Text="Department"></asp:Label>
                  <%-- ASP.NET ReadOnly TextBox --%>
                  <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control" Text="BCA" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="col-md-6">
                  <%-- ASP.NET Label --%>
                  <asp:Label ID="lblBatch" runat="server" CssClass="form-label fw-semibold" Text="Batch"></asp:Label>
                  <%-- ASP.NET ReadOnly TextBox --%>
                  <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Text="2024-2027" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="col-md-6">
                  <%-- ASP.NET Label --%>
                  <asp:Label ID="lblPhone" runat="server" CssClass="form-label fw-semibold" Text="Phone Number"></asp:Label>
                  <%-- ASP.NET Phone TextBox --%>
                  <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="form-control" Text="+1 (555) 019-2834"></asp:TextBox>
                </div>
                <div class="col-md-6">
                  <%-- ASP.NET Label --%>
                  <asp:Label ID="lblEmail" runat="server" CssClass="form-label fw-semibold" Text="Student Email"></asp:Label>
                  <%-- ASP.NET Email TextBox --%>
                  <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" Text="alex.rivera@student.univ.edu"></asp:TextBox>
                </div>
                <div class="col-12 mt-4">
                  <%-- ASP.NET Update Profile Button --%>
                  <asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile" CssClass="btn btn-sp-secondary px-4" />
                </div>
              </div>
            </asp:Panel>
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
