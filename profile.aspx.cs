using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailShopSystem
{
    public partial class profile : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                
                Response.Redirect("~/login.aspx");
            }

            if (!Page.IsPostBack)
            {
                // Create Connection
                SqlConnection con = new SqlConnection(_conString);
                // Create Command
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                //To replace the txtusername.Text by the session variable
                cmd.CommandText = "SELECT * FROM tbl_cust WHERE ID='" + Session["cid"] + "'";
                //cmd.Parameters.AddWithValue("@un", Session["uname"]);
                con.Open();
                //Create DataReader
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    //retrieve the values using the reader[“fieldname”] and 
                    //store in corresponding Textboxes
                    namemsg.Text = reader["FirstName"].ToString();
                    name.Text = reader["LastName"].ToString();
                  txtfn.Text = reader["FirstName"].ToString();
                  txtln.Text = reader["LastName"].ToString();
                  txtem.Text = reader["email"].ToString();

                }
                reader.Close();
                //create a dataadapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //create a datatable
                DataTable dt = new DataTable();

                //populate the datatable
                using (da)
                {
                    da.Fill(dt);
                }
                
                con.Close();
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            string updateSQL;
            //To replace the txtusername.text by the session variable
            updateSQL = "UPDATE tbl_cust SET FirstName = @fn, LastName = @ln, email = @em WHERE ID = '" +
                Session["cid"] + "'";
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand(updateSQL, con);
            // Add the 3 parameters
            cmd.Parameters.AddWithValue("@fn", txtfn.Text.Trim());
            cmd.Parameters.AddWithValue("@ln", txtln.Text.Trim());
            cmd.Parameters.AddWithValue("@em", txtem.Text.Trim());
            
            int updated = 0;

            //Add a “try – catch” block to handle any exceptions thrown during 
            //program execution and displays the error Message if any
            try
            {
                con.Open();
                updated = cmd.ExecuteNonQuery();
                //lblmsg.Text = " Your Profile has been updated.";
            }
            catch (Exception err)
            {
                //lblmsg.Text = "Error updating. " + err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}