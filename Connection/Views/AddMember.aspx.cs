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

        protected void btnAddMember_Click(object sender, EventArgs e)
        {
           // Users u = (Users)Session["Users"];
           // int familyID = u.FamilyID;

            int familyID = (int)Session["familyID"];

            Members m = new Members();
            m.FamilyID = familyID;
            m.MemberFirst = txtMemFName.Text;
            m.MemberLast = txtMemLName.Text;
            m.MemberRole = txtRole.Text;
            m.MemberBirthdate = Convert.ToDateTime(txtBirthdate.Text);
            try
            {
               bool exist = MembersDA.memberExists(m);

               if(exist == false)
                {
                    MembersDA.addMember(m);
                }
               else
                {
                    lblError.Text = "Family Member Already Exists";
                }
                
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            

            Response.Redirect("~/Views/Manage.aspx");
        }
    }
}