using Application.Common.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;

namespace Infrastructure.MailService
{
    public class MailService : IMailService
    {
        public void SendEmailAsync(string recipient, string body)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.
             SpecifiedPickupDirectory;
            client.PickupDirectoryLocation = @"C:\Test";

            client.Send("test@localhost",recipient,
                   "Confirm your email",
               body);
        }
    }
}
