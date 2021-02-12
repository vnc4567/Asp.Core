using Application.Common.Interfaces.Repositories;
using Application.Persons.Queries;
using AutoFixture;
using AutoFixture.AutoNSubstitute;
using Domain;
using Domain.Specifications;
using NSubstitute;
using System.Threading.Tasks;
using Xunit;

namespace Test.Persons
{
    public class GetPersonHandlerTest
    {
        private readonly Fixture fixture;
        private readonly IPersonRepository personRepository;
        private readonly GetPersonQueryHandler sut;

        public GetPersonHandlerTest()
        {
            fixture = new Fixture();
            fixture.Customize(new AutoNSubstituteCustomization());
            personRepository = fixture.Freeze<IPersonRepository>();
            sut = fixture.Create<GetPersonQueryHandler>();
        }

        [Fact]
        [Trait("Catégorie", "Unit")]
        public async Task Should_UpdatePerson()
        {
            Person person = fixture.Create<Person>(); 
            personRepository.GetPersonAsync(Arg.Any<Specification<Person>>()).Returns(person);
            await sut.Handle(new GetPersonQuery(1), new System.Threading.CancellationToken());
            await personRepository.Received().GetPersonAsync(Arg.Any<Specification<Person>>());
        }
    }
}
