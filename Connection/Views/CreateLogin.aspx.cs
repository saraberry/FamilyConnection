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
    public partial class CreateLogin : System.Web.UI.Page
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
            btnHome.Visible = false;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Manage.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Users u = (Users)Session["Users"];
            Users newu = new Users();
            newu.FamilyID = u.FamilyID;
            newu.UserFirst = txtFName.Text;
            newu.UserLast = txtLName.Text;
            newu.UserEmail = txtEmail.Text;
            newu.UserLogin = txtEmail.Text;
            newu.UserPassword = u.UserPassword = BCrypt.Net.BCrypt.HashPassword(txtPW.Text, 10);
            newu.Permissions = ddlPermissions.SelectedValue;

            if (UsersDA.userExists(newu.UserLogin) == false)
            {
                    UsersDA.addUser(newu);
                
            }
            else
            {
                lblError.Text = "User Already Exists";
                btnHome.Visible = true;

            }


            if (UsersDA.getUserByLogin(newu.UserLogin) != null)
            {
                Response.Redirect("~/Views/Manage.aspx");
            }
            else
            {
                lblError.Text = "User Creation Failed! Check for errors and try again.";
            }
        }
    }
}