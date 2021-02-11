using Domain.Specifications;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Common.Interfaces.Repositories
{
    public interface IPersonRepository
    {
        Task<Domain.Person> GetPerson(int id);
        Task<List<Domain.Person>> GetAll();
        Task<Domain.Person> GetPerson(Specification<Domain.Person> specification);
        void Update(Domain.Person person);
    }
}
