using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineDiary
{
    public partial class mainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBTN_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void signBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("signUp.aspx");
        }
    }
}