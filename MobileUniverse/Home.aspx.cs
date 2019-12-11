using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MobileUniverse
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void MobileViewPage(object sender, EventArgs e)
        {
            Button btn = (sender as Button);
            string id = btn.CommandArgument;
            Response.Redirect("~/MobileView.aspx?id=" + id);

        }
       
    }
}