using System.Collections.Generic;
using System.Threading.Tasks;
using Application.Persons;
using Application.Persons.Queries;
using FluentAssertions;
using Xunit;

namespace IntegrationTest
{

    public class PersonTest : BaseIntegrationTest
    {
        public PersonTest(CustomWebAppFactory factory) : base(factory)
        {
        }

        [Fact]
        public async Task Should_GetPersons()
        {
            GetAllPersonsQuery query = new GetAllPersonsQuery();

            List<PersonVM> persons = await Mediator.Send(query);

            persons.Should().NotBeEmpty();
        }
    }
}