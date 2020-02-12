using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Common.Interfaces.Services
{
    public interface IMailService
    {
        void SendEmailAsync(string destinataire,string body);
    }
}
