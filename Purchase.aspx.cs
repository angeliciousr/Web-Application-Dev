using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace RetailShopSystem
{
    public partial class Purchase : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            //Modify the SQL statement to show only files that the current 
            //user has uploaded – for user
            //or
            // Modify the SQL statement to show files that all users have 
            //uploaded – for subadmin
            cmd.CommandText = "SELECT * FROM tbl_pur WHERE ID_pur='" + Session["pid"] + "'";
            SqlDataReader reader;
            con.Open();
            reader = cmd.ExecuteReader();
            rptdoc.DataSource = reader;
            rptdoc.DataBind();
            con.Close();
        }
    }
}