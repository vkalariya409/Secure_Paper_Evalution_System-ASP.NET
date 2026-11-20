using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project.admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.AbsolutePath.ToLower().EndsWith("/admin/login.aspx") == false)
            {
                if (Session["AdminID"] == null || Session["AdminRole"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else if (Session["AdminRole"].ToString() != "Admin")
                {
                    Session.Clear();
                    Session.Abandon();

                    Response.Redirect("login.aspx");
                }
            }
        }
    }
}