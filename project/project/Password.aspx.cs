using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project
{
    public partial class Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(stcn);
            
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from customer where custemail ='" + TextBox3.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                SqlCommand cmd1 = new SqlCommand("update customer set custpassword ='" + TextBox1.Text + "' ", con);
                Response.Redirect("loginPage.aspx");
            }
            con.Close();
        }
    }
}