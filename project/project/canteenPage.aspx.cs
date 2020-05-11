using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class canteenPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cantid"] = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue.Equals("1"))
              {
                  Session["cantid"] = RadioButtonList1.SelectedValue;
                 Response.Redirect("spicy.aspx");
              }
              else if (RadioButtonList1.SelectedValue.Equals("2"))
              {
                  Session["cantid"] = RadioButtonList1.SelectedValue;
                  Response.Redirect("shanuz.aspx");
              }
              else if (RadioButtonList1.SelectedValue.Equals("3"))
              {
                  Session["cantid"] = RadioButtonList1.SelectedValue;
                  Response.Redirect("eats.aspx");
              }
              else if (RadioButtonList1.SelectedValue.Equals("4"))
              {
                  Session["cantid"] = RadioButtonList1.SelectedValue;
                  Response.Redirect("fnf.aspx");
              }

            /*Session["cantid"] = RadioButtonList1.SelectedValue;
                        Response.Redirect("loginPage.aspx");
                       */
            

        }
    }
}