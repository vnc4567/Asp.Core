using Application;
using Application.Persons.Commands;
using FluentValidation;
using FluentValidation.AspNetCore;
using Infrastructure;
using Infrastructure.Persistence;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using NetCore.AutoRegisterDi;
using StackExchange.Profiling.Storage;
using System;
using System.Linq;
using System.Reflection;
using WebTest.Middlewares;
using StackExchange.Profiling;
namespace WebTest
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMiniProfiler(options =>
            {
                // All of this is optional. You can simply call .AddMiniProfiler() for all defaults

                // (Optional) Path to use for profiler URLs, default is /mini-profiler-resources
                options.RouteBasePath = "/profiler";

                // (Optional) Control storage
                // (default is 30 minutes in MemoryCacheStorage)
                (options.Storage as MemoryCacheStorage).CacheDuration = TimeSpan.FromMinutes(60);

                // (Optional) Control which SQL formatter to use, InlineFormatter is the default
                options.SqlFormatter = new StackExchange.Profiling.SqlFormatters.InlineFormatter();

                options.TrackConnectionOpenClose = true;
                options.ColorScheme = StackExchange.Profiling.ColorScheme.Auto;
                options.EnableMvcFilterProfiling = true;
                options.EnableMvcViewProfiling = true;
            }).AddEntityFramework();

            services.AddIdentity<IdentityUser, IdentityRole>()
                    .AddEntityFrameworkStores<TestContext>()
                    .AddDefaultTokenProviders();
            
            services.AddApplication();
            services.AddPersistence(Configuration);
            
            services.AddControllersWithViews();

            services.AddMvc().AddNToastNotifyToastr().AddRazorRuntimeCompilation()
                    .AddFluentValidation(
                        fv => fv.RegisterValidatorsFromAssemblyContaining<UpdatePersonCommandValidator>());
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseMiniProfiler();
            app.UseMiddleware<ErrorLoggingMiddleware>();
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseAuthentication();
            //loggerFactory.AddFile("Logs/mylog-{Date}.txt");
            app.UseNToastNotify();
            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
