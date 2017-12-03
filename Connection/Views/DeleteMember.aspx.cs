using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Connection.Database;
using Connection.Classes;

namespace Connection.Views
{
    public partial class DeleteMember : System.Web.UI.Page
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
            string fname = ddlFName.SelectedValue;
            DateTime bday = Convert.ToDateTime(ddlBDay.SelectedValue);

            try
            {
                MembersDA.DeleteMember(familyID, fname, bday);
                lblError.Text = "Member Deleted Succesfully";
                ddlFName.DataBind();
                ddlBDay.DataBind();
            }
            catch
            {
                lblError.Text = "Invalid Name and Birthday Combination";
            }
            
        }

        protected void btnFinished_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Manage.aspx");
        }
    }
}