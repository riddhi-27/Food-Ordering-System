using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class spicyOrder : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart1.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                 cuid = Session["user"].ToString();
                Session["user"] = cuid;
                int cui = Convert.ToInt32(cuid);

                GridViewRow row = GridView1.SelectedRow;
                string fp = row.Cells[5].Text;
                string fn = row.Cells[4].Text;
                string fi = row.Cells[1].Text;
              //  int price = Convert.ToInt32(fp);
                int ci = 1;
                
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";

                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i=Convert.ToInt32(dr["ci"]);

                }
                i++;
                con.Close();
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from customer where custid = '" + cui + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    dr1.Read();
                    cun = dr1["custname"].ToString();
                    cup = dr1["custphoto"].ToString();

                }
                con.Close();

                con.Open();
                SqlCommand cmd2 = new SqlCommand("select * from canteen where cid = '" + ci + "'", con);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr2.HasRows)
                {
                    dr2.Read();
                    cn = dr2["cname"].ToString();
                    cp = dr2["cphoto"].ToString();

                }
                con.Close();

                con.Open();
                Label1.Text = "Recently selected: "+ fn + " - " +fp; 
                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + "1" + "')", con);
               cmd3.ExecuteNonQuery();

                con.Close();



            }
        }
    }
}