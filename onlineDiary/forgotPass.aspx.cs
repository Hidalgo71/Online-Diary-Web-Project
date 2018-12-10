using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


namespace onlineDiary
{
    public partial class forgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMailTB_Click(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage();
            message.IsBodyHtml = true;
            message.From = new MailAddress("y.ozdemir71@gmail.com");
            message.To.Add(new MailAddress(mailTB.Text));
            message.CC.Add(new MailAddress("y.ozdemir71@gmail.com"));
            message.Subject = "Forgot Mail!";
            message.Body = "DAILY DIARY";
            SmtpClient client = new SmtpClient();
            client.Send(message);

            //SmtpClient smtpC = new SmtpClient("smtp.gmail.com", 25);
            //smtpC.EnableSsl = true;
            //smtpC.UseDefaultCredentials = false;
            //smtpC.Credentials = new NetworkCredential("y.ozdemir71@gmail.com", "cikolata71LOCKE.");
            //MailMessage mail = new MailMessage("y.ozdemir71@gmail.com", mailTB.Text, "Re Mail", "MAIL");
            //smtpC.Send(mail);

            //using (var client = new SmtpClient("smtp.gmail.com", 587)
            //{
            //    Credentials = new NetworkCredential("yourmail@gmail.com", "yourpassword"),
            //    EnableSsl = true
            //})
            //{
            //    client.Send("frommail@gmail.com", "tomail@gmail.com", "subject", message);
            //}
        }
    }
}