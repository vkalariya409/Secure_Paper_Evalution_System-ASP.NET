<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="subjects.aspx.cs" Inherits="Final_project.evaluator.subjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">

  <div class="sp-main-wrapper">
    <header class="sp-navbar">
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-sm btn-light d-lg-none sp-sidebar-toggler"><i class="bi bi-list fs-5"></i></button>
        <div class="sp-nav-search"><i class="bi bi-search"></i>
          <%-- ASP.NET Search TextBox --%>
          <asp:TextBox ID="txtSearch" runat="server" placeholder="Search..."></asp:TextBox>
        </div>
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
        <h1 class="sp-page-title">Assigned Evaluation Subjects</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Subjects</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="row g-4">
        <div class="col-md-6">
          <div class="card p-3">
            <div class="card-body">
              <span class="badge bg-primary mb-2">BCA-201</span>
              <h4 class="fw-bold">ASP.NET Web Development</h4>
              <p class="text-muted small">Total Answer Sheets: 42 | Pending Evaluation: 4</p>
              <a href="paper-evaluation.html" class="btn btn-warning text-dark fw-bold">Evaluate Papers &rarr;</a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card p-3">
            <div class="card-body">
              <span class="badge bg-secondary mb-2">BCA-202</span>
              <h4 class="fw-bold">C# Programming</h4>
              <p class="text-muted small">Total Answer Sheets: 38 | Pending Evaluation: 10</p>
              <a href="paper-evaluation.html" class="btn btn-warning text-dark fw-bold">Evaluate Papers &rarr;</a>
            </div>
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