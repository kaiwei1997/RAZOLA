using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAZOLA
{
    public partial class MenNewIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // populate the control only on the initial page load
            if (!IsPostBack)
            {
                // Obtain the ID of the selected category
                string CategoryID = Request.QueryString["category"];
                // Continue only if CategoryID exists in the query string
                if (CategoryID != null)
                {
                    // Retrieve list of products in the selected category from the dropdown list
                    ddl_Category.SelectedValue = CategoryID;
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // get values from data source
            GridView dv = (GridView)sender;
            GridViewRow dr = dv.SelectedRow;
            string ProductID = dr.Cells[1].Text; //Product ID
            string Name = dr.Cells[2].Text; //"Name"
            decimal Price;
            if ((dr.Cells[5].Text) == "&nbsp;") //“SalePrice”
                Price = Convert.ToDecimal(dr.Cells[3].Text.Trim().Replace("RM", "").Replace(",", "")); //“Price”
            else
            {
                Price = Convert.ToDecimal(dr.Cells[5].Text.Trim().Replace("RM", "").Replace(",", "")); //“SalePrice"
            }
            // get or create shopping cart
            ShoppingCart cart;
            if (Session["cart"] == null)
            {
                cart = new ShoppingCart();
                Session["cart"] = cart;
            }
            else
            {
                cart = (ShoppingCart)Session["cart"];
            }
            // add item to cart
            cart.AddItem(ProductID, Name, Price);
            // redirect to cart page
            //string ProductID = dr.Cells[1].Text;
            string CategoryID = Request.QueryString["category"];
            Response.Redirect("Cart.aspx?prod=" + ProductID
            + "&category=" + CategoryID);
        }
    }
}