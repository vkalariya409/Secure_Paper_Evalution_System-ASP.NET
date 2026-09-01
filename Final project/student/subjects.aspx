<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="subjects.aspx.cs" Inherits="Final_project.student.subjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
       <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">My Subjects & Study Material</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
            <li class="breadcrumb-item active">Subjects</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="row g-4">
        
        <!-- Subject Card 1 -->
        <div class="col-md-6">
          <div class="card h-100 p-3">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-2">
                <span class="badge bg-primary">BCA-201</span>
                <span class="text-muted small"><i class="bi bi-person-circle"></i> Faculty: Dr. Sarah Jenkins</span>
              </div>
              <h4 class="fw-bold">ASP.NET Web Development</h4>
              <p class="text-muted small">Learn C#, ASP.NET Web Forms, Server Controls, Page Lifecycle, Session State, and SQL Server connectivity.</p>
              
              <div class="p-3 bg-light rounded-3 mb-3 small">
                <div class="d-flex justify-content-between mb-1">
                  <span><i class="bi bi-folder-fill text-warning me-1"></i> Study Material: 4 PDFs</span>
                  <a href="#" class="text-primary" onclick="alert('Downloading Study Material PDF...')">Download</a>
                </div>
                <div class="d-flex justify-content-between mb-1">
                  <span><i class="bi bi-file-earmark-code-fill text-info me-1"></i> Practical Files: 2 Assignments</span>
                  <a href="practical.aspx" class="text-primary">Submit</a>
                </div>
                <div class="d-flex justify-content-between">
                  <span><i class="bi bi-megaphone-fill text-danger me-1"></i> Announcement: Mid-Term Quiz Active</span>
                  <span class="text-success fw-bold">Live</span>
                </div>
              </div>

              <!-- Required Spec Buttons -->
              <div class="d-flex flex-wrap gap-2">
                <a href="quiz.aspx" class="btn btn-sm btn-sp-primary"><i class="bi bi-patch-question me-1"></i> Quiz Button</a>
                <a href="theory-exam.aspx" class="btn btn-sm btn-sp-secondary"><i class="bi bi-file-earmark-pdf me-1"></i> Theory Paper Button</a>
                <a href="practical.aspx" class="btn btn-sm btn-sp-outline"><i class="bi bi-code-slash me-1"></i> Practical Submission Button</a>
              </div>
            </div>
          </div>
        </div>

        <!-- Subject Card 2 -->
        <div class="col-md-6">
          <div class="card h-100 p-3">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-2">
                <span class="badge bg-primary">BCA-202</span>
                <span class="text-muted small"><i class="bi bi-person-circle"></i> Faculty: Prof. Alan Turing</span>
              </div>
              <h4 class="fw-bold">C# Object Oriented Programming</h4>
              <p class="text-muted small">Classes, Inheritance, Polymorphism, Delegates, Events, Lambda Expressions & Exception Handling.</p>
              
              <div class="p-3 bg-light rounded-3 mb-3 small">
                <div class="d-flex justify-content-between mb-1">
                  <span><i class="bi bi-folder-fill text-warning me-1"></i> Study Material: 6 PDFs</span>
                  <a href="#" class="text-primary" onclick="alert('Downloading Study Material PDF...')">Download</a>
                </div>
                <div class="d-flex justify-content-between mb-1">
                  <span><i class="bi bi-file-earmark-code-fill text-info me-1"></i> Practical Files: 3 Assignments</span>
                  <a href="practical.aspx" class="text-primary">Submit</a>
                </div>
                <div class="d-flex justify-content-between">
                  <span><i class="bi bi-megaphone-fill text-danger me-1"></i> Announcement: Theory Exam Aug 05</span>
                  <span class="text-muted">Upcoming</span>
                </div>
              </div>

              <div class="d-flex flex-wrap gap-2">
                <a href="quiz.aspx" class="btn btn-sm btn-sp-primary"><i class="bi bi-patch-question me-1"></i> Quiz Button</a>
                <a href="theory-exam.aspx" class="btn btn-sm btn-sp-secondary"><i class="bi bi-file-earmark-pdf me-1"></i> Theory Paper Button</a>
                <a href="practical.aspx" class="btn btn-sm btn-sp-outline"><i class="bi bi-code-slash me-1"></i> Practical Submission Button</a>
              </div>
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

