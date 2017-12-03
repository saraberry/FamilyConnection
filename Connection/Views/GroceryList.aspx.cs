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
    public partial class GroceryList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int familyID = (int)Session["familyID"];

            }
            catch
            {
                Response.Redirect("~/Account/Login.aspx");
            }

        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/DeleteList.aspx");

        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Manage.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int familyID = (int)Session["familyID"];
            GroceryItems g = new GroceryItems();
            g.FamilyID = familyID;
            g.ListItem = txtItem.Text;
            g.StoreName = txtStore.Text;
            g.StorePrice = Convert.ToDouble(txtPrice.Text);
            g.IsComplete = "N";
            g.ListType = "grocery";
            try
            {
                ListDA.addGroceryItem(g);
                lblError.Text = "List item added Successfully";
                Response.Redirect("~/Views/GroceryList.aspx");
            }
            catch
            {
                lblError.Text = "There was an error adding the list item";
                Response.Redirect("~/Views/GroceryList.aspx");
            }
            
        }
    }
}