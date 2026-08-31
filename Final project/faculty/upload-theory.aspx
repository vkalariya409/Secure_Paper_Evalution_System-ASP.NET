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
        <form onsubmit="event.preventDefault(); alert('Theory Question Paper uploaded successfully and schedule locked!');">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Department</label>
              <select class="form-select" id="spDepartmentSelect" required>
                <option value="BCA">BCA</option>
                <option value="MCA">MCA</option>
                <option value="BBA">BBA</option>
                <option value="B.Tech">B.Tech</option>
              </select>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Semester</label>
              <select class="form-select" required>
                <option value="Semester 3" selected>Semester 3</option>
                <option value="Semester 4">Semester 4</option>
              </select>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Batch</label>
              <input type="text" class="form-control" value="2024-2027">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Subject</label>
              <select class="form-select" id="spSubjectSelect" required>
                <option value="BCA-201">BCA-201 - ASP.NET Web Development</option>
              </select>
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Question Paper Document (PDF / DOC)</label>
              <input type="file" class="form-control" accept=".pdf,.doc,.docx" required>
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Exam Date & Lock Time</label>
              <input type="datetime-local" class="form-control" value="2026-08-05T10:00" required>
            </div>

            <div class="col-md-4">
              <label class="form-label fw-semibold">Duration (Minutes)</label>
              <input type="number" class="form-control" value="180" min="30">
            </div>
            <div class="col-md-4">
              <label class="form-label fw-semibold">Total Marks</label>
              <input type="number" class="form-control" value="100">
            </div>
            <div class="col-md-4">
              <label class="form-label fw-semibold">Passing Marks</label>
              <input type="number" class="form-control" value="40">
            </div>

            <div class="col-12">
              <label class="form-label fw-semibold">Special Instructions for Candidates</label>
              <textarea class="form-control" rows="4" placeholder="Enter rules, allowed tools, and submission deadlines..."></textarea>
            </div>

            <div class="col-12 mt-4">
              <button type="submit" class="btn btn-sp-primary px-5 py-2.5 fw-bold">
                <i class="bi bi-file-earmark-arrow-up-fill me-2"></i> Upload & Schedule Theory Paper
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>
 </asp:Content>

