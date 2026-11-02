
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
            <%-- ASP.NET Department DropDownList --%>
            <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-select">
              <asp:ListItem Value="BCA" Selected="True">BCA (Bachelor of Computer Applications)</asp:ListItem>
              <asp:ListItem Value="MCA">MCA (Master of Computer Applications)</asp:ListItem>
              <asp:ListItem Value="BBA">BBA (Bachelor of Business Admin)</asp:ListItem>
              <asp:ListItem Value="MBA">MBA (Master of Business Admin)</asp:ListItem>
              <asp:ListItem Value="B.Tech">B.Tech (Computer Science)</asp:ListItem>
              <asp:ListItem Value="Pharmacy">Pharmacy</asp:ListItem>
              <asp:ListItem Value="Nursing">Nursing</asp:ListItem>
            </asp:DropDownList>
          </div>
          <div class="col-md-6">
            <label class="form-label fw-bold mb-1">Semester</label>
            <%-- ASP.NET Semester DropDownList --%>
            <asp:DropDownList ID="ddlSemester" runat="server" CssClass="form-select">
              <asp:ListItem Value="All">All Active Semesters</asp:ListItem>
              <asp:ListItem Value="1">Semester 1</asp:ListItem>
              <asp:ListItem Value="2">Semester 2</asp:ListItem>
              <asp:ListItem Value="3" Selected="True">Semester 3</asp:ListItem>
            </asp:DropDownList>
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
