<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="Final_project.faculty.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
                  
    <div class="sp-page-header">
      <div>
        <h1 class="sp-page-title">Student Roster</h1>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Students</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="sp-content">
      <div class="card">
        <div class="card-header border-0 pb-0">
          <h5 class="fw-bold"><i class="bi bi-people-fill text-primary me-2"></i> Enrolled Students</h5>
        </div>
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table align-middle">
              <thead>
                <tr>
                  <th>Photo & Name</th>
                  <th>Enrollment No.</th>
                  <th>Department</th>
                  <th>Sem & Batch</th>
                  <th>Contact Info</th>
                  <th>Attendance</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="d-flex align-items-center gap-2">
                      <img src="https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?auto=format&fit=crop&w=100&q=80" class="sp-avatar">
                      <div>
                        <div class="fw-bold">Alex Rivera</div>
                        <span class="text-muted extra-small">BCA Student</span>
                      </div>
                    </div>
                  </td>
                  <td class="fw-semibold text-primary">ENR-2024-001</td>
                  <td>BCA</td>
                  <td>Sem 3 (2024-27)</td>
                  <td>
                    <div class="small">+1 555-0192</div>
                    <div class="text-muted extra-small">alex.r@univ.edu</div>
                  </td>
                  <td><span class="badge bg-success">94%</span></td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline" data-bs-toggle="modal" data-bs-target="#studentModal">
                      <i class="bi bi-eye"></i> View Profile
                    </button>
                  </td>
                </tr>

                <tr>
                  <td>
                    <div class="d-flex align-items-center gap-2">
                      <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" class="sp-avatar">
                      <div>
                        <div class="fw-bold">Emily Watson</div>
                        <span class="text-muted extra-small">BCA Student</span>
                      </div>
                    </div>
                  </td>
                  <td class="fw-semibold text-primary">ENR-2024-002</td>
                  <td>BCA</td>
                  <td>Sem 3 (2024-27)</td>
                  <td>
                    <div class="small">+1 555-0198</div>
                    <div class="text-muted extra-small">emily.w@univ.edu</div>
                  </td>
                  <td><span class="badge bg-success">91%</span></td>
                  <td><span class="badge badge-sp success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-sp-outline" data-bs-toggle="modal" data-bs-target="#studentModal">
                      <i class="bi bi-eye"></i> View Profile
                    </button>
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

<!-- View Student Profile Modal -->
<div class="modal fade" id="studentModal" tabindex="-1">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title fw-bold"><i class="bi bi-person-lines-fill me-2"></i> Student Details</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body text-center p-4">
        <img src="https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?auto=format&fit=crop&w=120&q=80" class="rounded-circle mb-3 border border-3 border-primary" style="width: 90px; height: 90px; object-fit: cover;">
        <h4 class="fw-bold mb-0">Alex Rivera</h4>
        <p class="text-muted small">Enrollment: ENR-2024-001 | BCA Department</p>
        
        <div class="row g-2 text-start mt-3">
          <div class="col-6 bg-light p-2 rounded"><strong>Semester:</strong> 3</div>
          <div class="col-6 bg-light p-2 rounded"><strong>Batch:</strong> 2024-2027</div>
          <div class="col-6 bg-light p-2 rounded"><strong>Phone:</strong> +1 555-0192</div>
          <div class="col-6 bg-light p-2 rounded"><strong>Attendance:</strong> 94%</div>
          <div class="col-12 bg-light p-2 rounded"><strong>Enrolled Subjects:</strong> HTML, CSS, JavaScript, ASP.NET, C#, SQL Server</div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</body>
</html>
 </asp:Content>

