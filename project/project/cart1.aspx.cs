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
    public partial class cart1 : System.Web.UI.Page
    {
        string cuid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // string dt = System.DateTime.Now.ToShortDateString();
            //DateTime dt1 = System.DateTime.Now.Date;
            //Label1.Text = dt1.ToString();
            if (Session["user"] == null)
            {

            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con1.Open();
                SqlCommand com1 = new SqlCommand("select * from Cart where custid = '" + cuid + "'", con1);
                SqlDataReader dr1 = com1.ExecuteReader();
                if (!dr1.HasRows)
                {
                    Button1.Visible = false;
                }
                con1.Close();

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int foi = 0;
            int fooi = 0;

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

            //Label1.Text = foi + " " + fooi;

           // string dt = System.DateTime.Now.ToShortDateString();
            DateTime dt1 = System.DateTime.Now;
            int m = System.DateTime.Now.Month;
           // Label1.Text = dt1.ToString();
           
            int[] cidd = new int[100];
            //int[] custidd = new int[100];
            int[] fidd = new int[100];
            int[] fqq = new int[100];
            int i = 0;

            con.Open();
            SqlCommand c2 = new SqlCommand("select * from Cart where custid = '" + cuid + "'", con);
            SqlDataReader dr = c2.ExecuteReader();
            while (dr.Read())
            {
                cidd[i] = Convert.ToInt32(dr["cid"]); 
                //custidd[i] = Convert.ToInt32(dr["custid"]);
                fidd[i] = Convert.ToInt32(dr["fid"]); ;
                fqq[i] = Convert.ToInt32(dr["fquantity"]); 
                i++;
            }
            con.Close();

             i--;
           // if (i < 0)
           //     Label1.Text = "Your cart is empty!";
            if(i>=0)
            {
                int tot = 0;
                while (i >= 0)
                {
                    string fn = "", fc = "", fpic = "";
                    int fpri = 0;
                    int fi = fidd[i];
                    int ci = cidd[i];
                    con.Open();
                    SqlCommand c3 = new SqlCommand("select * from food where fid ='" + fi + "'", con);
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
                    
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into foodOrders(oindex,oid,odate,omonth,ofname,ofcat,ofprice,ofquantity) values('" + foi + "','" + fooi + "','"+dt1+"','"+m+"','" + fn + "','" + fc + "','" + fpri + "','" + fqq[i] + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    string cn = "", ch = "", cp = "";
                    long cc = 0;
                    con.Open();
                    //SqlCommand c4 = new SqlCommand("select * from customer where custid= '" + custidd[i] + "'", con);
                    SqlCommand c4 = new SqlCommand("select * from customer where custid= '" + cuid + "'", con);
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
                    //SqlCommand cmd1 = new SqlCommand("update foodOrders set ocustid='" + custidd[i] + "',ocustname='" + cn + "',ocustphoto='" + cp + "',ocustcontact='" + cc + "',ocusthostel = '" + ch + "' where oid = '" + fooi + "'", con);
                    SqlCommand cmd1 = new SqlCommand("update foodOrders set ocustid='" + cuid + "',ocustname='" + cn + "',ocustphoto='" + cp + "',ocustcontact='" + cc + "',ocusthostel = '" + ch + "' where oid = '" + fooi + "'", con);
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
                    //SqlCommand cmd2 = new SqlCommand("update foodOrders set ocid ='" + cidd[i] + "',ocname='" + can + "',ocphoto='" + cpp + "',occontact='" + cac + "' where oid = '" + fooi + "'", con);
                    SqlCommand cmd2 = new SqlCommand("update foodOrders set ocid ='" + ci + "',ocname='" + can + "',ocphoto='" + cpp + "',occontact='" + cac + "' where oindex = '" + foi + "'", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    i--;
                    foi++;
                }
                con.Open();
                SqlCommand cmd31 = new SqlCommand("update foodOrders set oprice= '" + tot + "' where oid = '" + fooi + "'", con);
                cmd31.ExecuteNonQuery();
                con.Close();

                con.Open();
                SqlCommand cmd4 = new SqlCommand("delete from Cart where custid = '" + cuid + "'", con);
                cmd4.ExecuteNonQuery();
                con.Close();
                Response.Redirect("thank.aspx");
            }
        }

      
    }
}