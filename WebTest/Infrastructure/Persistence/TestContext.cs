using Application.Common.Interfaces;
using Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.Persistence
{
    public class TestContext : DbContext, ITestDbContext
    {
        public DbSet<Person> Persons { get; set; }
        private IDbContextTransaction _transaction;
        public TestContext(DbContextOptions<TestContext> options): base(options)
        {
        }
        public  void BeginTransaction()
        {
            _transaction =  this.Database.BeginTransaction();
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
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(TestContext).Assembly);
        }
    }
}
