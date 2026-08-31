<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="upload-practical.aspx.cs" Inherits="Final_project.faculty.upload_practical" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-content">
      <div class="card p-4">
        <form onsubmit="event.preventDefault(); alert('Practical files uploaded and notified to students!');">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Lab Manual (PDF)</label>
              <input type="file" class="form-control" accept=".pdf">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Practical Assignment File (DOC / PDF)</label>
              <input type="file" class="form-control" accept=".pdf,.doc,.docx">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Starter Source Code Archive (ZIP / RAR)</label>
              <input type="file" class="form-control" accept=".zip,.rar,.7z">
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Reference PDF Guidelines</label>
              <input type="file" class="form-control" accept=".pdf">
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Final Submission Date & Time</label>
              <input type="datetime-local" class="form-control" value="2026-08-10T23:59">
            </div>

            <div class="col-12">
              <label class="form-label fw-semibold">Lab Instructions & Guidelines</label>
              <textarea class="form-control" rows="4" placeholder="Detail the steps for zip file submission and IDE requirements..."></textarea>
            </div>

            <div class="col-12 mt-4">
              <button type="submit" class="btn btn-sp-secondary px-5 py-2.5 fw-bold">
                <i class="bi bi-cloud-upload-fill me-2"></i> Publish Practical Materials
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

