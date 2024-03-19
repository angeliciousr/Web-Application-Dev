using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailShopSystem
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                loginid.Visible = false;
                regisid.Visible= false;
                profid.Visible = true;
                logout.Visible= true;
            }
            
        }
        void lgout()
        {
            if (Session["email"] != null )
            {
                //Remove all session
                Session.RemoveAll();
                //Destroy all Session objects
                Session.Abandon();
                //Redirect to homepage or login page
                Response.Redirect("~/Default.aspx");
            }
        }

       
    }
}