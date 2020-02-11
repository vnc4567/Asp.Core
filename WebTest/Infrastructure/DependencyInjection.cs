using Application.Common.Interfaces;
using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddPersistence(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<TestContext>(options =>
                options.UseSqlServer(configuration.GetConnectionString("TestDatabase")));

            services.AddScoped<ITestDbContext>(provider => provider.GetService<TestContext>());
            return services;
        }
    }
}
