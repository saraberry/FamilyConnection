using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connection.Views
{
    public partial class Budget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Users u = (Users)Session["Users"];
                int familyID = (int)Session["familyID"];
            }
            catch
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }
    }
}