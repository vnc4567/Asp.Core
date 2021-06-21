using Domain;
using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Respawn;
using System;

namespace Test.Commons
{
    public  class DbContextFixture 
    {
        public TestContext DbContext { get; private set; }
        public DbContextFixture()
        {
            DbContextOptions<TestContext> options;
            var builder = new DbContextOptionsBuilder<TestContext>();
            builder.UseInMemoryDatabase(Guid.NewGuid().ToString());
            options = builder.Options;
            DbContext = new TestContext(options);
            DbContext.Database.EnsureDeleted();
            DbContext.Database.EnsureCreated();
            //https://stackoverflow.com/questions/59668237/disable-autodetectchanges-on-entity-framework-core
            InitializeDbForTests(DbContext);
        }
        private  void InitializeDbForTests(TestContext db)
        {
            Person person = new Person
            {
                Id = 1,
                Name = "Vincent",
                AgePerson = new AgePerson(30),
                Email = "toto@gmail.com"
            };
            Person personSecond = new Person
            {
                Id = 2,
                Name = "Vincent",
                AgePerson = new AgePerson(30),
                Email = "toto@gmail.com"
            };
            Person personThird = new Person
            {
                Id = 3,
                Name = "Vincent",
                AgePerson = new AgePerson(30),
                Email = "toto@gmail.com"
            };

            db.Persons.Add(person);
                db.Persons.Add(personSecond);
                db.Persons.Add(personThird);
                db.SaveChanges();
                db.ChangeTracker.Clear();
        }

    }
}
