using AspSendMail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PageTourism
{
    public partial class Inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnInscription(object sender, EventArgs e)

        {

            if (sendConfirmation(new Email { To = TxtTo2.Text, Subject = "Voyage", Message = "We will get back to you shortly with additional information!" }))
            {
                string str = "Sent";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
            else
            {
                string str2 = "Not Sent";
                Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
            }

        }

        private bool sendConfirmation(Email email)
        {
            bool status = false;
            try
            {
                string MailSender = "didi_karv@msn.com";
                string MailPw = "Outlook12";

                SmtpClient smtpClient = new SmtpClient("smtp.office365.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Timeout = 100000;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential(MailSender, MailPw);

                MailMessage mailMessage = new MailMessage(MailSender, email.To, email.Subject, email.Message);
                mailMessage.IsBodyHtml = true;
                mailMessage.BodyEncoding = System.Text.UTF8Encoding.UTF8;

                smtpClient.Send(mailMessage);

                status = true;
                return status; ;
            }
            catch (Exception ex)
            {
                return status;
            }
        }
    }
}