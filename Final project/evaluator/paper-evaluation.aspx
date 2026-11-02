<%@ Page Title="" Language="C#" MasterPageFile="~/evaluator/evaluator.Master" AutoEventWireup="true" CodeBehind="paper-evaluation.aspx.cs" Inherits="Final_project.evaluator.paper_evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Split-Screen Paper Evaluator - SecurePaper</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

  <!-- Evaluator Top Control Bar -->
  <header class="navbar bg-dark text-white px-4 py-2 border-bottom">
    <div class="container-fluid d-flex align-items-center justify-content-between">
      <div class="d-flex align-items-center gap-3">
        <a href="answer-sheets.aspx" class="btn btn-sm btn-outline-light"><i class="bi bi-arrow-left"></i> Back to Queue</a>
        <span class="fw-bold fs-5 text-warning"><i class="bi bi-layout-split me-2"></i> Paper Evaluation Workspace</span>
        <span class="badge bg-secondary">Script ID: SCR-9901</span>
      </div>
      <div class="d-flex align-items-center gap-3 small">
        <span><strong>Student:</strong> Alex Rivera (ENR-2024-001)</span>
        <span><strong>Subject:</strong> BCA-201 ASP.NET</span>
        <button class="sp-icon-btn sp-theme-toggle" title="Toggle Theme"><i class="bi bi-moon-stars-fill"></i></button>
      </div>
    </div>
  </header>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="container-fluid py-3 px-4">

    <!-- Split Screen Container (Specs: Left Question Paper | Right Student Answer Sheet) -->
    <div class="sp-eval-container mb-3">

      <!-- Left Side Pane: Question Paper & Answer Key -->
      <div class="sp-eval-pane">
        <div class="sp-eval-pane-header bg-primary text-white">
          <span><i class="bi bi-file-earmark-text-fill me-2"></i> Question Paper Key (Left Pane)</span>
          <span class="badge bg-light text-primary">Total: 50 Marks</span>
        </div>
        <div class="sp-eval-pane-body">
          <div class="p-3 bg-light rounded-3 border mb-3">
            <h6 class="fw-bold text-primary">Q1. ASP.NET Page Lifecycle Events (10 Marks)</h6>
            <p class="small text-muted mb-0">Expected Answer: PreInit, Init, InitComplete, PreLoad, Load, Control Events, LoadComplete, PreRender, SaveStateComplete, Unload.</p>
          </div>

          <div class="p-3 bg-light rounded-3 border mb-3">
            <h6 class="fw-bold text-primary">Q2. SessionState vs ViewState vs ApplicationState (10 Marks)</h6>
            <p class="small text-muted mb-0">Expected Answer: ViewState is page-level client encrypted. SessionState is server-side per user session. ApplicationState is global to all app visitors.</p>
          </div>

          <div class="p-3 bg-light rounded-3 border mb-3">
            <h6 class="fw-bold text-primary">Q3. SQL Server Connection Code in C# (15 Marks)</h6>
            <p class="small text-muted mb-0">Expected Answer: Use System.Data.SqlClient, SqlConnection with connection string, SqlCommand with CommandText and ExecuteReader / ExecuteNonQuery inside using block.</p>
          </div>

          <div class="p-3 bg-light rounded-3 border">
            <h6 class="fw-bold text-primary">Q4. Master Pages and ContentPlaceHolders (15 Marks)</h6>
            <p class="small text-muted mb-0">Expected Answer: MasterPageFile directive, ContentPlaceHolder in Master, Content control in child .aspx page matching ContentPlaceHolderID.</p>
          </div>
        </div>
      </div>

      <!-- Right Side Pane: Student Submitted Answer Script -->
      <div class="sp-eval-pane">
        <div class="sp-eval-pane-header bg-secondary text-white">
          <span><i class="bi bi-file-earmark-pdf-fill me-2"></i> Student Answer Script (Right Pane)</span>
          <span class="badge bg-success">Uploaded: July 28</span>
        </div>
        <div class="sp-eval-pane-body bg-dark text-light font-monospace">
          <div class="p-3 bg-secondary-subtle text-dark rounded-3 mb-3 border">
            <h6 class="fw-bold mb-1">STUDENT ANSWER SHEET PDF VIEWER</h6>
            <span class="small text-muted">Alex_Rivera_BCA201_AnswerSheet.pdf (Page 1 of 4)</span>
          </div>

          <div class="p-3 bg-body-tertiary text-dark rounded-3 mb-3">
            <p class="fw-bold text-primary">Ans 1. ASP.NET Lifecycle Events:</p>
            <p class="small">1. PreInit: Initializes controls & master page properties.<br>2. Init: Controls loaded.<br>3. Load: Page_Load method executes.<br>4. PreRender: Last chance before HTML rendering.<br>5. Unload: Cleanup memory.</p>
          </div>

          <div class="p-3 bg-body-tertiary text-dark rounded-3 mb-3">
            <p class="fw-bold text-primary">Ans 2. State Management Comparison:</p>
            <p class="small">ViewState is stored in hidden field __VIEWSTATE. Session stores user login token on IIS web server memory. Application variable stores global visitor hit counter.</p>
          </div>

          <div class="p-3 bg-body-tertiary text-dark rounded-3">
            <p class="fw-bold text-primary">Ans 3. C# SQL Connection:</p>
            <p class="small">using(SqlConnection con = new SqlConnection("Server=localhost;Database=SecurePaper;Trusted_Connection=True;")) { con.Open(); SqlCommand cmd = new SqlCommand("SELECT * FROM Students", con); }</p>
          </div>
        </div>
      </div>

    </div>

    <!-- Below Marks Entry & Final Grade Summary Toolbar -->
    <div class="card p-4 shadow-lg border-primary">
      <h5 class="fw-bold mb-3"><i class="bi bi-calculator-fill text-primary me-2"></i> Paper Evaluation Marks Entry & Result Summary</h5>

      <%-- ASP.NET Evaluation Form --%>
      <asp:Panel ID="pnlEvaluation" runat="server">
        <div class="row g-3">

          <div class="col-sm-6 col-md-3">
            <label class="form-label fw-bold small">Q1 Marks (Max 10)</label>
            <%-- ASP.NET Q1 Marks TextBox --%>
            <asp:TextBox ID="txtQ1Marks" runat="server" TextMode="Number" step="0.5" CssClass="form-control sp-eval-mark-input" Text="10" min="0" max="10"></asp:TextBox>
          </div>

          <div class="col-sm-6 col-md-3">
            <label class="form-label fw-bold small">Q2 Marks (Max 10)</label>
            <%-- ASP.NET Q2 Marks TextBox --%>
            <asp:TextBox ID="txtQ2Marks" runat="server" TextMode="Number" step="0.5" CssClass="form-control sp-eval-mark-input" Text="10" min="0" max="10"></asp:TextBox>
          </div>

          <div class="col-sm-6 col-md-3">
            <label class="form-label fw-bold small">Q3 Marks (Max 15)</label>
            <%-- ASP.NET Q3 Marks TextBox --%>
            <asp:TextBox ID="txtQ3Marks" runat="server" TextMode="Number" step="0.5" CssClass="form-control sp-eval-mark-input" Text="13.5" min="0" max="15"></asp:TextBox>
          </div>

          <div class="col-sm-6 col-md-3">
            <label class="form-label fw-bold small">Q4 Marks (Max 15)</label>
            <%-- ASP.NET Q4 Marks TextBox --%>
            <asp:TextBox ID="txtQ4Marks" runat="server" TextMode="Number" step="0.5" CssClass="form-control sp-eval-mark-input" Text="12.5" min="0" max="15"></asp:TextBox>
          </div>

          <div class="col-12">
            <div class="p-3 bg-primary-subtle text-primary rounded-3 d-flex flex-wrap align-items-center justify-content-between gap-3">
              <div>
                <span class="fs-5">Total Marks: <strong id="spEvalTotalScore" class="fs-4">46.0</strong> / 50</span>
              </div>
              <div>
                <span class="fs-5">Percentage: <strong id="spEvalPercentage" class="fs-4">92.0%</strong></span>
              </div>
              <div>
                <span class="fs-5">Calculated Grade: <strong id="spEvalGrade" class="fs-4">A+ (Excellent)</strong></span>
              </div>
              <div>
                <span class="badge bg-success fs-5 px-3 py-2">PASSED</span>
              </div>
            </div>
          </div>

          <div class="col-12">
            <label class="form-label fw-semibold">Evaluator Feedback & Official Remarks</label>
            <%-- ASP.NET Evaluator Feedback TextBox --%>
            <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Write remarks for student marksheet...">Exceptional understanding of ASP.NET Web Forms state management and database connectivity.</asp:TextBox>
          </div>

          <div class="col-12 text-end mt-3">
            <%-- ASP.NET Submit Evaluation Button --%>
            <asp:Button ID="btnSubmitEvaluation" runat="server" Text="Submit & Lock Evaluation" CssClass="btn btn-warning text-dark fw-bold btn-lg px-5" OnClientClick="alert('Evaluation submitted & final grade locked!'); window.location.href='answer-sheets.html'; return false;" />
          </div>

        </div>
      </asp:Panel>
    </div>

  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>

</asp:Content>