
<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="upload-theory.aspx.cs" Inherits="Final_project.faculty.upload_theory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Upload Theory Question Paper</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Upload Theory Paper</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-4">
        <%-- ASP.NET Theory Paper Upload Form --%>
        <div>
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Department</label>
              <%-- ASP.NET Department DropDownList --%>
              <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-select" required="required">
                <asp:ListItem Value="BCA">BCA</asp:ListItem>
                <asp:ListItem Value="MCA">MCA</asp:ListItem>
                <asp:ListItem Value="BBA">BBA</asp:ListItem>
                <asp:ListItem Value="B.Tech">B.Tech</asp:ListItem>
              </asp:DropDownList>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Semester</label>
              <%-- ASP.NET Semester DropDownList --%>
              <asp:DropDownList ID="ddlSemester" runat="server" CssClass="form-select" required="required">
                <asp:ListItem Value="Semester 3" Selected="True">Semester 3</asp:ListItem>
                <asp:ListItem Value="Semester 4">Semester 4</asp:ListItem>
              </asp:DropDownList>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Batch</label>
              <%-- ASP.NET Batch TextBox --%>
              <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Text="2024-2027"></asp:TextBox>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Subject</label>
              <%-- ASP.NET Subject DropDownList --%>
              <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-select" required="required">
                <asp:ListItem Value="BCA-201">BCA-201 - ASP.NET Web Development</asp:ListItem>
              </asp:DropDownList>
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Question Paper Document (PDF / DOC)</label>
              <%-- ASP.NET FileUpload Control --%>
              <asp:FileUpload ID="fuQuestionPaper" runat="server" CssClass="form-control" accept=".pdf,.doc,.docx" />
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Exam Date & Lock Time</label>
              <%-- ASP.NET Exam Date and Time TextBox --%>
              <asp:TextBox ID="txtExamDateTime" runat="server" TextMode="DateTimeLocal" CssClass="form-control" Text="2026-08-05T10:00" required="required"></asp:TextBox>
            </div>

            <div class="col-md-4">
              <label class="form-label fw-semibold">Duration (Minutes)</label>
              <%-- ASP.NET Duration TextBox --%>
              <asp:TextBox ID="txtDuration" runat="server" TextMode="Number" CssClass="form-control" Text="180" min="30"></asp:TextBox>
            </div>
            <div class="col-md-4">
              <label class="form-label fw-semibold">Total Marks</label>
              <%-- ASP.NET Total Marks TextBox --%>
              <asp:TextBox ID="txtTotalMarks" runat="server" TextMode="Number" CssClass="form-control" Text="100"></asp:TextBox>
            </div>
            <div class="col-md-4">
              <label class="form-label fw-semibold">Passing Marks</label>
              <%-- ASP.NET Passing Marks TextBox --%>
              <asp:TextBox ID="txtPassingMarks" runat="server" TextMode="Number" CssClass="form-control" Text="40"></asp:TextBox>
            </div>

            <div class="col-12">
              <label class="form-label fw-semibold">Special Instructions for Candidates</label>
              <%-- ASP.NET Special Instructions TextBox --%>
              <asp:TextBox ID="txtInstructions" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Enter rules, allowed tools, and submission deadlines..."></asp:TextBox>
            </div>

            <div class="col-12 mt-4">
              <%-- ASP.NET Upload and Schedule Button --%>
              <asp:Button ID="btnUploadTheory" runat="server" Text="Upload & Schedule Theory Paper" CssClass="btn btn-sp-primary px-5 py-2.5 fw-bold" OnClientClick="alert('Theory Question Paper uploaded successfully and schedule locked!'); return false;" />
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
