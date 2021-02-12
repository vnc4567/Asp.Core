using Application.Common.Interfaces.Repositories;
using Application.Persons.Commands;
using Application.Persons.Handlers;
using AutoFixture;
using AutoFixture.AutoNSubstitute;
using Domain;
using NSubstitute;
using System.Threading.Tasks;
using Xunit;
using Shouldly;
using Domain.Common;


namespace Test.Persons
{
    public class UpdatePersonHandlerTest
    {
        private readonly Fixture fixture;
        private readonly IPersonRepository personRepository;
        private readonly UpdatePersonHandler sut;
        public UpdatePersonHandlerTest()
        {
            fixture = new Fixture();
            fixture.Customize(new AutoNSubstituteCustomization());
            personRepository = fixture.Freeze<IPersonRepository>();
            sut = fixture.Create<UpdatePersonHandler>();
        }

        [Fact]
        [Trait("Catégorie","Unit")]
        public async Task Should_UpdatePerson()
        {
            UpdatePersonCommand request = fixture.Build<UpdatePersonCommand>()
                                                .With(p=>p.Age,18)
                                                .With(p=>p.Name,"Vincent")
                                                .With(p=>p.Email,"totogmail.com")
                                                .Create();

            await sut.Handle(request, new System.Threading.CancellationToken());
            await personRepository.Received().UpdateAsync(Arg.Any<Person>());
        }

        [Fact]
        [Trait("Catégorie", "Unit")]
        public async Task Should_ThrowException_WhenPersonNotValid()
        {
            UpdatePersonCommand request = fixture.Build<UpdatePersonCommand>()
                                                .With(p => p.Age, 17)
                                                .With(p => p.Name, "Vincent")
                                                .With(p => p.Email, "totogmail.com")
                                                .Create();

            await Should.ThrowAsync<BusinessException>(() => sut.Handle(request, new System.Threading.CancellationToken()));
        }
    }
}
