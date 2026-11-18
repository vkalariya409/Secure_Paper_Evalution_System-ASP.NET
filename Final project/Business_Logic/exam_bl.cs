using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Final_project.Business_Logic
{
    public class exam_bl
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
    }
}