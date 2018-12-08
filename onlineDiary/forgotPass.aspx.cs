using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace onlineDiary
{
    public partial class forgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMailTB_Click(object sender, EventArgs e)
        {
            //System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            //mail.To.Add(mailTB.Text);


            // MailMessage mail = new MailMessage(sendMailTB.Text,"New Pass");
            //SmtpClient smtpserver = new SmtpClient("127.0.0.1");
            SmtpClient smtpClient = new SmtpClient("mail.MyWebsiteDomainName.com", 25);

            smtpClient.Credentials = new System.Net.NetworkCredential("y.ozdemir71@gmail.com", "locke");
            smtpClient.UseDefaultCredentials = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("y.ozdemir71@gmail.com", "Myweb Site");
            mail.To.Add(new MailAddress("yektaaa39@gmail.com"));
            mail.CC.Add(new MailAddress("y.ozdemir71@gmail.com"));

            smtpClient.Send(mail);

        }
    }
}