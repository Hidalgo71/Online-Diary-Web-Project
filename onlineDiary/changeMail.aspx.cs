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
    public partial class changeMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //"+ nicknameTB + "
        }

        protected void changeMailBTN_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial Catalog = onlineDiaryDB; Integrated Security=True");
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;

          //  command.CommandText = "UPDATE Student SET Address = @add, City = @cit Where FirstName = @fn and LastName = @add";
            SqlCommand cmd = new SqlCommand("UPDATE userTBL SET email = '" + this.changeMailTB.Text + "' WHERE nickname = '" +this.nicknameTB.Text + "'; ", conn);
            cmd.ExecuteNonQuery();
        }
    }
}