using Application.Common.Interfaces;
using Domain;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Console;

namespace Infrastructure.Persistence
{
    public class TestContext : IdentityDbContext<IdentityUser>, ITestDbContext
    {
        public DbSet<Person> Persons { get; set; }
        private IDbContextTransaction _transaction;
        public TestContext(DbContextOptions<TestContext> options) : base(options)
        {
        }
        public void BeginTransaction()
        {
            _transaction = this.Database.BeginTransaction();
        }

        public void CommitTransaction()
        {
            _transaction.Commit();
        }

        public void RollbackTransaction()
        {
            _transaction.Rollback();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(TestContext).Assembly);
        }

 
        
    }
}
