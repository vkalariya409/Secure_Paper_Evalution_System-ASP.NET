
<%@ Page Title="Create Account | SecurePaper" Language="C#" MasterPageFile="~/default_page.master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Final_project.registration" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="ContentFooter" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">

    <style>
        /* SecurePaper Registration - matches assets/css/style.css */
        .sp-register-section {
            min-height: 100vh;
            padding: 3.5rem 1rem;
            display: flex;
            align-items: center;
            background: radial-gradient(circle at 85% 15%, rgba(6, 182, 212, 0.10) 0%, transparent 38%), radial-gradient(circle at 10% 85%, rgba(79, 70, 229, 0.10) 0%, transparent 42%), var(--sp-bg-body, #f8fafc);
            font-family: 'Poppins', 'Plus Jakarta Sans', sans-serif;
            color: var(--sp-text-main, #0f172a);
        }

        .sp-register-section .container {
            max-width: 1000px;
        }

        .sp-register-card {
            width: 100%;
            max-width: 900px;
            margin: 0 auto;
            padding: 2.75rem;
            background: var(--sp-bg-surface, #ffffff);
            border: 1px solid var(--sp-border-color, #e2e8f0);
            border-radius: var(--sp-radius-lg, 20px);
            box-shadow: var(--sp-shadow-lg, 0 20px 30px -10px rgba(79, 70, 229, 0.12));
        }

        .sp-register-heading {
            text-align: center;
            margin-bottom: 2.25rem;
        }

        .sp-register-icon {
            width: 68px;
            height: 68px;
            margin: 0 auto 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 18px;
            color: #ffffff;
            font-size: 1.8rem;
            background: linear-gradient(135deg, #4f46e5 0%, #2563eb 55%, #06b6d4 100%);
            box-shadow: 0 8px 20px rgba(79, 70, 229, 0.25);
        }

        .sp-register-heading h2 {
            margin: 0 0 .55rem;
            color: var(--sp-text-main, #0f172a);
            font-family: 'Poppins', sans-serif;
            font-size: clamp(1.65rem, 3vw, 2rem);
            line-height: 1.3;
            font-weight: 800;
            letter-spacing: -0.6px;
        }

        .sp-register-heading p {
            margin: 0;
            color: var(--sp-text-muted, #64748b);
            font-size: .92rem;
            line-height: 1.7;
        }

        .sp-form-label {
            display: block;
            margin-bottom: .55rem;
            color: var(--sp-text-main, #0f172a);
            font-family: 'Poppins', sans-serif;
            font-size: .86rem;
            font-weight: 600;
        }

        .sp-form-control {
            display: block;
            width: 100%;
            min-height: 48px;
            padding: .7rem .95rem;
            border: 1px solid var(--sp-border-color, #e2e8f0);
            border-radius: var(--sp-radius-sm, 10px);
            background-color: var(--sp-bg-surface, #ffffff);
            color: var(--sp-text-main, #0f172a);
            font-family: 'Poppins', sans-serif;
            font-size: .88rem;
            line-height: 1.5;
            outline: none;
            box-shadow: none;
            transition: var(--sp-transition, all .25s ease);
        }

        .sp-form-control::placeholder {
            color: var(--sp-text-light, #94a3b8);
            opacity: 1;
        }

        .sp-form-control:focus {
            border-color: var(--sp-primary, #4f46e5);
            background-color: var(--sp-bg-surface, #ffffff);
            box-shadow: 0 0 0 4px rgba(79, 70, 229, .12);
        }

        select.sp-form-control {
            cursor: pointer;
        }

        .sp-form-group {
            margin-bottom: 1.25rem;
        }

        .sp-form-title {
            display: flex;
            align-items: center;
            gap: .55rem;
            margin: 1.8rem 0 1.25rem;
            padding-bottom: .8rem;
            border-bottom: 1px solid var(--sp-border-color, #e2e8f0);
            color: var(--sp-text-main, #0f172a);
            font-family: 'Poppins', sans-serif;
            font-size: 1.05rem;
            font-weight: 700;
        }

        .sp-form-title i {
            color: var(--sp-primary, #4f46e5);
            font-size: 1.1rem;
        }

        .sp-role-info {
            display: flex;
            align-items: flex-start;
            gap: .65rem;
            margin: .2rem 0 1.5rem;
            padding: 1rem 1.1rem;
            border: 1px solid rgba(79, 70, 229, .15);
            border-radius: var(--sp-radius-sm, 10px);
            background: var(--sp-primary-light, #e0e7ff);
            color: #3730a3;
            font-size: .82rem;
            line-height: 1.65;
        }

        .sp-role-info i {
            margin-top: .15rem;
            flex-shrink: 0;
        }

        .sp-register-btn {
            display: inline-flex;
            width: 100%;
            align-items: center;
            justify-content: center;
            gap: .55rem;
            margin-top: .5rem;
            padding: .9rem 1.5rem;
            border: 0;
            border-radius: var(--sp-radius-pill, 50px);
            background: linear-gradient(135deg, #4f46e5, #3730a3);
            color: #ffffff;
            font-family: 'Poppins', sans-serif;
            font-size: .95rem;
            font-weight: 700;
            box-shadow: 0 5px 16px rgba(79, 70, 229, .25);
            cursor: pointer;
            transition: var(--sp-transition, all .25s ease);
        }

        .sp-register-btn:hover {
            color: #ffffff;
            transform: translateY(-2px);
            box-shadow: 0 9px 22px rgba(79, 70, 229, .32);
        }

        .sp-register-btn:focus-visible {
            outline: 3px solid rgba(79, 70, 229, .25);
            outline-offset: 3px;
        }

        .sp-register-footer {
            margin-top: 1.5rem;
            color: var(--sp-text-muted, #64748b);
            text-align: center;
            font-size: .86rem;
        }

        .sp-register-footer a {
            color: var(--sp-primary, #4f46e5);
            font-weight: 700;
            text-decoration: none;
            transition: color .2s ease;
        }

        .sp-register-footer a:hover {
            color: var(--sp-primary-hover, #4338ca);
            text-decoration: underline;
        }

        .sp-role-form {
            display: none;
            animation: spFormFade .25s ease;
        }

        .sp-role-form.active {
            display: block;
        }

        @keyframes spFormFade {
            from {
                opacity: 0;
                transform: translateY(5px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 767.98px) {
            .sp-register-section {
                min-height: 100vh;
                padding: 2rem .75rem;
            }

            .sp-register-card {
                padding: 2rem 1.35rem;
                border-radius: 16px;
            }

            .sp-form-title {
                font-size: 1rem;
            }
        }

        @media (max-width: 420px) {
            .sp-register-card {
                padding: 1.5rem 1rem;
            }

            .sp-register-heading p {
                font-size: .82rem;
            }

            .sp-form-control {
                font-size: .84rem;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <section class="sp-register-section">

        <div class="container">

            <div class="sp-register-card">

                <!-- Registration Heading -->
                <div class="sp-register-heading">

                    <div class="sp-register-icon">
                        <i class="bi bi-person-plus-fill"></i>
                    </div>

                    <h2>Create Your Account</h2>

                    <p>Register with SecurePaper Examination Management System</p>

                </div>

                <!-- Role Selection -->
                <div class="sp-form-group">

                    <asp:Label
                        ID="lblRole"
                        runat="server"
                        AssociatedControlID="ddlRole"
                        CssClass="sp-form-label">
                        Select Your Role <span class="text-danger">*</span>
                    </asp:Label>

                    <asp:DropDownList
                        ID="ddlRole"
                        runat="server"
                        ClientIDMode="Static"
                        CssClass="sp-form-control"
                        onchange="changeRegistrationForm()">

                        <asp:ListItem Text="Student" Value="Student" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
                        <asp:ListItem Text="Evaluator" Value="Evaluator"></asp:ListItem>

                    </asp:DropDownList>

                </div>

                <div class="sp-role-info">
                    <i class="bi bi-info-circle-fill me-2"></i>
                    Your registration will be reviewed by the Administrator.
                    Login access will be available only after approval.
                </div>

                <!-- Common Information -->
                <div class="sp-form-title">
                    <i class="bi bi-person-circle me-2"></i>
                    Personal Information
                </div>

                <div class="row">

                    <div class="col-md-6">
                        <div class="sp-form-group">

                            <asp:Label ID="lblFullName" runat="server" AssociatedControlID="txtFullName" CssClass="sp-form-label">Full Name *</asp:Label>

                            <asp:TextBox
                                ID="txtFullName"
                                runat="server"
                                ClientIDMode="Static"
                                CssClass="sp-form-control"
                                placeholder="Enter your full name">
                            </asp:TextBox>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="sp-form-group">

                            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="sp-form-label">Email Address *</asp:Label>

                            <asp:TextBox
                                ID="txtEmail"
                                runat="server"
                                ClientIDMode="Static"
                                TextMode="Email"
                                CssClass="sp-form-control"
                                placeholder="Enter your email address">
                            </asp:TextBox>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="sp-form-group">

                            <asp:Label ID="lblPhone" runat="server" AssociatedControlID="txtPhone" CssClass="sp-form-label">Mobile Number *</asp:Label>

                            <asp:TextBox
                                ID="txtPhone"
                                runat="server"
                                ClientIDMode="Static"
                                TextMode="Phone"
                                CssClass="sp-form-control"
                                placeholder="Enter 10 digit mobile number"
                                MaxLength="10">
                            </asp:TextBox>

                        </div>
                    </div>

                </div>

                <!-- STUDENT REGISTRATION FORM -->
                <div id="studentForm" class="sp-role-form active">

                    <div class="sp-form-title">
                        <i class="bi bi-mortarboard-fill me-2"></i>
                        Student Academic Information
                    </div>

                    <div class="row">

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblEnrollment" runat="server" AssociatedControlID="txtEnrollment" CssClass="sp-form-label">Enrollment Number *</asp:Label>

                                <asp:TextBox
                                    ID="txtEnrollment"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter enrollment number">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblRollNumber" runat="server" AssociatedControlID="txtRollNumber" CssClass="sp-form-label">Roll Number *</asp:Label>

                                <asp:TextBox
                                    ID="txtRollNumber"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter roll number">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblStudentDepartment" runat="server" AssociatedControlID="txtStudentDepartment" CssClass="sp-form-label">Department *</asp:Label>

                                <asp:TextBox
                                    ID="txtStudentDepartment"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter department">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblCourse" runat="server" AssociatedControlID="txtCourse" CssClass="sp-form-label">Course / Program *</asp:Label>

                                <asp:TextBox
                                    ID="txtCourse"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Example: MCA / BCA">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblSemester" runat="server" AssociatedControlID="ddlSemester" CssClass="sp-form-label">Current Semester *</asp:Label>

                                <asp:DropDownList
                                    ID="ddlSemester"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control">

                                    <asp:ListItem Text="Select Semester" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Semester 1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Semester 2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Semester 3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="Semester 4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="Semester 5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="Semester 6" Value="6"></asp:ListItem>

                                </asp:DropDownList>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblAdmissionYear" runat="server" AssociatedControlID="txtAdmissionYear" CssClass="sp-form-label">Admission Year *</asp:Label>

                                <asp:TextBox
                                    ID="txtAdmissionYear"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Example: 2025"
                                    MaxLength="4">
                                </asp:TextBox>

                            </div>
                        </div>

                    </div>

                </div>

                <!-- FACULTY REGISTRATION FORM -->
                <div id="facultyForm" class="sp-role-form">

                    <div class="sp-form-title">
                        <i class="bi bi-person-workspace me-2"></i>
                        Faculty Professional Information
                    </div>

                    <div class="row">

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblFacultyID" runat="server" AssociatedControlID="txtFacultyID" CssClass="sp-form-label">Faculty / Employee ID *</asp:Label>

                                <asp:TextBox
                                    ID="txtFacultyID"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter official faculty ID">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblFacultyDepartment" runat="server" AssociatedControlID="txtFacultyDepartment" CssClass="sp-form-label">Department *</asp:Label>

                                <asp:TextBox
                                    ID="txtFacultyDepartment"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter department">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblDesignation" runat="server" AssociatedControlID="ddlDesignation" CssClass="sp-form-label">Designation *</asp:Label>

                                <asp:DropDownList
                                    ID="ddlDesignation"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control">

                                    <asp:ListItem Text="Select Designation" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Assistant Professor" Value="Assistant Professor"></asp:ListItem>
                                    <asp:ListItem Text="Associate Professor" Value="Associate Professor"></asp:ListItem>
                                    <asp:ListItem Text="Professor" Value="Professor"></asp:ListItem>
                                    <asp:ListItem Text="Head of Department" Value="Head of Department"></asp:ListItem>
                                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>

                                </asp:DropDownList>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblFacultyQualification" runat="server" AssociatedControlID="txtFacultyQualification" CssClass="sp-form-label">Qualification *</asp:Label>

                                <asp:TextBox
                                    ID="txtFacultyQualification"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Example: MCA, M.Tech, Ph.D">
                                </asp:TextBox>

                            </div>
                        </div>

                    </div>

                </div>

                <!-- EVALUATOR REGISTRATION FORM -->
                <div id="evaluatorForm" class="sp-role-form">

                    <div class="sp-form-title">
                        <i class="bi bi-clipboard2-check-fill me-2"></i>
                        Evaluator Professional Information
                    </div>

                    <div class="row">

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblEvaluatorCode" runat="server" AssociatedControlID="txtEvaluatorCode" CssClass="sp-form-label">Evaluator ID / Invitation Code *</asp:Label>

                                <asp:TextBox
                                    ID="txtEvaluatorCode"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter evaluator ID or invitation code">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblEvaluatorDepartment" runat="server" AssociatedControlID="txtEvaluatorDepartment" CssClass="sp-form-label">Department *</asp:Label>

                                <asp:TextBox
                                    ID="txtEvaluatorDepartment"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter department">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblSpecialization" runat="server" AssociatedControlID="txtSpecialization" CssClass="sp-form-label">Subject Specialization *</asp:Label>

                                <asp:TextBox
                                    ID="txtSpecialization"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter subject specialization">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblEvaluatorQualification" runat="server" AssociatedControlID="txtEvaluatorQualification" CssClass="sp-form-label">Qualification *</asp:Label>

                                <asp:TextBox
                                    ID="txtEvaluatorQualification"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control"
                                    placeholder="Enter qualification">
                                </asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="sp-form-group">

                                <asp:Label ID="lblEvaluatorType" runat="server" AssociatedControlID="ddlEvaluatorType" CssClass="sp-form-label">Evaluator Type *</asp:Label>

                                <asp:DropDownList
                                    ID="ddlEvaluatorType"
                                    runat="server"
                                    ClientIDMode="Static"
                                    CssClass="sp-form-control">

                                    <asp:ListItem Text="Select Evaluator Type" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Internal Evaluator" Value="Internal"></asp:ListItem>
                                    <asp:ListItem Text="External Evaluator" Value="External"></asp:ListItem>

                                </asp:DropDownList>

                            </div>
                        </div>

                    </div>

                </div>

                <!-- Common Login Information -->
                <div class="sp-form-title">
                    <i class="bi bi-shield-lock-fill me-2"></i>
                    Login Information
                </div>

                <div class="row">

                    <div class="col-md-6">
                        <div class="sp-form-group">

                            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" CssClass="sp-form-label">Password *</asp:Label>

                            <asp:TextBox
                                ID="txtPassword"
                                runat="server"
                                ClientIDMode="Static"
                                TextMode="Password"
                                CssClass="sp-form-control"
                                placeholder="Create password">
                            </asp:TextBox>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="sp-form-group">

                            <asp:Label ID="lblConfirmPassword" runat="server" AssociatedControlID="txtConfirmPassword" CssClass="sp-form-label">Confirm Password *</asp:Label>

                            <asp:TextBox
                                ID="txtConfirmPassword"
                                runat="server"
                                ClientIDMode="Static"
                                TextMode="Password"
                                CssClass="sp-form-control"
                                placeholder="Confirm password">
                            </asp:TextBox>

                        </div>
                    </div>

                </div>

                <!-- Submit Button -->
                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Submit Registration"
                    CssClass="sp-register-btn"
                    OnClientClick="return validateRegistration();" OnClick="btnRegister_Click" />

                <div class="sp-register-footer">
                    Already have an account?
                    <a href="login-selection.aspx">Login Here</a>
                </div>

            </div>

        </div>

    </section>

    <!-- Role Based Form Show / Hide and Basic UI Validation -->
    <script>

        function changeRegistrationForm() {

            var role = document.getElementById("ddlRole").value;

            document.getElementById("studentForm").classList.remove("active");
            document.getElementById("facultyForm").classList.remove("active");
            document.getElementById("evaluatorForm").classList.remove("active");

            if (role === "Student") {
                document.getElementById("studentForm").classList.add("active");
            }
            else if (role === "Faculty") {
                document.getElementById("facultyForm").classList.add("active");
            }
            else if (role === "Evaluator") {
                document.getElementById("evaluatorForm").classList.add("active");
            }

        }

        function validateRegistration() {

            var role = document.getElementById("ddlRole").value;

            var commonFields = [
                ["txtFullName", "Full Name"],
                ["txtEmail", "Email Address"],
                ["txtPhone", "Mobile Number"],
                ["txtPassword", "Password"],
                ["txtConfirmPassword", "Confirm Password"]
            ];

            var roleFields = [];

            if (role === "Student") {

                roleFields = [
                    ["txtEnrollment", "Enrollment Number"],
                    ["txtRollNumber", "Roll Number"],
                    ["txtStudentDepartment", "Student Department"],
                    ["txtCourse", "Course"],
                    ["ddlSemester", "Semester"],
                    ["txtAdmissionYear", "Admission Year"]
                ];

            }
            else if (role === "Faculty") {

                roleFields = [
                    ["txtFacultyID", "Faculty ID"],
                    ["txtFacultyDepartment", "Faculty Department"],
                    ["ddlDesignation", "Designation"],
                    ["txtFacultyQualification", "Qualification"]
                ];

            }
            else if (role === "Evaluator") {

                roleFields = [
                    ["txtEvaluatorCode", "Evaluator ID / Invitation Code"],
                    ["txtEvaluatorDepartment", "Evaluator Department"],
                    ["txtSpecialization", "Subject Specialization"],
                    ["txtEvaluatorQualification", "Qualification"],
                    ["ddlEvaluatorType", "Evaluator Type"]
                ];

            }

            var allFields = commonFields.concat(roleFields);

            for (var i = 0; i < allFields.length; i++) {

                var field = document.getElementById(allFields[i][0]);

                if (field.value.trim() === "") {
                    alert("Please enter/select " + allFields[i][1] + ".");
                    field.focus();
                    return false;
                }

            }

            var email = document.getElementById("txtEmail").value.trim();

            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                document.getElementById("txtEmail").focus();
                return false;
            }

            var phone = document.getElementById("txtPhone").value.trim();

            if (!/^[0-9]{10}$/.test(phone)) {
                alert("Please enter a valid 10 digit mobile number.");
                document.getElementById("txtPhone").focus();
                return false;
            }

            var password = document.getElementById("txtPassword").value;
            var confirmPassword = document.getElementById("txtConfirmPassword").value;

            if (password.length < 8) {
                alert("Password must contain at least 8 characters.");
                document.getElementById("txtPassword").focus();
                return false;
            }

            if (password !== confirmPassword) {
                alert("Password and Confirm Password do not match.");
                document.getElementById("txtConfirmPassword").focus();
                return false;
            }

            return true;
        }

    </script>

</asp:Content>
