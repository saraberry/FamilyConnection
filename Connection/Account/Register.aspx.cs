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
    public partial class Register : System.Web.UI.Page
    {
        Users u = new Users();
        Family f = new Family();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string password = txtPwReg.Text;
            string passwordConfirm = txtPWRegConfirm.Text;

            if (password == passwordConfirm)
            {
                u.UserPassword = password;
                u.UserFirst = txtHOHFName.Text;
                u.UserLast = txtHOHLName.Text;
                u.UserEmail = txtHOHEmail.Text;
                u.UserLogin = txtHOHEmail.Text;
                u.Permissions = "admin";
                f.HOHFirst = txtHOHFName.Text;
                f.HOHLast = txtHOHLName.Text;
                f.SubscriptionStart = DateTime.Today;
                f.SubscriptionEnd = f.SubscriptionStart.AddDays(30);

                FamilyDA.addFamily(f);
                int famID = FamilyDA.getFamilyIDbyHOH(f.HOHFirst, f.HOHLast);
                if(famID != 0)
                {
                    u.FamilyID = famID;
                    UsersDA.addUser(u);
                    Response.Redirect("~/Account/ThankYou.aspx");

                }
                else
                {
                    Response.Redirect("~/Account/Oops.aspx");
                }

            }           
            
        }
    }
}