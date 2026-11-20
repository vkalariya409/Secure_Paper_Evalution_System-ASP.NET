
using System;
using System.Web;
using System.Web.UI;
using Final_project.Business_Logic;

namespace Final_project.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            admin_bl adm = new admin_bl();

            int adminID;
            string adminName;

            bool result = adm.admin_login(
                txtAdminUsername.Text,
                txtMasterPassword.Text,
                out adminID,
                out adminName
            );

            if (result == true)
            {
                Session["AdminID"] = adminID;
                Session["AdminName"] = adminName;
                Session["AdminEmail"] = txtAdminUsername.Text;
                Session["AdminRole"] = "Admin";

                Response.Redirect("dashboard.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(
                    this.GetType(),
                    "alert",
                    "alert('Invalid Email or Password!');",
                    true
                );
            }
        }
    }
}
