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
    public partial class writeDiary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveBTN_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial catalog=onlineDiaryDB; Integrated SEcurity=True");
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            //SqlCommand cmd = new SqlCommand("INSERT INTO userTBL(nickname,pass,username,surname,email) VALUES(@nickname,@pass,@userName,@surname,@email)", conn);
            SqlCommand cmd = new SqlCommand("INSERT INTO diariesTBL(diaries, title) VALUES(@diaries,@title)",conn);
            cmd.Parameters.AddWithValue("@diaries", writeDiaryTB.Text);
            cmd.Parameters.AddWithValue("@title", titleTB.Text);

            cmd.ExecuteNonQuery();
            Response.Redirect("myDiaries.aspx");
        }

        protected void closeBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("myDiaries.aspx");
        }

        protected void settingsBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("changeMail.aspx");
        }
    }
}