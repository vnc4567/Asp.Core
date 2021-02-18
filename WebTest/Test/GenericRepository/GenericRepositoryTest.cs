using AutoFixture;
using Domain;
using Infrastructure.Persistence.Repositories;
using Shouldly;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Test.Commons;
using Xunit;

namespace Test.GenericRepository
{
    [Collection("DbContext collection")]
    public class GenericRepositoryTest
    {
        private readonly DbContextFixture dbFixture;
        private readonly EfRepository<Person> genericRepository;
        public GenericRepositoryTest(DbContextFixture dbFixture)
        {
            this.dbFixture = dbFixture;
            genericRepository = new EfRepository<Person>(dbFixture.DbContext);
        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_Find()
        {
            var person = await genericRepository.FindAsync(p => p.Id == 1);
            person.Name.ShouldBe("Vincent");
            person.Id.ShouldBe(1);
            dbFixture.DbContext.ChangeTracker.Clear();
        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_Filter()
        {
            var persons = await genericRepository.FilterAsync(p => p.Id == 1);
            persons.Count.ShouldBe(1);
            persons.First().Id.ShouldBe(1);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_Add()
        {
            Person person = new Person
            {
                Email = "t@t.gmail",
                Name = "Vincent",
                AgePerson = new AgePerson(20)
            };
            await genericRepository.AddAsync(person);
            person.Id.ShouldNotBe(0);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_AddRange()
        {
            Person person = new Person
            {
                Email = "t@t.gmail",
                Name = "test",
                AgePerson = new AgePerson(20)
            };
            Person person2 = new Person
            {
                Email = "t@t.gmail",
                Name = "test2",
                AgePerson = new AgePerson(20)
            };
            await genericRepository.AddRangeAsync(new List<Person> { person, person2 });
            person.Id.ShouldNotBe(0);
            person2.Id.ShouldNotBe(0);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_Update()
        {
            Person person = new Person
            {
                Email = "t@t.gmail",
                Name = "Vincent",
                Id = 3,
                AgePerson = new AgePerson(30)
            };
            await genericRepository.UpdateAsync(person);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

    }
}
