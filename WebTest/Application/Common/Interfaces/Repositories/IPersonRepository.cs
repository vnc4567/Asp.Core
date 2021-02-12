using Domain.Specifications;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Common.Interfaces.Repositories
{
    public interface IPersonRepository
    {
        Task<Domain.Person> GetPersonAsync(int id);
        Task<List<Domain.Person>> GetAllAsync();
        Task<Domain.Person> GetPersonAsync(Specification<Domain.Person> specification);
        Task UpdateAsync(Domain.Person person);
    }
}
