
<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="upload-quiz.aspx.cs" Inherits="Final_project.faculty.upload_quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
<div class="sp-page-header">
    <div>
        <h1 class="sp-page-title">Interactive Quiz Builder</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Upload Quiz</li>
            </ol>
        </nav>
    </div>
    <button type="button" class="btn btn-sp-secondary" data-bs-toggle="modal" data-bs-target="#previewQuizModal">
        <i class="bi bi-eye-fill me-1"></i> Preview Quiz
    </button>
</div>

<div class="sp-content">

    <!-- Selection Cascade -->
    <div class="card p-4 mb-4">
        <h5 class="fw-bold mb-3"><i class="bi bi-sliders text-primary me-2"></i> Exam Configuration</h5>
        <div class="row g-3">
            <div class="col-md-3">
                <label class="form-label fw-semibold">Department</label>
                <%-- ASP.NET Department DropDownList --%>
                <asp:DropDownList ID="spDepartmentSelect" runat="server" ClientIDMode="Static" CssClass="form-select">
                    <asp:ListItem Value="BCA">BCA</asp:ListItem>
                    <asp:ListItem Value="MCA">MCA</asp:ListItem>
                    <asp:ListItem Value="BBA">BBA</asp:ListItem>
                    <asp:ListItem Value="MBA">MBA</asp:ListItem>
                    <asp:ListItem Value="B.Tech">B.Tech</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-3">
                <label class="form-label fw-semibold">Semester</label>
                <%-- ASP.NET Semester DropDownList --%>
                <asp:DropDownList ID="ddlSemester" runat="server" CssClass="form-select">
                    <asp:ListItem Value="Sem 1">Semester 1</asp:ListItem>
                    <asp:ListItem Value="Sem 2">Semester 2</asp:ListItem>
                    <asp:ListItem Value="Sem 3" Selected="True">Semester 3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-3">
                <label class="form-label fw-semibold">Batch</label>
                <%-- ASP.NET Batch TextBox --%>
                <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Text="2024-2027"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <label class="form-label fw-semibold">Subject</label>
                <%-- ASP.NET Subject DropDownList --%>
                <asp:DropDownList ID="spSubjectSelect" runat="server" ClientIDMode="Static" CssClass="form-select">
                    <asp:ListItem Value="BCA-201">BCA-201 - ASP.NET Web Development</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-4">
                <label class="form-label fw-semibold">Quiz Title</label>
                <%-- ASP.NET Quiz Title TextBox --%>
                <asp:TextBox ID="txtQuizTitle" runat="server" CssClass="form-control" Text="ASP.NET Mid-Term Online Quiz 2026"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label class="form-label fw-semibold">Total Quiz Timer (Minutes)</label>
                <%-- ASP.NET Quiz Timer TextBox --%>
                <asp:TextBox ID="txtQuizTimer" runat="server" TextMode="Number" CssClass="form-control" Text="15" min="5" max="180"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label class="form-label fw-semibold">Passing Grade Marks</label>
                <%-- ASP.NET Passing Marks TextBox --%>
                <asp:TextBox ID="txtPassingMarks" runat="server" TextMode="Number" CssClass="form-control" Text="10" min="1"></asp:TextBox>
            </div>
        </div>
    </div>

    <!-- Question List Builder -->
    <div id="spQuestionsList">

        <!-- Default Question 1 -->
        <div class="card mb-4 sp-card question-item" id="qItem_1">
            <div class="card-header bg-light d-flex justify-content-between align-items-center">
                <span class="fw-bold text-primary"><i class="bi bi-question-circle-fill me-2"></i> Question #1</span>
                <button type="button" class="btn btn-sm btn-outline-danger" onclick="removeQuestion('qItem_1')">
                    <i class="bi bi-trash"></i> Remove
                </button>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label fw-semibold">Question Statement</label>
                    <%-- ASP.NET Question Statement TextBox --%>
                    <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control">Which directive is used to import a namespace in ASP.NET Web Forms (.aspx)?</asp:TextBox>
                </div>
                <div class="row g-3 mb-3">

                    <div class="col-md-6">
                        <label class="form-label text-muted small">Option A</label>
                        <div class="input-group">
                            <span class="input-group-text">A</span>
                            <%-- ASP.NET Option A TextBox --%>
                            <asp:TextBox ID="txtOptionA" runat="server" CssClass="form-control" Text="&lt;%@ Import Namespace='System.Data' %&gt;"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label text-muted small">Option B</label>
                        <div class="input-group">
                            <span class="input-group-text">B</span>
                            <%-- ASP.NET Option B TextBox --%>
                            <asp:TextBox ID="txtOptionB" runat="server" CssClass="form-control" Text="&lt;%@ Register TagPrefix='Sys' %&gt;"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label text-muted small">Option C</label>
                        <div class="input-group">
                            <span class="input-group-text">C</span>
                            <%-- ASP.NET Option C TextBox --%>
                            <asp:TextBox ID="txtOptionC" runat="server" CssClass="form-control" Text="&lt;%@ Assembly Name='System' %&gt;"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label text-muted small">Option D</label>
                        <div class="input-group">
                            <span class="input-group-text">D</span>
                            <%-- ASP.NET Option D TextBox --%>
                            <asp:TextBox ID="txtOptionD" runat="server" CssClass="form-control" Text="&lt;%@ Page Language='C#' %&gt;"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="row g-3">
                    <div class="col-md-4">
                        <label class="form-label fw-semibold">Correct Answer</label>
                        <%-- ASP.NET Correct Answer DropDownList --%>
                        <asp:DropDownList ID="ddlCorrectAnswer" runat="server" CssClass="form-select">
                            <asp:ListItem Value="A" Selected="True">Option A</asp:ListItem>
                            <asp:ListItem Value="B">Option B</asp:ListItem>
                            <asp:ListItem Value="C">Option C</asp:ListItem>
                            <asp:ListItem Value="D">Option D</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label fw-semibold">Marks</label>
                        <%-- ASP.NET Marks TextBox --%>
                        <asp:TextBox ID="txtMarks" runat="server" TextMode="Number" CssClass="form-control" Text="2"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label fw-semibold">Difficulty Level</label>
                        <%-- ASP.NET Difficulty Level DropDownList --%>
                        <asp:DropDownList ID="ddlDifficulty" runat="server" CssClass="form-select">
                            <asp:ListItem Value="Easy">Easy</asp:ListItem>
                            <asp:ListItem Value="Medium" Selected="True">Medium</asp:ListItem>
                            <asp:ListItem Value="Hard">Hard</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Action Buttons -->
    <div class="d-flex flex-wrap gap-3 mb-5">
        <button type="button" class="btn btn-sp-outline" id="spAddQuestionBtn">
            <i class="bi bi-plus-circle-fill me-1 text-primary"></i> Add Multiple Question
        </button>
        <button type="button" class="btn btn-sp-primary ms-auto" onclick="alert('Quiz successfully built and saved to course repository!')">
            <i class="bi bi-check-all me-1"></i> Save & Publish Quiz
        </button>
    </div>

</div>
</div>

<!-- Preview Quiz Modal -->
<div class="modal fade" id="previewQuizModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title fw-bold"><i class="bi bi-eye-fill me-2"></i> Quiz Preview - ASP.NET Mid-Term</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body p-4">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <span class="badge bg-secondary">Total Time: 15 Mins</span>
                    <span class="badge bg-success">Total Questions: 5</span>
                </div>
                <div class="card p-3 mb-3 bg-light">

                    <h6 class="fw-bold">
                        Q1. Which directive is used to import a namespace in ASP.NET Web Forms (.aspx)?
                    </h6>

                    <div class="form-check my-2">
                        <%-- ASP.NET Preview Option A RadioButton --%>
                        <asp:RadioButton ID="p1a" runat="server" GroupName="p1" ClientIDMode="Static" CssClass="form-check-input" />
                        <label class="form-check-label" for="p1a">
                            &lt;%@ Import Namespace='System.Data' %&gt;
                        </label>
                    </div>

                    <div class="form-check my-2">
                        <%-- ASP.NET Preview Option B RadioButton --%>
                        <asp:RadioButton ID="p1b" runat="server" GroupName="p1" ClientIDMode="Static" CssClass="form-check-input" />
                        <label class="form-check-label" for="p1b">
                            &lt;%@ Register TagPrefix='Sys' %&gt;
                        </label>
                    </div>

                    <div class="form-check my-2">
                        <%-- ASP.NET Preview Option C RadioButton --%>
                        <asp:RadioButton ID="p1c" runat="server" GroupName="p1" ClientIDMode="Static" CssClass="form-check-input" />
                        <label class="form-check-label" for="p1c">
                            &lt;%@ Assembly Name='System' %&gt;
                        </label>
                    </div>

                    <div class="form-check my-2">
                        <%-- ASP.NET Preview Option D RadioButton --%>
                        <asp:RadioButton ID="p1d" runat="server" GroupName="p1" ClientIDMode="Static" CssClass="form-check-input" />
                        <label class="form-check-label" for="p1d">
                            &lt;%@ Page Language='C#' %&gt;
                        </label>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close Preview</button>
                </div>
            </div>
        </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/main.js"></script>
</asp:Content>
