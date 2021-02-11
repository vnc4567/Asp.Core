using Application.Common.Interfaces.Repositories;
using Domain;
using Domain.Specifications;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Infrastructure.Persistence.Repositories
{
    public class EfPersonRepository : IPersonRepository
    {
        private readonly TestContext _context;
        public EfPersonRepository(TestContext context)
        {
            _context = context;
        }

        public async Task<List<Person>> GetAll()
        {
            return await  _context.Persons.ToListAsync();
        }

        public async Task<Person> GetPerson(int id)
        {
            return await _context.Persons.SingleOrDefaultAsync(p => p.Id == id);
        }

        public async Task<IEnumerable<Person>> Find(Specification<Person> specification)
        {
            return await _context.Persons.Where(specification.ToExpression()).ToListAsync();
        }
        public async Task<Person> GetPerson(Specification<Person> specification)
        {
            return await _context.Persons.SingleOrDefaultAsync(specification.ToExpression());
        }
        public void Update(Person person)
        {
            _context.Persons.Update(person);
            _context.SaveChanges();
        }
    }
}
