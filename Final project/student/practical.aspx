<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="practical.aspx.cs" Inherits="Final_project.student.practical" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
   
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Practical Project Submission</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Practical Submission</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card p-4">
        <h5 class="fw-bold mb-3"><i class="bi bi-file-earmark-zip-fill text-warning me-2"></i> Submit Practical Lab Code & Project</h5>
        <form onsubmit="event.preventDefault(); alert('Practical lab project ZIP & source files submitted!');">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Subject Course</label>
              <select class="form-select" required>
                <option value="BCA-201">BCA-201 - ASP.NET Web Development</option>
                <option value="BCA-202">BCA-202 - C# Programming</option>
                <option value="BCA-203">BCA-203 - SQL Server Database</option>
              </select>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload ZIP Archive (Visual Studio Solution / Code)</label>
              <input type="file" class="form-control" accept=".zip,.rar,.7z" required>
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Individual Source Code Files (.cs, .aspx, .sql)</label>
              <input type="file" class="form-control" accept=".cs,.aspx,.sql,.html,.css" multiple>
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Execution Screenshots / Images</label>
              <input type="file" class="form-control" accept="image/*" multiple>
            </div>

            <div class="col-12">
              <label class="form-label fw-semibold">Comments & Compilation Notes</label>
              <textarea class="form-control" rows="3" placeholder="Provide instructions to run your project solution..."></textarea>
            </div>

            <div class="col-12 mt-4">
              <button type="submit" class="btn btn-sp-secondary px-5 py-2.5 fw-bold">
                <i class="bi bi-check-circle-fill me-2"></i> Submit Practical Lab Solution
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

