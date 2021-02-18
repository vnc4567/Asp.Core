namespace Application.Common.Interfaces.Services
{
    public interface IMailService
    {
        void SendEmailAsync(string destinataire,string body);
    }
}
