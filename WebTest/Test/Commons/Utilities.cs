using Domain;
using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System;

namespace Test.Commons
{
    public static class Utilities
    {
        private static void InitializeDbForTests(TestContext db)
        {
            db.Persons.Add(new Person
            {
                Id = 1,
                Name = "Vincent",
                AgePerson = new AgePerson(30),
                Email = "toto@gmail.com"
            });
            db.SaveChanges();
        }

        public static TRepository GetInMemoryRepository<TRepository>()
        {
            DbContextOptions<TestContext> options;
            var builder = new DbContextOptionsBuilder<TestContext>();
            builder.UseInMemoryDatabase("InMemoryDbForTesting");
            options = builder.Options;
            TestContext dbContext = new TestContext(options);
            dbContext.Database.EnsureCreated();
            InitializeDbForTests(dbContext);
            return (TRepository)Activator.CreateInstance(typeof(TRepository), dbContext);
        }
    }
}
