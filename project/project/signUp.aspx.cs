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
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string path1, ext1, s1;
            int id = 0;
            string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(stcn);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from customer", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                    id++;
            }
            id++;
            con.Close();
            con.Open();
            if (FileUpload1.HasFile)
            {
                path1 = FileUpload1.PostedFile.FileName;
                ext1 = System.IO.Path.GetExtension(path1);
                
                if ((ext1.Equals(".jpg")) || (ext1.Equals(".jpeg")) || (ext1.Equals(".gif")))
                {
                    s1 = "~/img/cust/";
        
                    s1 = s1 + path1;
                    SqlCommand cmd1 = new SqlCommand("insert into customer(custid,custname,custphoto,custhostel,custroom,custcontact,custemail,custpassword) values('" + id + "','" + TextBox1.Text + "','" + s1 + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
                    cmd1.ExecuteNonQuery();
                }
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("insert into customer(custid,custname,custhostel,custroom,custcontact,custemail,custpassword) values('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
                cmd2.ExecuteNonQuery();
            }
            con.Close();
            Response.Redirect("loginPage.aspx?a=1");
        }

      
    }
}