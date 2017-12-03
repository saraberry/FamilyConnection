using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Connection.Classes;
using Connection.Database;

namespace Connection.Account
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCalendar(); 
            try
            {
                Users u = (Users)Session["Users"];
                int familyID = (int)Session["familyID"];


          if (u != null)
            {

                if (u.Permissions != "admin")
                {
                    pnlManageMembers.Visible = false;
                    lblSubcLabel.Visible = false;
                    lblSubscEnd.Visible = false;
                }
                Family f = new Family();
                f = FamilyDA.getFamilyByID(u.FamilyID);

                lblFamID.Text = Convert.ToString(f.FamilyID);
                lblHOHLast.Text = f.HOHLast;
                lblSubscEnd.Text = f.SubscriptionEnd.ToShortDateString();

                Session["Users"] = u;

                List<Members> allMembers = MembersDA.getMembersFamilyID(f.FamilyID);

                //txtFamMem.Text = "MemberID  First Name Last Name Birthdate Family Role \n";

                foreach (Members m in allMembers)
                {
                   txtFamMem.Text += (m.MemberFirst + " " + m.MemberLast + " " + m.MemberBirthdate.ToShortDateString() + " " + m.MemberRole + "\n");
                }

            }
            }
            catch
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }
        private void BindCalendar()
        {
            calAgenda.SelectedDate = DateTime.Now;
        }

        protected void btnAddMember0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/AddMember.aspx");
        }

        protected void btnDelMember0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/DeleteMember.aspx");
        }

        protected void btnCreateLogin0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/CreateLogin.aspx");
        }

        protected void rptMembers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Calendar.aspx");
        }

        protected void btnDeleteActivity_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/DeleteActivity.aspx");
        }
    }
}