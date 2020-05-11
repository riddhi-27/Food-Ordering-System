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
    public partial class shaMenu : System.Web.UI.Page
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

      /*  protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
       * */
        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;

        }
        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;

        }
        protected void Button14_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }

        protected void Button15_Click(object sender, EventArgs e)
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

                GridViewRow row = GridView1.SelectedRow;
               // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;
                
                    
             string ci = "2";
                  int cui = Convert.ToInt32(cuid);
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
                SqlCommand cmd1 = new SqlCommand("select * from customer where custid = '" + cui+ "'", con);
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','"+1+"')", con);
                cmd3.ExecuteNonQuery();

                con.Close();



            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView2.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                //  Label3.Text = ci;
                int cui = Convert.ToInt32(cuid);
                // Label2.Text += ci + "" + cui;
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                // Label3.Text += cun + " " + cup; 
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();




            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView3.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                //  Label3.Text = ci;
                int cui = Convert.ToInt32(cuid);
                // Label2.Text += ci + "" + cui;
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                // Label3.Text += cun + " " + cup; 
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();




            }
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView4.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                //  Label3.Text = ci;
                int cui = Convert.ToInt32(cuid);
                // Label2.Text += ci + "" + cui;
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                // Label3.Text += cun + " " + cup; 
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();




            }
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView5.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                //  Label3.Text = ci;
                int cui = Convert.ToInt32(cuid);
                // Label2.Text += ci + "" + cui;
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                // Label3.Text += cun + " " + cup; 
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();




            }
        }

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView6.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                //  Label3.Text = ci;
                int cui = Convert.ToInt32(cuid);
                // Label2.Text += ci + "" + cui;
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                // Label3.Text += cun + " " + cup; 
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();





            }
        }

        protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView7.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                //  Label3.Text = ci;
                int cui = Convert.ToInt32(cuid);
                // Label2.Text += ci + "" + cui;
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                // Label3.Text += cun + " " + cup; 
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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();




            }
        }

        protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("loginPage.aspx?a=1");
            }
            else
            {
                cuid = Session["user"].ToString();
                Session["user"] = cuid;

                GridViewRow row = GridView8.SelectedRow;
                // int ii = Convert GridView1.SelectedDataKey.ToString();
                string fp = row.Cells[3].Text;
                string fn = row.Cells[2].Text;
                string fi = row.Cells[1].Text;


                string ci = "2";
                int cui = Convert.ToInt32(cuid);
                int i = 0;
                string cun = "", cup = "", cn = "", cp = "";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Cart", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        i = Convert.ToInt32(dr["ci"]);

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
                //Label3.Text = cn + "\n" + cp;
                con.Open();

                SqlCommand cmd3 = new SqlCommand("insert into Cart values('" + i + "','" + ci + "','" + cn + "','" + cp + "','" + cui + "','" + cun + "','" + cup + "','" + fi + "','" + fn + "','" + fp + "','" + 1 + "')", con);
                cmd3.ExecuteNonQuery();

                con.Close();




            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
    }
}
