using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailShopSystem
{
    public partial class cart : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
        }
    }
}