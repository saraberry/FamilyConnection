using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Connection.Classes;

namespace Connection
{
    public partial class SiteMaster : MasterPage
    {
        public virtual ITemplate AnonymousTemplate { get; set; }
        public virtual ITemplate LoggedInTemplate { get; set; }
        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
           
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            
        }
    }

}