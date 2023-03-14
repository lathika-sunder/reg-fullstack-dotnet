using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vs_reg_Default : System.Web.UI.Page
{
    private string gender;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
                
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-19TS5NRT;Initial Catalog=form;Integrated Security=True");

        SqlCommand cmd = new SqlCommand(@"INSERT INTO regform

([FullName]
,[Address]
,[Phone]
,[Email]
,[Username]

,[Password])
VALUES
('" + txtName.Text + "', '" + txtAdd.Text + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "', '" + txtUser.Text + "', '" + txtPass.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("CONGRATS !!! USER REGISTERED SUCCESSFULLY");
        Response.Redirect("Login.aspx");
    }

    protected void txtPhone_TextChanged(object sender, EventArgs e)
    {

    }
}