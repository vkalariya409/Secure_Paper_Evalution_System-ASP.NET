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
      <button class="btn btn-sp-primary" onclick="alert('Attendance saved successfully!')"><i class="bi bi-check-all me-1"></i> Save Attendance</button>
    </div>

    <div class="sp-content">
      <div class="card p-3 mb-4">
        <div class="row g-3">
          <div class="col-md-4">
            <label class="form-label fw-bold">Select Date</label>
            <input type="date" class="form-control" value="2026-07-28">
          </div>
          <div class="col-md-4">
            <label class="form-label fw-bold">Subject</label>
            <select class="form-select">
              <option value="BCA-201">BCA-201 - ASP.NET Web Development</option>
              <option value="BCA-202">BCA-202 - C# Programming</option>
            </select>
          </div>
          <div class="col-md-4">
            <label class="form-label fw-bold">Batch</label>
            <input type="text" class="form-control" value="2024-2027">
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
                      <input type="radio" class="btn-check" name="att1" id="p1" checked>
                      <label class="btn btn-outline-success btn-sm" for="p1">Present</label>
                      <input type="radio" class="btn-check" name="att1" id="a1">
                      <label class="btn btn-outline-danger btn-sm" for="a1">Absent</label>
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
                      <input type="radio" class="btn-check" name="att2" id="p2" checked>
                      <label class="btn btn-outline-success btn-sm" for="p2">Present</label>
                      <input type="radio" class="btn-check" name="att2" id="a2">
                      <label class="btn btn-outline-danger btn-sm" for="a2">Absent</label>
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

