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
    public partial class spicyOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            Panel4.Visible = false;

          
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from canteen where cid = '" + 1 + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                TextBox1.Text = (string)dr["coname"];
                Image3.ImageUrl = (string)dr["cophoto"];
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel6.Visible = true;
            Panel8.Visible = true;
            Panel7.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel6.Visible = false;

            Panel7.Visible = true;
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Panel4.Visible == false)
                Panel4.Visible = true;
            else
                Panel4.Visible = false;

            MultiView1.ActiveViewIndex = -1; 
            MultiView2.ActiveViewIndex = -1;
            //ImageButton1.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Panel4.Visible = false;
            ImageButton1.Visible = true;
            MultiView1.ActiveViewIndex = -1;
            MultiView2.ActiveViewIndex = -1;
        }


        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel9.Visible = true;
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from foodOrders where ocustid = '" + RadioButtonList1.SelectedValue + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Label1.Text = (string)dr["ocustname"];
                Label2.Text = (string)dr["ocusthostel"];
                Image2.ImageUrl = (string)dr["ocustphoto"];
            }
            con.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Panel10.Visible = true;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Panel11.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            FileUpload1.Visible = true;
            Button19.Visible = true;
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string path = FileUpload1.PostedFile.FileName;
                string ext = System.IO.Path.GetExtension(path);
                if (ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".jpeg") || ext.Equals(".gif"))
                {
                    string nm = System.IO.Path.GetFileName(path);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/spicyImg/" + nm));
                    int i = 1;
                    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from SpicyImage", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            i++;
                        }
                    }
                   
                    string p = "~/img/spicyImg/" + nm;
                    con.Close();
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("insert into spicyImage values ('" + i + "','" + p + "')", con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Image15.Visible = true;
                    Image15.ImageUrl = p;
                }
                else
                {
                    Label6.Visible = true;
                    Label6.Text = "Please upload image file.";
                }
            }
            else
            {
                Label6.Visible = true;
                Label6.Text = "Please upload image file.";
            }

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 0;
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 1;
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
          
           SqlCommand cmd= new SqlCommand("select * from canteen where cid = '"+1+"'",con);
          SqlDataReader dr = cmd.ExecuteReader();
            string txt ="";
            if (dr.HasRows)
                dr.Read();
                 txt = Convert.ToString(dr["cdesc"]);
            con.Close();
            TextBox4.Text = txt;
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 2;
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from canteen where cid = '" + 1 + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            string cont = "";
            if (dr.HasRows)
                dr.Read();
            cont = Convert.ToString(dr["ccontact"]);
            con.Close();
            TextBox5.Text = cont;
        }


        protected void Button21_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
          
           SqlCommand cmd= new SqlCommand("update canteen set cdesc ='"+TextBox4.Text+"' where cid = 1",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Button22.Visible = true;
            TextBox4.ReadOnly = true;
            Button21.Visible = false;
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            TextBox4.ReadOnly = false;
            Button21.Visible = true;
            Button22.Visible = false;
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            TextBox5.ReadOnly = false;
            Button23.Visible = false;
            Button24.Visible = true;
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("update canteen set ccontact ='" + TextBox5.Text + "' where cid = '" + 1 + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Button23.Visible = true;
            TextBox5.ReadOnly = true;
            Button24.Visible = false;
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
           // Wizard1.Visible = false;
            ImageButton1.Visible = true;
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            TextBox1.ReadOnly = false;
            Button26.Visible = true;
            Button25.Visible = false;
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            Button25.Visible = true;
            Button26.Visible = false;
            TextBox1.ReadOnly = true;
            
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("update canteen set coname ='" + TextBox1.Text + "' where cid = '" + 1 + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
          /*  if (FileUpload1.HasFile)
            {
                string path = FileUpload1.PostedFile.FileName;
                string ext = System.IO.Path.GetExtension(path);
                if (ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".gif") || ext.Equals(".jpeg"))
                {
                    string nm = System.IO.Path.GetFileName(path);
                  //  Label8.Text = "~img/food/" + nm;
                  //  int id = (int)FormView1.FindControl("Label8");
                
                }
                }*/
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

     /*   protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
           con.Open();

           SqlCommand cmd0 = new SqlCommand("delete from earnm",con);
           cmd0.ExecuteNonQuery();
           con.Close();
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from foodOrders",con);
            SqlDataReader dr = cmd.ExecuteReader();
            string ii= "";
            while (dr.Read())
            {

                DateTime dt = Convert.ToDateTime(dr["odate"]);
                int m = dt.Month;

                if (DropDownList1.SelectedItem.Text == Convert.ToString(m))
                {
                    int oi = Convert.ToInt32(dr["oid"]);
                    
                    ii += oi+" ";
                 
                }
              //  Label9.Text = m.ToString();

               
            }
            con.Close();
            Label9.Text = ii;
               int i = 0;
               int l = ii.Length;
                while (i<l)
                {
                    
                    string oi1 = "";
                    while (ii[i] != ' ')
                    {
                        oi1 += ii[i];
                        i++;
                       
                        
                    }
                    i++;
                   
                    int oi11 = Convert.ToInt32(oi1);
                    con.Open();
                    SqlCommand c1 = new SqlCommand("insert into earnm values('" + oi11 + "')", con);
                    c1.ExecuteNonQuery();
                    con.Close();
                }
            }
        */
      
        protected void Button30_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();

            //SqlCommand cmd = new SqlCommand("select * from food where cid = 1",con);
            SqlCommand cmd = new SqlCommand("select * from food", con);
            SqlDataReader dr = cmd.ExecuteReader();
            int i = 1;
            while (dr.Read())
            {
                   i=Convert.ToInt32(dr["fid"]);
                
            }
            con.Close();
            i++;

            string pic_path = "None";
            if (FileUpload2.HasFile)
            {
                string path = FileUpload2.PostedFile.FileName;
                string ext = System.IO.Path.GetExtension(path);
                if (ext.Equals(".jpg") || ext.Equals(".jpeg") || ext.Equals(".png"))
                {
                    string n = System.IO.Path.GetFileName(path);
                    FileUpload2.PostedFile.SaveAs(Server.MapPath("~/img/food/") + n);
                    Label10.Text = "~/img/food/" + n;
                    pic_path = "~/img/food/" + n;
                }
                else
                    Label10.Text = "Please upload Image file..";
            }

            else
                Label10.Text = "Please upload Image file.";

            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into food values('" + i + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + pic_path + "','" + DropDownList3.SelectedItem.Text + "','" + "1" + "')",con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Panel14.Visible = false;
        }

    /*    protected void Button31_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string path = FileUpload2.PostedFile.FileName;
                string ext = System.IO.Path.GetExtension(path);
                if (ext.Equals("jpg") || ext.Equals("jpeg") || ext.Equals("png") || ext.Equals("gif"))
                {
                    string n = System.IO.Path.GetFileName(path);
                    FileUpload2.PostedFile.SaveAs(Server.MapPath("~/img/food/") + n);
                    Label10.Text = "~/img/food/" + n;
                }
                else
                    Label10.Text = "Please upload Image file..";
            }

            else
                Label10.Text = "Please upload Image file.";
        }
        */
        protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            Panel14.Visible = true;
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");

        }
     
        }
    
}