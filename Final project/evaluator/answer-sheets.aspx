<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="answer-sheets.aspx.cs" Inherits="Final_project.evaluator.answer_sheets" %>
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
        <h1 class="sp-page-title">Submitted Answer Scripts Queue</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Answer Sheets</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Script ID</th>
                  <th>Student Enrollment</th>
                  <th>Subject</th>
                  <th>Submission Date</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="fw-bold text-primary">SCR-9901</td>
                  <td>ENR-2024-001 (Alex Rivera)</td>
                  <td>BCA-201 (ASP.NET)</td>
                  <td>July 28, 11:30 AM</td>
                  <td><span class="badge badge-sp warning">Pending Review</span></td>
                  <td><a href="paper-evaluation.html" class="btn btn-sm btn-warning text-dark fw-bold"><i class="bi bi-pencil-square me-1"></i> Open Split-Screen Evaluator</a></td>
                </tr>

                <tr>
                  <td class="fw-bold text-primary">SCR-9902</td>
                  <td>ENR-2024-002 (Emily Watson)</td>
                  <td>BCA-201 (ASP.NET)</td>
                  <td>July 28, 11:45 AM</td>
                  <td><span class="badge badge-sp success">Graded (86/100)</span></td>
                  <td><a href="paper-evaluation.html" class="btn btn-sm btn-sp-outline"><i class="bi bi-eye"></i> View Evaluation</a></td>
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

