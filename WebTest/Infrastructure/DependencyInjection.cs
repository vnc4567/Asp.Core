using Application.Common.Interfaces;
using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using NetCore.AutoRegisterDi;
using NLog.Extensions.Logging;
using System.Reflection;

namespace Infrastructure
{
    public static class DependencyInjection
    {
        public static readonly ILoggerFactory MyLoggerFactory = LoggerFactory.Create(builder =>
        {
            builder
                .AddFilter((category, level) =>
                    category == DbLoggerCategory.Database.Command.Name
                    && level == LogLevel.Debug)
                .AddNLog();
        });
        public static IServiceCollection AddPersistence(this IServiceCollection services, IConfiguration configuration)
        {
            var currentAssembly = Assembly.GetExecutingAssembly();

            services.AddDbContext<TestContext>(options =>
            options.UseLoggerFactory(MyLoggerFactory)
            .UseSqlServer(configuration.GetConnectionString("TestDatabase")));

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
