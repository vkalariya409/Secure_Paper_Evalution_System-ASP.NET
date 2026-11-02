
<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="upload-practical.aspx.cs" Inherits="Final_project.faculty.upload_practical" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-content">
      <div class="card p-4">
        <%-- ASP.NET Practical Materials Upload Form --%>
        <div>
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Lab Manual (PDF)</label>
              <%-- ASP.NET Lab Manual FileUpload --%>
              <asp:FileUpload ID="fuLabManual" runat="server" CssClass="form-control" accept=".pdf" />
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Practical Assignment File (DOC / PDF)</label>
              <%-- ASP.NET Practical Assignment FileUpload --%>
              <asp:FileUpload ID="fuPracticalAssignment" runat="server" CssClass="form-control" accept=".pdf,.doc,.docx" />
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Starter Source Code Archive (ZIP / RAR)</label>
              <%-- ASP.NET Source Code Archive FileUpload --%>
              <asp:FileUpload ID="fuSourceCode" runat="server" CssClass="form-control" accept=".zip,.rar,.7z" />
            </div>
            <div class="col-md-6">
              <label class="form-label fw-semibold">Upload Reference PDF Guidelines</label>
              <%-- ASP.NET Reference Guidelines FileUpload --%>
              <asp:FileUpload ID="fuReferenceGuidelines" runat="server" CssClass="form-control" accept=".pdf" />
            </div>

            <div class="col-md-6">
              <label class="form-label fw-semibold">Final Submission Date & Time</label>
              <%-- ASP.NET Final Submission DateTime TextBox --%>
              <asp:TextBox ID="txtSubmissionDateTime" runat="server" TextMode="DateTimeLocal" CssClass="form-control" Text="2026-08-10T23:59"></asp:TextBox>
            </div>

            <div class="col-12">
              <label class="form-label fw-semibold">Lab Instructions & Guidelines</label>
              <%-- ASP.NET Lab Instructions TextBox --%>
              <asp:TextBox ID="txtLabInstructions" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Detail the steps for zip file submission and IDE requirements..."></asp:TextBox>
            </div>

            <div class="col-12 mt-4">
              <%-- ASP.NET Publish Practical Materials Button --%>
              <asp:Button ID="btnPublishPractical" runat="server" Text="Publish Practical Materials" CssClass="btn btn-sp-secondary px-5 py-2.5 fw-bold" OnClientClick="alert('Practical files uploaded and notified to students!'); return false;" />
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
