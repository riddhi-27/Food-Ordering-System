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
    public partial class cart : System.Web.UI.Page
    {
        string cuid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {

            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from customer where custid='" + cuid + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                TextBox1.Text = dr["custhostel"].ToString();
                TextBox2.Text = dr["custroom"].ToString();
                TextBox3.Text = dr["custcontact"].ToString();
            }
            con.Close();
        }
/*
        protected void Button5_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            TextBox1.ReadOnly = false;
            TextBox2.ReadOnly = false;
            TextBox3.ReadOnly = false;


        }
        */
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            
            con.Open();
            SqlCommand cmd = new SqlCommand("update customer set custhostel='" + TextBox1.Text + "',custroom='" + TextBox2.Text + "',custcontact='" + TextBox3.Text + "' where custid ='" + cuid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Button3.Visible = false;
            TextBox1.ReadOnly = true;
            TextBox2.ReadOnly = true;
            TextBox3.ReadOnly = true;

            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from customer where custid='" + cuid + "'", con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows)
            {
                dr1.Read();
                TextBox1.Text = dr1["custhostel"].ToString();
                TextBox2.Text = dr1["custroom"].ToString();
                TextBox3.Text = dr1["custcontact"].ToString();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox4.Text = cuid;
            
            int foi = 0;
            int fooi = 0;
          //  int cui = Convert.ToInt32(cuid);

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");

            con.Open();
            SqlCommand c1 = new SqlCommand("select * from foodOrders", con);
            SqlDataReader dr1 = c1.ExecuteReader();
            while (dr1.Read())
            {
                foi = Convert.ToInt32(dr1["oindex"]);
                fooi = Convert.ToInt32(dr1["oid"]);
            }
            con.Close();
            foi++;
            fooi++;
            TextBox4.Text += "orderid:" + Convert.ToString(fooi) +" orderind: "+Convert.ToInt32(foi);

            string dt = System.DateTime.Now.ToShortDateString();
            TextBox4.Text += " Date: " + dt;

            int[] cidd = new int[100];
            int[] custidd = new int[100];
            int[] fidd = new int[100];
            int[] fqq = new int[100];
            int i = 0;

            con.Open();
            SqlCommand c2 = new SqlCommand("select * from Cart where custid = '" + cuid + "'", con);
            SqlDataReader dr = c2.ExecuteReader();
            while (dr.Read())
            {
                cidd[i] = Convert.ToInt32(dr["cid"]);       TextBox4.Text += " Cid:" + cidd[i];
                custidd[i] = Convert.ToInt32(dr["custid"]); TextBox4.Text += " Custid" + custidd[i];
                fidd[i] = Convert.ToInt32(dr["fid"]);       TextBox4.Text += " foodid:" + fidd[i];
                fqq[i] = Convert.ToInt32(dr["fquantity"]);  TextBox4.Text += " quant:" + fqq[i];
                i++;
            }
            con.Close();
            
            TextBox4.Text += "LAst value of i= " + Convert.ToString(i);
            i--;
            if (i < 0)
                Label1.Text = "Your cart is empty!";
             else
              {
                  int tot = 0;
                  while (i >= 0)
                  {
                      string fn = "", fc = "", fpic = "";
                      int fpri = 0;
                      int fi = fidd[i];
                      TextBox4.Text += "fi: " + Convert.ToString(fi);
                      con.Open();
                      SqlCommand c3 = new SqlCommand("select * from food where fid ='"+fi+"'", con);
                      SqlDataReader datar = c3.ExecuteReader();
                      while (datar.Read())
                      {
                          fn = datar["fname"].ToString();
                          fc = datar["fcat"].ToString();
                          fpic = datar["fphoto"].ToString();
                          fpri = Convert.ToInt32(datar["fprice"]);
                          tot += fpri;
                      }
                      con.Close();
                      TextBox4.Text += " Totl: " + Convert.ToString(tot);
                      con.Open();
                      SqlCommand cmd = new SqlCommand("insert into foodOrders(oindex,oid,odate,ofname,ofcat,ofprice,ofquantity) values('" + foi + "','" + fooi + "','" + dt + "','" + fn + "','" + fc + "','" + fpri + "','" + fqq[i] + "')", con);
                      cmd.ExecuteNonQuery();
                      con.Close();

                      string cn = "", ch = "", cp = "";
                      long cc = 0;
                      con.Open();
                      SqlCommand c4 = new SqlCommand("select * from customer where custid= '" + custidd[i] + "'", con);
                      SqlDataReader readd = c4.ExecuteReader();
                      while (readd.Read())
                      {
                          cn = readd["custname"].ToString();
                          ch = readd["custhostel"].ToString();
                          cp = readd["custphoto"].ToString();
                          cc = Convert.ToInt64(readd["custcontact"]);
                      }
                      con.Close();
                      con.Open();
                      SqlCommand cmd1 = new SqlCommand("update foodOrders set ocustid='" + custidd[i] + "',ocustname='" + cn + "',ocustphoto='" + cp + "',ocustcontact='" + cc + "',ocusthostel = '" + ch + "' where oid = '" + fooi + "'", con);
                      cmd1.ExecuteNonQuery();
                      con.Close();


                      string can = "", cpp = "";
                      long cac = 0;
                      con.Open();
                      SqlCommand c5 = new SqlCommand("select * from canteen where cid ='" + cidd[i] + "'", con);
                      SqlDataReader dread = c5.ExecuteReader();
                      while (dread.Read())
                      {
                          can = dread["cname"].ToString();
                          cpp = dread["cphoto"].ToString();
                          cac = Convert.ToInt64(dread["ccontact"]);
                      }
                      con.Close();
                      con.Open();
                      SqlCommand cmd2 = new SqlCommand("update foodOrders set ocid ='" + cidd[i] + "',ocname='" + can + "',ocphoto='" + cpp + "',occontact='" + cac + "' where oid = '" + fooi + "'", con);
                      cmd2.ExecuteNonQuery();
                      con.Close();
                      
                      i--;
                      foi++;
                  }
                  con.Open();
                  SqlCommand cmd31 = new SqlCommand("update foodOrders set oprice= '"+tot+"' where oid = '" + fooi + "'", con);
                  cmd31.ExecuteNonQuery();
                  con.Close();
                  Response.Redirect("thank.aspx");
              }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}