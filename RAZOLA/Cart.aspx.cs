using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAZOLA
{
    public partial class Cart : System.Web.UI.Page
    {
        ShoppingCart cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckTimeStamps();
            if (Session["cart"] == null)
            {
                cart = new ShoppingCart();
                Session["cart"] = cart;
            }
            else
            {
                cart = (ShoppingCart)Session["cart"];
            }
            CartGridView.DataSource = cart.GetItems();
            if (!IsPostBack)
                CartGridView.DataBind();
        }
        private void CheckTimeStamps()
        {
            if (IsExpired())
                Response.Redirect(Request.Url.OriginalString);
            else
            {
                DateTime t = DateTime.Now;
                ViewState.Add("$$TimeStamp", t);
                String page = Request.Url.AbsoluteUri;
                Session.Add(page + "_TimeStam", t);
            }
        }
        private bool IsExpired()
        {
            String page = Request.Url.AbsoluteUri;
            if (Session[page + "_TimeStam"] == null)
                return false;
            else if (ViewState["$$TimeStamp"] == null)
                return false;
            //else if (Session[page + "_TimeStamp"].ToString() == ViewState["$$TimeStam"].ToString())
            else if (Session[page + "_TimeStamp"] == ViewState["$$TimeStam"])
                return false;
            else
                return true;
        }
    }
}