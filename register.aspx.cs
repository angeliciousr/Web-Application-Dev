using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailShopSystem
{
    public partial class register : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void clear()
        {
            firstname.Text = "";
            lastname.Text = "";
            email.Text = "";
            password.Text = "";
            cpassword.Text = "";

        }
        private bool isformvalid()
        {
            if (firstname.Text == "")
            {
                Response.Write("<script> alert('Username Not Valid'); </script>");
                return false;
            }
            if (lastname.Text == "")
            {
                Response.Write("<script> alert('Username Not Valid'); </script>");
                return false;
            }
            else if (email.Text == "")
            {
                Response.Write("<script> alert('Email Not Valid'); </script>");
                return false;
            }
            else if (password.Text == "")
            {
                Response.Write("<script> alert('Password Not Valid'); </script>");
                return false;
            }
            else if (password.Text != cpassword.Text)
            {
                Response.Write("<script> alert('Password Not Valid'); </script>");
                return false;
            }
            return true;
        }

        protected void register_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                SqlConnection con = new SqlConnection(_conString);
                // Create Command
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                Boolean Isadded = false;
                
                cmd.CommandText = "INSERT INTO [tbl_cust] (FirstName,LastName,Email,Password) values (@fn, @ln, @em, @pw)";
                //create Parameterized query to prevent sql injection by
                cmd.Parameters.AddWithValue("@fn", firstname.Text.Trim());
                cmd.Parameters.AddWithValue("@ln", lastname.Text.Trim());
                cmd.Parameters.AddWithValue("@em", email.Text.Trim()); ;
                cmd.Parameters.AddWithValue("@pw", password.Text.Trim());
                cmd.Connection = con;
                Isadded = cmd.ExecuteNonQuery() > 0;
                con.Close();
                if (Isadded)
                {
                    lblmsg.Text = firstname.Text + " " + lastname.Text + " added successfully!";
                    lblmsg.ForeColor = System.Drawing.Color.Green;


                    clear();
                }
                else
                {
                    lblmsg.Text = "Error while adding Customer " + lastname.Text;
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
            

        }
            
        }
    }
}