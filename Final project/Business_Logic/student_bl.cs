using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Final_project.Business_Logic
{
    public class student_bl
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

        // Student Login
        public string student_login(string email, string password)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();

            da = new SqlDataAdapter(
                "SELECT * FROM Users WHERE Email='" + email.Replace("'", "''") +"' AND Role='Student'", con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count == 0)
            {
                return "Invalid";
            }

            string status = ds.Tables[0].Rows[0]["ApprovalStatus"].ToString();

            if (status == "Pending")
            {
                return "Pending";
            }

            if (status == "Rejected")
            {
                return "Rejected";
            }

            if (ds.Tables[0].Rows[0]["IsActive"].ToString() != "True")
            {
                return "Inactive";
            }

            string savedSalt = ds.Tables[0].Rows[0]["PasswordSalt"].ToString();
            string savedHash = ds.Tables[0].Rows[0]["PasswordHash"].ToString();

            admin_bl obj = new admin_bl();

            if (obj.VerifyPassword(password, savedSalt, savedHash))
            {
                HttpContext.Current.Session["UserID"] =
                    ds.Tables[0].Rows[0]["UserID"].ToString();

                HttpContext.Current.Session["UserRole"] = "Student";

                HttpContext.Current.Session["StudentName"] =
                    ds.Tables[0].Rows[0]["FullName"].ToString();

                return "Success";
            }

            return "Invalid";
        }
    }
}