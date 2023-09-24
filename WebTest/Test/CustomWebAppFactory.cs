using System.Linq;
using System.Threading.Tasks;
using Infrastructure.Persistence;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.VisualStudio.TestPlatform.TestHost;
using Testcontainers.MsSql;
using Xunit;

namespace IntegrationTest
{
    public class CustomWebAppFactory : WebApplicationFactory<WebTest.Program>, IAsyncLifetime
    {
        private readonly MsSqlContainer _dbContainer = new MsSqlBuilder().WithImage("mcr.microsoft.com/mssql/server")
                                                                         .WithCleanUp(true)
                                                                         .Build();

        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            builder.ConfigureServices(services =>
            {
                ServiceDescriptor? descriptor =
                    services.SingleOrDefault(s => s.ServiceType == typeof(DbContextOptions<TestContext>));

                if (descriptor is not null)
                {
                    services.Remove(descriptor);
                }

                services.AddDbContext<TestContext>(opt => { opt.UseSqlServer(_dbContainer.GetConnectionString()); });
            });
        }

        public async Task InitializeAsync()
        {
            await _dbContainer.StartAsync();
            using var scope = Services.CreateScope();
            var dbContext = scope.ServiceProvider.GetRequiredService<TestContext>();
            await dbContext.Database.MigrateAsync();
        }

        public Task DisposeAsync()
        {
            return _dbContainer.StopAsync();
        }
    }
}