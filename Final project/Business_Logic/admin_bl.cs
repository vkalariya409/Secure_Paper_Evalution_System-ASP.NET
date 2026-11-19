using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace Final_project.Business_Logic
{
    public class admin_bl
    {
        SqlConnection con; //For connection with database
        SqlDataAdapter da; // Run time container
        DataSet ds; // Run time container to store data
        SqlCommand cmd; //insert, update, delete, select command

        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        public SqlConnection getcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }
        // Password Hash and Salt
        public string GeneratePasswordHash(string password, out string salt)
        {
            byte[] saltBytes = new byte[32];

            using (RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider())
            {
                rng.GetBytes(saltBytes);
            }

            salt = Convert.ToBase64String(saltBytes);

            using (Rfc2898DeriveBytes pbkdf2 =
                new Rfc2898DeriveBytes(password, saltBytes, 100000))
            {
                return Convert.ToBase64String(pbkdf2.GetBytes(32));
            }
        }
        // Verify Password
        public bool VerifyPassword(string password, string savedSalt, string savedHash)
        {
            byte[] saltBytes = Convert.FromBase64String(savedSalt);

            using (Rfc2898DeriveBytes pbkdf2 =
                new Rfc2898DeriveBytes(password, saltBytes, 100000))
            {
                string hash = Convert.ToBase64String(pbkdf2.GetBytes(32));

                return hash == savedHash;
            }
        }
        // Insert Registration
        public int insert_registration(
            string nm, string eml, string mbl, string pwd, string role,
            string enrollment, string rollno, string studentDept,
            string course, string semester, string admissionYear,
            string facultyID, string facultyDept, string designation,
            string facultyQualification, string evaluatorCode,
            string evaluatorDept, string specialization,
            string evaluatorQualification, string evaluatorType)
        {
            string salt;
            string hash = GeneratePasswordHash(pwd, out salt);

            int userID;

            using (SqlConnection con = getcon())
            using (SqlTransaction trans = con.BeginTransaction())
            {
                // Users Table
                string query = "INSERT INTO Users " +
                    "(FullName,Email,Phone,PasswordHash,PasswordSalt,Role,ApprovalStatus,EmailVerified,IsActive) " +
                    "OUTPUT INSERTED.UserID VALUES('" +
                    nm.Replace("'", "''") + "','" +
                    eml.Replace("'", "''") + "','" +
                    mbl.Replace("'", "''") + "','" +
                    hash + "','" + salt + "','" +
                    role + "','Pending',0,0)";

                cmd = new SqlCommand(query, con, trans);
                userID = Convert.ToInt32(cmd.ExecuteScalar());

                // Student Details
                if (role == "Student")
                {
                    //string query1 = "INSERT INTO StudentDetails " +
                    //    "(UserID,EnrollmentNumber,RollNumber,Department,Course,Semester,AdmissionYear) VALUES(" +
                    //    userID + ",'" +
                    //    enrollment.Replace("'", "''") + "','" +
                    //    rollno.Replace("'", "''") + "','" +
                    //    studentDept.Replace("'", "''") + "','" +
                    //    course.Replace("'", "''") + "'," +
                    //    semester + "," + admissionYear + ")";

                    //cmd = new SqlCommand(query1, con, trans);
                    //cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("INSERT INTO StudentDetails(UserID,EnrollmentNumber,RollNumber,Department,Course,Semester,AdmissionYear) values(" + userID + ",'" + enrollment + "','" + rollno + "','" + studentDept + "','" + course + "'," + semester + "," + admissionYear + ")", con);

                    cmd.ExecuteNonQuery();
                }

                // Faculty Details
                else if (role == "Faculty")
                {
                    //string query2 = "INSERT INTO FacultyDetails " +
                    //    "(UserID,FacultyID,Department,Designation,Qualification) VALUES(" +
                    //    userID + ",'" +
                    //    facultyID.Replace("'", "''") + "','" +
                    //    facultyDept.Replace("'", "''") + "','" +
                    //    designation.Replace("'", "''") + "','" +
                    //    facultyQualification.Replace("'", "''") + "')";

                    //cmd = new SqlCommand(query2, con, trans);
                    //cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("INSERT INTO FacultyDetails(UserID,FacultyID,Department,Designation,Qualification) values(" + userID + ",'" + facultyID + "','" + facultyDept + "','" + designation + "','" + facultyQualification + "')", con);

                    cmd.ExecuteNonQuery();
                }

                // Evaluator Details
                else if (role == "Evaluator")
                {
                    //string query3 = "INSERT INTO EvaluatorDetails " +
                    //    "(UserID,EvaluatorCode,Department,Specialization,Qualification,EvaluatorType) VALUES(" +
                    //    userID + ",'" +
                    //    evaluatorCode.Replace("'", "''") + "','" +
                    //    evaluatorDept.Replace("'", "''") + "','" +
                    //    specialization.Replace("'", "''") + "','" +
                    //    evaluatorQualification.Replace("'", "''") + "','" +
                    //    evaluatorType.Replace("'", "''") + "')";

                    //cmd = new SqlCommand(query3, con, trans);
                    //cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("INSERT INTO EvaluatorDetails(UserID,EvaluatorCode,Department,Specialization,Qualification,EvaluatorType) values(" + userID + ",'" + evaluatorCode + "','" + evaluatorDept + "','" + specialization + "','" + evaluatorQualification + "','" + evaluatorType + "')", con);

                    cmd.ExecuteNonQuery();
                }

                // trans.Commit();
            }

            // Registration Session
            HttpContext.Current.Session["RegistrationUserID"] = userID;
            HttpContext.Current.Session["RegistrationRole"] = role;
            HttpContext.Current.Session["RegistrationStatus"] = "Pending";

            return userID;
        }

        // Select All Users
        public DataSet select()
        {
            con = getcon();

            da = new SqlDataAdapter("SELECT * FROM Users", con);
            ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        // Select User By ID
        public DataSet selectbyID(int Id)
        {
            con = getcon();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE UserID=" + Id, con);
            ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        // Select User By Email
        public DataSet selectbyemail(string email)
        {
            con = getcon();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Email='" + email.Replace("'", "''") + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        // Select Users By Role
        public DataSet selectbyRole(string role)
        {
            con = getcon();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Role='" + role + "'", con);

            ds = new DataSet();
            da.Fill(ds);


            return ds;
        }

        // Select Pending Registrations By Role
        public DataSet selectPendingByRole(string role)
        {
            con = getcon();

            da = new SqlDataAdapter("SELECT * FROM Users WHERE Role='" + role + "' AND ApprovalStatus='Pending'", con);

            ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        //// Update Registration Approval
        //public void updateApproval(int userID, string status, int adminID, string reason)
        //{
        //    con = getcon();

        //    string query = "UPDATE Users SET ApprovalStatus='" + status +"', IsActive=CASE WHEN '" + status +"'='Approved' AND EmailVerified=1 THEN 1 ELSE 0 END, " + "RejectionReason='" + reason.Replace("'", "''") + "', ReviewedAt=GETDATE(), ReviewedBy=" + adminID + ", UpdatedAt=GETDATE() WHERE UserID=" + userID + " AND Role<>'Admin'";

        //    cmd = new SqlCommand(query, con);
        //    cmd.ExecuteNonQuery();

        //}

        // Update Registration Approval
        public void updateApproval(int userID, string status, int adminID, string reason)
        {
            con = getcon();

            cmd = new SqlCommand("UPDATE Users SET ApprovalStatus='" + status + "', IsActive=CASE WHEN '" + status + "'='Approved' THEN 1 ELSE 0 END, " + "RejectionReason='" + reason + "', ReviewedAt=GETDATE(), ReviewedBy=" + adminID + ", UpdatedAt=GETDATE() WHERE UserID=" + userID + " AND Role<>'Admin'", con);

            cmd.ExecuteNonQuery();
        }

        // Insert Admin
        public bool insert_admin(string nm, string email, string phone, string password)
        {
            con = getcon();

            // Check Existing Email
            cmd = new SqlCommand(
                "SELECT COUNT(*) FROM Users WHERE Email=@Email", con);

            cmd.Parameters.AddWithValue("@Email", email);

            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count > 0)
            {
                con.Close();
                return false;
            }

            // Generate Password Hash and Salt
            string salt;
            string hash = GeneratePasswordHash(password, out salt);

            // Insert Admin
            cmd = new SqlCommand("INSERT INTO Users(FullName,Email,Phone,PasswordHash,PasswordSalt,Role,ApprovalStatus,EmailVerified,IsActive) values('" + nm + "','" + email + "','" + phone + "','" + hash + "','" + salt + "','Admin','Approved',1,1)", con);

            cmd.ExecuteNonQuery();

            return true;
        }

        //// Insert Admin
        //public void insert_admin(string nm, string email, string phone, string password)
        //{
        //    string salt;
        //    string hash = GeneratePasswordHash(password, out salt);

        //    con = getcon();

        //    cmd = new SqlCommand("INSERT INTO Users(FullName,Email,Phone,PasswordHash,PasswordSalt,Role,ApprovalStatus,EmailVerified,IsActive) values('" + nm + "','" + email + "','" + phone + "','" + hash + "','" + salt + "','Admin','Approved',1,1)", con);

        //    cmd.ExecuteNonQuery();
        //}
    }
}