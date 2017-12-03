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
    public partial class DeleteGrocery : System.Web.UI.Page
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int familyID = (int)Session["familyID"];
            string listType = ddlListType.SelectedValue;
            string listName = ddlItemName.SelectedValue;

            ListDA.DeleteList(familyID, listType, listName);
            Response.Redirect("~/Views/DeleteList.aspx");
        }

        protected void btnFinished_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Manage.aspx");
        }
    }
}