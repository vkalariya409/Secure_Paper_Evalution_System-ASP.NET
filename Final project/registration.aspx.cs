using Final_project.Business_Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project
{
    public partial class registration : System.Web.UI.Page
    {
        admin_bl obj = new admin_bl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Common Registration Details
            string nm = txtFullName.Text;
            string eml = txtEmail.Text;
            string mbl = txtPhone.Text;
            string pwd = txtPassword.Text;
            string confirmPwd = txtConfirmPassword.Text;
            string role = ddlRole.SelectedValue;

            // Password Confirmation
            if (pwd != confirmPwd)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Password and Confirm Password do not match.');", true);
                return;
            }

            // Student Details
            string enrollment = txtEnrollment.Text;
            string rollno = txtRollNumber.Text;
            string studentDept = txtStudentDepartment.Text;
            string course = txtCourse.Text;
            string semester = ddlSemester.SelectedValue;
            string admissionYear = txtAdmissionYear.Text;

            // Faculty Details
            string facultyID = txtFacultyID.Text;
            string facultyDept = txtFacultyDepartment.Text;
            string designation = ddlDesignation.SelectedValue;
            string facultyQualification = txtFacultyQualification.Text;

            // Evaluator Details
            string evaluatorCode = txtEvaluatorCode.Text;
            string evaluatorDept = txtEvaluatorDepartment.Text;
            string specialization = txtSpecialization.Text;
            string evaluatorQualification = txtEvaluatorQualification.Text;
            string evaluatorType = ddlEvaluatorType.SelectedValue;

            // Insert Registration
            int userID = obj.insert_registration(
                nm, eml, mbl, pwd, role,
                enrollment, rollno, studentDept,
                course, semester, admissionYear,
                facultyID, facultyDept, designation,
                facultyQualification, evaluatorCode,
                evaluatorDept, specialization,
                evaluatorQualification, evaluatorType
            );

            if (userID > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Registration submitted successfully. Your account is pending admin approval.'); window.location='login-selection.aspx';", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Registration failed. Please try again.');", true);
            }
        }
    }
}