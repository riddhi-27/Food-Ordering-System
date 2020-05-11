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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string cuid="";
      
        protected void Page_Load(object sender, EventArgs e)
        {
            cuid=(string)Session["user"];
            
            Session["user"] = cuid;
          //  if (cuid.Equals(null))
            //    Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           MultiView1.ActiveViewIndex = 0;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex=-1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("canteenPage.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = -1;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

            int rid = 0;
           string cantpic ="";
           string cstpic = "";
           string cstname = "";
            string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(stcn);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from review", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                    rid++;

            }
            rid++;
            con.Close();
            con.Open();
            if (DropDownList1.SelectedItem.Text.Equals("Spicy Bite"))
            {
                SqlCommand cmd1 = new SqlCommand("select * from canteen where cid = '" + DropDownList1.SelectedValue + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                dr1.Read();
                cantpic = dr1["cphoto"].ToString();
            }
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from customer where custid = '" + cuid+ "'", con);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            dr2.Read();
            cstpic = dr2["custphoto"].ToString();
            cstname = dr2["custname"].ToString();
            con.Close();

            string stcn1 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con1 = new SqlConnection(stcn1);
            con1.Open();
            SqlCommand cmd3=new SqlCommand("insert into review values('"+rid+"','"+cuid+"','"+DropDownList1.SelectedValue+"','"+TextBox1.Text+"','"+DropDownList1.SelectedItem.Text+"','"+cantpic+"','"+cstname+"','"+cstpic+"' ) ",con1);
            cmd3.ExecuteNonQuery(); 
            con1.Close();
            DetailsView3.DataBind();
            Panel2.Visible = false;
            //Label1.Text = "Successfull.";
        }

       
        /*protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            Panel2.Visible = false;
        }*/

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;

            string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(stcn);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from customer where custid ='"+cuid+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                   TextBox2.Text=dr["custname"].ToString();
                TextBox3.Text=dr["custhostel"].ToString();
                TextBox4.Text=dr["custroom"].ToString();
                TextBox5.Text=dr["custcontact"].ToString();
                TextBox6.Text=dr["custemail"].ToString();
                
                }
            con.Close();
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            string stcn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(stcn);

            con.Open();
            SqlCommand cmd = new SqlCommand("update customer set custname='" + TextBox2.Text + "', custhostel='" + TextBox3.Text + "' , custroom ='" + TextBox4.Text + "' , custcontact= '" + TextBox5.Text + "' , custemail= '" + TextBox6.Text + "'where custid = '" + cuid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            DetailsView4.DataBind();
            MultiView2.ActiveViewIndex = 0;
            //Response.Redirect("~/WebForm2.aspx");
           // MultiView1.ActiveViewIndex = 0;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           // Response.Redirect("WebForm1.aspx?ch=0");
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
                Panel2.Visible = true;
           // Button8.Visible = false;
      
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart1.aspx");
        }


        }
    }