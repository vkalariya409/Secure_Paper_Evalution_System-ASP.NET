
<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="theory-exam.aspx.cs" Inherits="Final_project.student.theory_exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Theory Examination Portal</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Theory Exam</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="row g-4">
        
        <!-- Question Paper Viewer -->
        <div class="col-lg-7">
          <div class="card p-4 h-100">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h5 class="fw-bold mb-0"><i class="bi bi-file-earmark-pdf-fill text-danger me-2"></i> Official Question Paper</h5>
              <button class="btn btn-sm btn-sp-secondary" onclick="alert('Downloading Official Question Paper PDF...')">
                <i class="bi bi-download me-1"></i> Download PDF
              </button>
            </div>
            
            <div class="p-4 bg-light rounded-3 border font-monospace text-dark" style="min-height: 350px;">
              <div class="text-center border-bottom pb-3 mb-3">
                <h6 class="fw-bold mb-0">DEPARTMENT OF COMPUTER APPLICATIONS</h6>
                <p class="small mb-0">BCA Semester 3 Examination 2026</p>
                <strong class="small text-primary">Subject: ASP.NET Web Development (BCA-201)</strong>
              </div>
              
              <h6>SECTION A (Attempt All Questions)</h6>
              <ol class="small">
                <li class="mb-2">Explain ASP.NET Page Lifecycle events in sequential order. (10 Marks)</li>
                <li class="mb-2">Differentiate between SessionState, ViewState, and ApplicationState. (10 Marks)</li>
                <li class="mb-2">Write C# code to connect to SQL Server database using SqlConnection & SqlCommand. (15 Marks)</li>
              </ol>
            </div>
          </div>
        </div>

        <!-- Answer Submission Form -->
        <div class="col-lg-5">
          <div class="card p-4 h-100">
            <h5 class="fw-bold mb-3"><i class="bi bi-cloud-arrow-up-fill text-primary me-2"></i> Answer Sheet Submission</h5>

            <%-- ASP.NET Panel instead of HTML Form --%>
            <asp:Panel ID="pnlAnswerSubmission" runat="server">
              <div class="mb-3">
                <%-- ASP.NET Label --%>
                <asp:Label ID="lblAnswerFile" runat="server" Text="Upload Answer PDF / DOC" CssClass="form-label fw-semibold"></asp:Label>

                <%-- ASP.NET FileUpload --%>
                <asp:FileUpload ID="fuAnswerFile" runat="server" CssClass="form-control" accept=".pdf,.doc,.docx" />
                <div class="form-text small">Accepted Formats: PDF, DOC, DOCX (Max 25MB)</div>
              </div>

              <div class="mb-3">
                <%-- ASP.NET Label --%>
                <asp:Label ID="lblStudentNotes" runat="server" Text="Student Notes / Comments" CssClass="form-label fw-semibold"></asp:Label>

                <%-- ASP.NET Multiline TextBox --%>
                <asp:TextBox ID="txtStudentNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Enter optional notes for the evaluator..."></asp:TextBox>
              </div>

              <div class="d-grid gap-2 mt-4">
                <button type="button" class="btn btn-sp-outline" onclick="alert('Previewing uploaded answer file...')"><i class="bi bi-eye"></i> Preview Upload</button>

                <%-- ASP.NET Submit Button --%>
                <asp:Button ID="btnSubmitTheory" runat="server" Text="Submit Theory Answer Sheet" CssClass="btn btn-sp-primary py-2.5 fw-bold" />
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
</asp:Content>
