using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Application.Common.Interfaces.Repositories
{
    public interface IPersonRepository
    {
        Task<Domain.Person> GetPerson(int id);
    }
}
