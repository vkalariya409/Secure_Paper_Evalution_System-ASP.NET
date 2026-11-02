
<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="practical.aspx.cs" Inherits="Final_project.student.practical" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
   
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Practical Project Submission</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Practical Submission</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-4">
        <h5 class="fw-bold mb-3"><i class="bi bi-file-earmark-zip-fill text-warning me-2"></i> Submit Practical Lab Code & Project</h5>

        <%-- ASP.NET Panel instead of HTML Form --%>
        <asp:Panel ID="pnlPractical" runat="server">
          <div class="row g-3">
            <div class="col-md-6">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblSubjectCourse" runat="server" Text="Subject Course" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET DropDownList --%>
              <asp:DropDownList ID="ddlSubjectCourse" runat="server" CssClass="form-select" required="required">
                <asp:ListItem Value="BCA-201">BCA-201 - ASP.NET Web Development</asp:ListItem>
                <asp:ListItem Value="BCA-202">BCA-202 - C# Programming</asp:ListItem>
                <asp:ListItem Value="BCA-203">BCA-203 - SQL Server Database</asp:ListItem>
              </asp:DropDownList>
            </div>
            <div class="col-md-6">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblZipArchive" runat="server" Text="Upload ZIP Archive (Visual Studio Solution / Code)" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET FileUpload --%>
              <asp:FileUpload ID="fuZipArchive" runat="server" CssClass="form-control" accept=".zip,.rar,.7z" />
            </div>

            <div class="col-md-6">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblSourceFiles" runat="server" Text="Upload Individual Source Code Files (.cs, .aspx, .sql)" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET FileUpload --%>
              <asp:FileUpload ID="fuSourceFiles" runat="server" CssClass="form-control" accept=".cs,.aspx,.sql,.aspx,.css" AllowMultiple="true" />
            </div>

            <div class="col-md-6">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblScreenshots" runat="server" Text="Upload Execution Screenshots / Images" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET FileUpload --%>
              <asp:FileUpload ID="fuScreenshots" runat="server" CssClass="form-control" accept="image/*" AllowMultiple="true" />
            </div>

            <div class="col-12">
              <%-- ASP.NET Label --%>
              <asp:Label ID="lblComments" runat="server" Text="Comments & Compilation Notes" CssClass="form-label fw-semibold"></asp:Label>

              <%-- ASP.NET Multiline TextBox --%>
              <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Provide instructions to run your project solution..."></asp:TextBox>
            </div>

            <div class="col-12 mt-4">
              <%-- ASP.NET Submit Button --%>
              <asp:Button ID="btnSubmitPractical" runat="server" Text="Submit Practical Lab Solution" CssClass="btn btn-sp-secondary px-5 py-2.5 fw-bold" />
            </div>
          </div>
        </asp:Panel>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</asp:Content>
