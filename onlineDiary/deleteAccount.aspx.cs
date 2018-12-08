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
    public partial class deleteAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DeleteAccBTN_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source = DESKTOP-COFM7UV; initial catalog=onlineDiaryDB; Integrated Security=True");
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            //string qry = "select * from userTBL where nickname='" + id + "' and pass='" + pass + "'";
            SqlCommand cmd = new SqlCommand("DELETE FROM userTBL WHERE nickname='"+ deleteTB.Text+"'", conn);

            cmd.ExecuteNonQuery();
        }
    }
}