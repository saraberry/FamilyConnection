using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Connection.Classes;
using Connection.Database;


namespace Connection.Views
{
    public partial class Grocery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int familyID = (int)Session["familyID"];
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            List l = new Classes.List();
            l = (List)grdList.SelectedValue;

        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }
    }
}