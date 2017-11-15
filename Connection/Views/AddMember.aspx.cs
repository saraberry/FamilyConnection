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
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAddMember_Click(object sender, EventArgs e)
        {
            Users u = (Users)Session["Users"];
            int familyID = u.FamilyID;

            Members m = new Members();
            m.FamilyID = familyID;
            m.MemberFirst = txtMemFName.Text;
            m.MemberLast = txtMemLName.Text;
            m.MemberRole = txtRole.Text;
            m.MemberBirthdate = Convert.ToDateTime(txtBirthdate.Text);

            MembersDA.addMember(m);

            Response.Redirect("~/Manage.aspx");
        }
    }
}