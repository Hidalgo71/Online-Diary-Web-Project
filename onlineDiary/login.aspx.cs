﻿using System;
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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = idTB.Text;
            string pass = passTB.Text;


            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-COFM7UV; Initial Catalog=onlineDiaryDB; Integrated Security=True;");
            connection.Open();
            string qry = "select * from userTBL where nickname='" + id + "' and pass='" + pass + "'";
            SqlCommand command = new SqlCommand(qry, connection);
            SqlDataReader sdr = command.ExecuteReader();

            if (sdr.Read())
            {
                Response.Redirect("https://www.google.com/");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            

        }
    }
}