using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project.img
{
    public partial class spicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
            }
            else
            {
                string cuid = Session["user"].ToString();
                Session["user"] = cuid;
            }
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from cdetail where cid=1", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Label5.Text = dr["pmin"].ToString();
                        Label6.Text = dr["pmax"].ToString();
                        Label9.Text = dr["cuisine"].ToString();
                        Label11.Text = dr["meals"].ToString();

                    }
                }
                con.Close();

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from canteen where cid=1", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    dr1.Read();

                    Label13.Text = dr1["ccontact"].ToString();
                }
            }

        }
    }
}
