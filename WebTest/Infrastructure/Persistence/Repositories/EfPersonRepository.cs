using Application.Common.Interfaces.Repositories;
using Domain;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
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

        public Task<List<Person>> GetAll()
        {
            return _context.Persons.ToListAsync();
        }

        public Task<Person> GetPerson(int id)
        {
            return _context.Persons.SingleOrDefaultAsync(p => p.Id == id);
        }

        public void Update(Person person)
        {
            _context.Persons.Update(person);
            _context.SaveChanges();
        }
    }
}
