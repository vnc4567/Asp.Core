using Microsoft.Extensions.DependencyInjection;
using Xunit;
using MediatR;

namespace IntegrationTest
{
    public class BaseIntegrationTest : IClassFixture<CustomWebAppFactory>
    {
        protected readonly IMediator Mediator;

        public BaseIntegrationTest(CustomWebAppFactory factory)
        {
            var scope = factory.Services.CreateScope();

            Mediator = scope.ServiceProvider.GetRequiredService<IMediator>();
        }
    }
}