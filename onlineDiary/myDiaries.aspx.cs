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
    public partial class myDiaries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //singleDiaryTB.Visible = false;
            Label2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("writeDiary.aspx");
        }

        protected void searchBTN_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            //singleDiaryTB.Visible = true;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial Catalog= onlineDiaryDB; Integrated Security= True");
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            SqlCommand cmd = new SqlCommand("SELECT diaries from diariesTBL WHERE title ='" + TextBox1.Text + "'", conn);
            
            cmd.ExecuteNonQuery();

            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void settingsBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("changeMail.aspx");
        }
    }
}