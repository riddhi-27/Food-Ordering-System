using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class shanuz : System.Web.UI.Page
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
        }
    }
}