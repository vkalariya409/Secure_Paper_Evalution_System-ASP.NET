<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="subjects.aspx.cs" Inherits="Final_project.faculty.subjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Department Subjects</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Subjects</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <!-- Filter Bar -->
      <div class="card p-3 mb-4">
        <div class="row align-items-center g-3">
          <div class="col-md-6">
            <label class="form-label fw-bold mb-1">Filter by Department</label>
            <select class="form-select" id="spDepartmentSelect">
              <option value="BCA" selected>BCA (Bachelor of Computer Applications)</option>
              <option value="MCA">MCA (Master of Computer Applications)</option>
              <option value="BBA">BBA (Bachelor of Business Admin)</option>
              <option value="MBA">MBA (Master of Business Admin)</option>
              <option value="B.Tech">B.Tech (Computer Science)</option>
              <option value="Pharmacy">Pharmacy</option>
              <option value="Nursing">Nursing</option>
            </select>
          </div>
          <div class="col-md-6">
            <label class="form-label fw-bold mb-1">Semester</label>
            <select class="form-select">
              <option value="All">All Active Semesters</option>
              <option value="1">Semester 1</option>
              <option value="2">Semester 2</option>
              <option value="3" selected>Semester 3</option>
            </select>
          </div>
        </div>
      </div>

      <!-- Subjects Card Grid Container (populated by main.js) -->
      <div class="row" id="spSubjectsContainer">
        <!-- Default BCA items rendered by JS -->
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>
 </asp:Content>

