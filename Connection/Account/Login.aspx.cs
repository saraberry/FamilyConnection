using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Connection.Database;
using Connection.Classes; 

namespace Connection.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string login = txtLogin.Text;
            string password = txtPassword.Text;

            bool correct = UsersDA.validateLogin(login, password);
            

            if(correct == true)
            {
                Users u = new Users();
                u = UsersDA.getUserByLogin(login);
                Session["Users"] = u;
                Session["familyID"] = u.FamilyID;

                Response.Redirect("~/Views/Manage.aspx");
            }
            else
            {
                lblError.Text = "Incorrect Login Information";
            }
            
        }
    }
}