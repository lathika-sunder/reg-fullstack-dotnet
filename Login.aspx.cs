using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;


    public partial class vs_reg_Login : System.Web.UI.Page
    {
        static string connectionString = @"Data Source=LAPTOP-19TS5NRT;Initial Catalog=form;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        try
            {
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "sp_login";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", txtUserId.Text.ToString());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["Username"] = txtUserId.Text.ToString();
                    txtInfo.Text = "Login Successful!";

                   
                Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    txtInfo.Text = "Invalid credentials" ;
                }

                reader.Close();

                con.Close();

            }
            catch (Exception ex)
            {

            }
        }
    }
