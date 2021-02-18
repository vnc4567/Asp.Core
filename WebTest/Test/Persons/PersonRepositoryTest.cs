using Application.Common.Interfaces.Repositories;
using Domain;
using Infrastructure.Persistence.Repositories;
using Shouldly;
using System.Threading.Tasks;
using Test.Commons;
using Xunit;
using Application.Persons.Specifications;
using System.Linq;

namespace Test.Persons
{
    [Collection("DbContext collection")]
    public class PersonRepositoryTest  
    {
        private readonly IPersonRepository personRepositoryTest;
        private readonly DbContextFixture dbFixture;


        public PersonRepositoryTest(DbContextFixture dbFixture)
        {
            this.dbFixture = dbFixture;
            personRepositoryTest = new EfPersonRepository(dbFixture.DbContext);
        }


        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_GetPerson()
        {
                var person = await personRepositoryTest.GetPersonAsync(1);
                person.Name.ShouldBe("Vincent");
                person.Id.ShouldBe(1);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_GetPersonSpec()
        {
            var person = await personRepositoryTest.GetPersonAsync(new PrimaryKeySpecification(1));
            person.Name.ShouldBe("Vincent");
            person.Id.ShouldBe(1);
            dbFixture.DbContext.ChangeTracker.Clear();

        }
        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_UpdatePerson()
        {
            var person = new Person
            {
                Id=2,
                Name="Vincent",
                Email="tt",
            };
             await personRepositoryTest.UpdateAsync(person);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_FindPerson()
        {
            var persons = await personRepositoryTest.Find(new AgeSpecification(30));
            persons.Any().ShouldBe(true);
            dbFixture.DbContext.ChangeTracker.Clear();

        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_GetAllPerson()
        {
            var persons = await personRepositoryTest.GetAllAsync();
            dbFixture.DbContext.ChangeTracker.Clear();

        }
    }
}
