﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connection.Views
{
    public partial class DeleteMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnFinished_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Manage.aspx");
        }
    }
}