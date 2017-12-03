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
    public partial class DeleteActivity : System.Web.UI.Page
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
            btnDone.Visible = false;
            DateTime today =  DateTime.Today;
        }

        protected void btnDelActivity_Click(object sender, EventArgs e)
        {
            int familyID = (int)Session["familyID"];
            DateTime startDate = Convert.ToDateTime(calStartDate.SelectedDate);
            string activityName = ddlActivityName.SelectedValue;

            try
            {
                CalendarDA.DeleteActivity(familyID, activityName, startDate);
                Response.Redirect("~/Views/Manage.aspx");
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                lblError.Text = "There was an error deleting the Activity";
                btnDone.Visible = true;
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Manage.aspx");
        }
    }
}