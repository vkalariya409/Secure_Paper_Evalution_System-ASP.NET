using Final_project.Business_Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project.admin
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admin_bl adm;

            void startcon()
            {
                adm = new admin_bl();
                adm.getcon();
            }
        }
    }
}