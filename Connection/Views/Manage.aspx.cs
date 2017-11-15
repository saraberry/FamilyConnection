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
            Users u = (Users)Session["Users"];

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
                lblSubscEnd.Text = Convert.ToString(f.SubscriptionEnd);
            }
        }
        
        protected void btnAddMember0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddMembers.aspx");
        }

        protected void btnDelMember0_Click(object sender, EventArgs e)
        {

        }

        protected void btnCreateLogin0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateLogin.aspx");
        }
    }
}