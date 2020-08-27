using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.IO;
using System.Configuration;

public class EmailUsersClass 
{
    public EmailUsersClass(string userName)
    {
    }
    public string PopulateBody(string userName, string description)
    {
        using (System.Web.UI.Page pg = new System.Web.UI.Page())
        {
            string body = string.Empty;
            StreamReader reader = new StreamReader(pg.Server.MapPath("~/EMail/Email-Template.htm"));
        
            body = reader.ReadToEnd();
            body = body.Replace("{UserName}", userName);
            body = body.Replace("{Description}", description);

            return body;
        }
    }

    public void SendHtmlFormattedEmail(string recipientEmail, string subject, string body)
    {
        MailMessage mailMessage = new MailMessage();
        SmtpClient smtp = new SmtpClient();
        System.Net.NetworkCredential netCred = new System.Net.NetworkCredential();
        
        try
        {
            mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["AdminEmail"]);
            mailMessage.Subject = subject;
            mailMessage.Body = body;
            mailMessage.IsBodyHtml = true;
            mailMessage.To.Add(new MailAddress(recipientEmail));
           
            smtp.Host = ConfigurationManager.AppSettings["Host"];
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);

            netCred.UserName = ConfigurationManager.AppSettings["AdminEmail"];
            netCred.Password = ConfigurationManager.AppSettings["Password"];
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = netCred;
            smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]);
            smtp.Send(mailMessage);
        }
        catch
        {

        }

    }
}