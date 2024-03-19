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
    public partial class login : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //get the value of username and password fields and state of checkbox from 
            //login form
            string username = txtemail.Text;
            string password = txtpass.Text;
           

            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            //searching for a record containing matching username & password with 
            //an active status
            cmd.CommandText = "select * from tbl_cust where email = @em and Password= @pass";

            //create two parameterized query for the above select statement
            //use above variables and decrypt password
            cmd.Parameters.AddWithValue("@em", username);
            // cmd.Parameters.AddWithValue("@spass",password);
            cmd.Parameters.AddWithValue("@pass", password);
            //Create DataReader
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            // check if the DataReader contains a record
            if (dr.HasRows)
            {

                if (dr.Read())
                {
                   
                    //check if role type is admin or user - optional

                    //create and save username in a session variable
                    Session["email"] = username;
                    Session["cid"] = dr["ID"].ToString();
                    //create and save userid in a session variable
                    //redirect to the corresponding page
                    Response.Redirect("~/profile");

                }
                con.Close();
            }
            else
            {
                //delete content of password field 

                lblmsg.Text = "You are not registered or your account has been suspended!";
            }
        }
    }
}