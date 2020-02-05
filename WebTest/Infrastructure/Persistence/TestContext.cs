using Application.Common.Interfaces;
using Domain;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.Persistence
{
    public class TestContext : DbContext, ITestDbContext
    {
        public DbSet<Person> Persons { get; set; }
        public TestContext(DbContextOptions<TestContext> options): base(options)
        {
        }
        public void BeginTransactionAsync()
        {
            throw new NotImplementedException();
        }

        public void CommitTransactionAsync()
        {
            throw new NotImplementedException();
        }

        public void RollbackTransaction()
        {
            throw new NotImplementedException();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(TestContext).Assembly);
        }
    }
}
