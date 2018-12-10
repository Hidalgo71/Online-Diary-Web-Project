using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace onlineDiary
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kayitBTN_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial Catalog=onlineDiaryDB; Integrated Security=True;");
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            SqlCommand cmd = new SqlCommand("INSERT INTO userTBL(nickname,pass,username,surname,email) VALUES(@nickname,@pass,@userName,@surname,@email)", conn);
            cmd.Parameters.AddWithValue("@nickname", nickTB.Text);
            cmd.Parameters.AddWithValue("@pass", passTB.Text);
            cmd.Parameters.AddWithValue("@username", usernameTB.Text);
            cmd.Parameters.AddWithValue("@surname", surnameTB.Text);
            cmd.Parameters.AddWithValue("@email", mailTB.Text);

            if (passTB.Text == passCheckTB.Text && agreementCB.Checked)
            {
                cmd.ExecuteNonQuery();

                nickTB.Text = string.Empty;
                passTB.Text = string.Empty;
                passCheckTB.Text = string.Empty;
                usernameTB.Text = string.Empty;
                surnameTB.Text = string.Empty;
                mailTB.Text = string.Empty;
            }
            else
            {
                Response.Redirect("signUp.aspx");                
            }

        }

        protected void passCheckTB_TextChanged(object sender, EventArgs e)
        {

        }
    }
}