using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineDiary
{
    public partial class changePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changeMailBTN_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial Catalog=onlineDiaryDB; Integrated Security=True;");
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            SqlCommand cmd = new SqlCommand("UPDATE userTBL SET pass = '" + passwordTB.Text + "' WHERE nickname = '" + nicknameTB.Text + "'; ", conn);

            cmd.ExecuteNonQuery();
            
            passwordTB.Text = strişng.Empty;
            nicknameTB.Text = string.Empty;
        }
    }
}
