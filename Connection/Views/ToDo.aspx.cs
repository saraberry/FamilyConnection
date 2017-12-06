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
    public partial class ToDo : System.Web.UI.Page
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            btnDelete.CausesValidation = false;
            Response.Redirect("~/Views/DeleteList.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int familyID = (int)Session["familyID"];
            ToDoItems t = new ToDoItems();
            t.FamilyID = familyID;
            t.ListItem = txtItemName.Text;
            t.DueDate = Convert.ToDateTime(txtDate.Text);
            t.IsComplete = "N";
            t.ListType = "todo";
            try
            {
                ListDA.addToDoItem(t);
                Response.Redirect("~/Views/ToDo.aspx");
                lblError.Text = "List item added Successfully";
            }
            catch
            {
                Response.Redirect("~/Views/ToDo.aspx");
                lblError.Text = "There was an error adding the list item";
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            btnDone.CausesValidation = false;
            Response.Redirect("~/Views/Manage.aspx");
        }
    }
}