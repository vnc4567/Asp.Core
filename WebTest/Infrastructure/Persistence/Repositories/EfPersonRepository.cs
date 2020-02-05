using Application.Common.Interfaces;
using Application.Common.Interfaces.Repositories;
using Domain;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
        
        public Task<Person> GetPerson(int id)
        {
           return _context.Persons.SingleOrDefaultAsync(p => p.Id == id);
        }
    }
}
