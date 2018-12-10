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
            singleDiaryLB.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("writeDiary.aspx");
        }

        protected void searchBTN_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            singleDiaryLB.Visible = true;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial Catalog= onlineDiaryDB; Integrated Security= True");
            string result = "SELECT diaries FROM diariesTBL WHERE title ='" + TextBox1.Text + "'";
            SqlCommand showResult = new SqlCommand(result, conn);
            conn.Open();
            singleDiaryLB.Text = showResult.ExecuteScalar().ToString();
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