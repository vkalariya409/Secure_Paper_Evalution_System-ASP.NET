<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="Final_project.student.quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Live Online Quiz - SecurePaper Student</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body class="bg-body-tertiary">

  <!-- Quiz Sticky Header -->
  <header class="navbar bg-white border-bottom sticky-top py-2 px-4">
    <div class="container-fluid d-flex align-items-center justify-content-between">
      <div class="d-flex align-items-center gap-3">
        <a href="dashboard.html" class="btn btn-sm btn-outline-secondary"><i class="bi bi-arrow-left"></i> Exit Test</a>
        <h5 class="fw-bold mb-0 text-primary">ASP.NET Mid-Term Online Examination</h5>
      </div>
      
      <!-- Live Timer Badge -->
      <div class="d-flex align-items-center gap-3">
        <div class="bg-danger text-white px-3 py-1.5 rounded-pill font-monospace fw-bold d-flex align-items-center gap-2 shadow-sm">
          <i class="bi bi-clock-history"></i>
          <span>Time Left: </span>
          <span id="spQuizTimerDisplay">15:00</span>
        </div>
        <button class="btn btn-success fw-bold px-4" id="spSubmitQuizBtn" data-bs-toggle="modal" data-bs-target="#resultModal">
          <i class="bi bi-send-fill me-1"></i> Submit Test
        </button>
      </div>
    </div>
  </header>

  <div class="container-fluid py-4 px-4">
    <div class="row g-4">
      
      <!-- Left Side: Main Question Viewer -->
      <div class="col-lg-8">
        
        <!-- Progress Bar -->
        <div class="card p-3 mb-3">
          <div class="d-flex justify-content-between small font-monospace mb-1">
            <span>Quiz Progress</span>
            <span class="fw-bold text-primary">20% Completed</span>
          </div>
          <div class="progress" style="height: 8px;">
            <div class="progress-bar bg-primary" role="progressbar" style="width: 20%;"></div>
          </div>
        </div>

        <!-- Active Question Box -->
        <div class="card p-4 shadow-sm mb-3">
          <div class="d-flex align-items-center justify-content-between border-bottom pb-3 mb-3">
            <span class="badge bg-primary fs-6">Question 1 of 5</span>
            <span class="badge bg-light text-dark border">Marks: 2.0</span>
          </div>

          <h5 class="fw-bold mb-4">Which directive is used to import a namespace in ASP.NET Web Forms (.aspx)?</h5>

          <div class="d-grid gap-3">
            <label class="p-3 border rounded-3 d-flex align-items-center gap-3 bg-light cursor-pointer">
              <input type="radio" name="quizOpt" class="form-check-input fs-5" checked>
              <div><strong>A.</strong> &lt;%@ Import Namespace="System.Data" %&gt;</div>
            </label>

            <label class="p-3 border rounded-3 d-flex align-items-center gap-3 bg-light cursor-pointer">
              <input type="radio" name="quizOpt" class="form-check-input fs-5">
              <div><strong>B.</strong> &lt;%@ Register TagPrefix="Sys" %&gt;</div>
            </label>

            <label class="p-3 border rounded-3 d-flex align-items-center gap-3 bg-light cursor-pointer">
              <input type="radio" name="quizOpt" class="form-check-input fs-5">
              <div><strong>C.</strong> &lt;%@ Assembly Name="System" %&gt;</div>
            </label>

            <label class="p-3 border rounded-3 d-flex align-items-center gap-3 bg-light cursor-pointer">
              <input type="radio" name="quizOpt" class="form-check-input fs-5">
              <div><strong>D.</strong> &lt;%@ Page Language="C#" %&gt;</div>
            </label>
          </div>
        </div>

        <!-- Navigation Buttons -->
        <div class="d-flex justify-content-between">
          <button class="btn btn-sp-outline px-4" disabled><i class="bi bi-chevron-left"></i> Previous</button>
          <div class="d-flex gap-2">
            <button class="btn btn-warning text-white font-semibold"><i class="bi bi-bookmark-fill"></i> Mark for Review</button>
            <button class="btn btn-sp-primary px-4">Next <i class="bi bi-chevron-right"></i></button>
          </div>
        </div>

      </div>

      <!-- Right Side: Question Palette -->
      <div class="col-lg-4">
        <div class="card p-4 shadow-sm">
          <h6 class="fw-bold mb-3"><i class="bi bi-grid-3x3-gap-fill text-primary me-2"></i> Question Palette</h6>
          
          <div class="sp-quiz-palette mb-4">
            <div class="sp-palette-btn answered">1</div>
            <div class="sp-palette-btn current">2</div>
            <div class="sp-palette-btn review">3</div>
            <div class="sp-palette-btn">4</div>
            <div class="sp-palette-btn">5</div>
          </div>

          <hr>

          <h6 class="fw-bold small text-muted mb-2">Palette Legend</h6>
          <div class="d-flex flex-wrap gap-2 small">
            <span class="badge bg-success"><i class="bi bi-check-circle me-1"></i> Answered (1)</span>
            <span class="badge bg-primary"><i class="bi bi-circle me-1"></i> Current (1)</span>
            <span class="badge bg-warning"><i class="bi bi-bookmark me-1"></i> Review (1)</span>
            <span class="badge bg-secondary"><i class="bi bi-dash-circle me-1"></i> Unanswered (2)</span>
          </div>
        </div>
      </div>

    </div>
  </div>

  <!-- Result Popup Modal -->
  <div class="modal fade" id="resultModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content text-center p-4">
        <div class="p-3 bg-success-subtle text-success rounded-circle mx-auto mb-3" style="width: 70px; height: 70px;">
          <i class="bi bi-trophy-fill fs-1"></i>
        </div>
        <h3 class="fw-extrabold text-success">Quiz Submitted Successfully!</h3>
        <p class="text-muted">Your online examination response has been stored and scored.</p>
        
        <div class="bg-light p-3 rounded-3 mb-4">
          <div class="row g-2">
            <div class="col-6 text-start"><strong>Total Score:</strong> 18 / 20</div>
            <div class="col-6 text-end"><strong>Grade:</strong> A+</div>
            <div class="col-6 text-start"><strong>Percentage:</strong> 90.0%</div>
            <div class="col-6 text-end"><strong>Status:</strong> Passed</div>
          </div>
        </div>

        <a href="results.html" class="btn btn-sp-primary py-2.5 fw-bold">View Detailed Marksheet</a>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>

</asp:Content>

