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
    public partial class loginPage : System.Web.UI.Page
    {
        string ty="";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ty= Request.QueryString["a"];
            Session["user"] = "";
            Session["own"] = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (ty.Equals("1")||(Request.QueryString["a"].Equals("null")))
            if (ty.Equals("1"))
            {
                string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(stcn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from customer where custemail ='" + TextBox1.Text + "'and custpassword ='" + TextBox2.Text + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Session["user"] = dr["custid"].ToString();
                    Response.Redirect("WebForm2.aspx");
                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Invalid username or password.";

                }
                con.Close();
            }
            else if (ty.Equals("2")) 
            {
                string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(stcn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from canteen where cemail ='" + TextBox1.Text + "'and cpassword ='" + TextBox2.Text + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Session["own"] = dr["cid"].ToString();
                    string i=dr["cid"].ToString();
                    if (i.Equals("1"))
                        Response.Redirect("spicyOwner.aspx");
                    else if (i.Equals("2"))
                        Response.Redirect("shanuzOwner.aspx");
                    else if (i.Equals("3"))
                        Response.Redirect("eatsOwner.aspx");
                    else if (i.Equals("4"))
                        Response.Redirect("fnfOwner.aspx");
                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Invalid username or password.";

                }
                con.Close();   

            }
            
        }
    }
}