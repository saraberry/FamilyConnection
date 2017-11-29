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
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnExit.Visible = false;
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            Users u = (Users)Session["Users"];
            Activity a = new Activity();

            a.FamilyID = u.FamilyID;
            a.ActivityName = txtTitle.Text;
            a.StartDate = Convert.ToDateTime(txtStartDate.Text);
            a.EndDate = Convert.ToDateTime(txtEndDate.Text);
            a.Time = Convert.ToDateTime(txtTime.Text);
            try
            {
                CalendarDA.addActivity(a);
                Response.Redirect("~/Views/Manage.aspx");
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                lblError.Text = "There was an error adding this activity";
                btnExit.Visible = true;
            }


        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Manage.aspx");
        }
    }
}