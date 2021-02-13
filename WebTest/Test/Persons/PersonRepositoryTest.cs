using Application.Common.Interfaces.Repositories;
using Infrastructure.Persistence.Repositories;
using Shouldly;
using System.Threading.Tasks;
using Test.Commons;
using Xunit;

namespace Test.Persons
{
    public class PersonRepositoryTest 
    {
        private readonly IPersonRepository personRepositoryTest;

        public PersonRepositoryTest()
        {
            personRepositoryTest = Utilities.GetInMemoryRepository<EfPersonRepository>();
        }

        [Fact]
        [Trait("Catégorie", "Integration")]
        public async Task Should_GetPerson()
        {
                var person = await personRepositoryTest.GetPersonAsync(1);
                person.Name.ShouldBe("Vincent");
                person.Id.ShouldBe(1);
        }

    }
}
