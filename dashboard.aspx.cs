using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailShopSystem
{
    public partial class dashboard : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //met code
            if (Session["aid"] == null)
            {

                Response.Redirect("~/loginadmin.aspx");
            }

            getcust();
            getpur();
        }
        private void getcust()
        {
            SqlConnection dbcon = new SqlConnection(_conString);
            SqlCommand scmd = new SqlCommand();
            scmd.CommandType = CommandType.Text;
            scmd.CommandText = "select count(*) from tbl_cust";
            scmd.Connection = dbcon;
            dbcon.Open();
            Int32 row = Convert.ToInt32(scmd.ExecuteScalar());
            dbcon.Close();
            vc.Text = row.ToString();
        } 
        private void getpur()
        {
            SqlConnection dbcon = new SqlConnection(_conString);
            SqlCommand scmd = new SqlCommand();
            scmd.CommandType = CommandType.Text;
            scmd.CommandText = "select count(*) from tblpurchase";
            scmd.Connection = dbcon;
            dbcon.Open();
            Int32 row = Convert.ToInt32(scmd.ExecuteScalar());
            dbcon.Close();
            vc.Text = row.ToString();
        }
    }
}