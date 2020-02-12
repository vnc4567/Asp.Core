using Application.Common.Interfaces;
using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using NetCore.AutoRegisterDi;
using System.Reflection;

namespace Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddPersistence(this IServiceCollection services, IConfiguration configuration)
        {
            var currentAssembly = Assembly.GetExecutingAssembly();

            services.AddDbContext<TestContext>(options =>
                options.UseSqlServer(configuration.GetConnectionString("TestDatabase")));

            services.RegisterAssemblyPublicNonGenericClasses(currentAssembly)
               .Where(c => c.Name.EndsWith("Repository"))
               .AsPublicImplementedInterfaces();

            services.RegisterAssemblyPublicNonGenericClasses(currentAssembly)
                .Where(c => c.Name.EndsWith("Service"))
                .AsPublicImplementedInterfaces();

            services.AddScoped<ITestDbContext>(provider => provider.GetService<TestContext>());
            return services;
        }
    }
}
