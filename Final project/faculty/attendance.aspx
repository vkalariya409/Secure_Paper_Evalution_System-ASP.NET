
<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Final_project.faculty.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Attendance Management</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Attendance</li>
          </ol>
        </nav>
      </div>
      <%-- ASP.NET Save Attendance Button --%>
      <asp:Button ID="btnSaveAttendance" runat="server" Text="Save Attendance" CssClass="btn btn-sp-primary" OnClientClick="alert('Attendance saved successfully!'); return false;" />
    </div>

    <div class="sp-content">
      <div class="card p-3 mb-4">
        <div class="row g-3">
          <div class="col-md-4">
            <label class="form-label fw-bold">Select Date</label>
            <%-- ASP.NET Date TextBox --%>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" Text="2026-07-28"></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label class="form-label fw-bold">Subject</label>
            <%-- ASP.NET Subject DropDownList --%>
            <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-select">
              <asp:ListItem Value="BCA-201">BCA-201 - ASP.NET Web Development</asp:ListItem>
              <asp:ListItem Value="BCA-202">BCA-202 - C# Programming</asp:ListItem>
            </asp:DropDownList>
          </div>
          <div class="col-md-4">
            <label class="form-label fw-bold">Batch</label>
            <%-- ASP.NET Batch TextBox --%>
            <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Text="2024-2027"></asp:TextBox>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Roll No</th>
                  <th>Student Name</th>
                  <th>Department</th>
                  <th>Overall %</th>
                  <th>Mark Today</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>ENR-001</td>
                  <td class="fw-bold">Alex Rivera</td>
                  <td>BCA</td>
                  <td><span class="badge bg-success">94%</span></td>
                  <td>
                    <div class="btn-group" role="group">
                      <%-- ASP.NET Present RadioButton --%>
                      <asp:RadioButton ID="rbPresent1" runat="server" GroupName="att1" CssClass="btn-check" Checked="true" />
                      <label class="btn btn-outline-success btn-sm" for="rbPresent1">Present</label>
                      <%-- ASP.NET Absent RadioButton --%>
                      <asp:RadioButton ID="rbAbsent1" runat="server" GroupName="att1" CssClass="btn-check" />
                      <label class="btn btn-outline-danger btn-sm" for="rbAbsent1">Absent</label>
                    </div>
                  </td>
                </tr>

                <tr>
                  <td>ENR-002</td>
                  <td class="fw-bold">Emily Watson</td>
                  <td>BCA</td>
                  <td><span class="badge bg-success">91%</span></td>
                  <td>
                    <div class="btn-group" role="group">
                      <%-- ASP.NET Present RadioButton --%>
                      <asp:RadioButton ID="rbPresent2" runat="server" GroupName="att2" CssClass="btn-check" Checked="true" />
                      <label class="btn btn-outline-success btn-sm" for="rbPresent2">Present</label>
                      <%-- ASP.NET Absent RadioButton --%>
                      <asp:RadioButton ID="rbAbsent2" runat="server" GroupName="att2" CssClass="btn-check" />
                      <label class="btn btn-outline-danger btn-sm" for="rbAbsent2">Absent</label>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
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
