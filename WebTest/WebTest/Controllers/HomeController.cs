using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Application.Person;
using Application.Person.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebTest.Models;

namespace WebTest.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IMediator _mediator;

        public HomeController(ILogger<HomeController> logger, IMediator mediator)
        {
            _logger = logger;
            _mediator = mediator;
        }

        public async Task<IActionResult> Index()
        {
            GetPersonQuery query = new GetPersonQuery(2);
            var  result = await _mediator.Send(query);
            return View(result);
        }

        public async Task<IActionResult> Update(PersonVM model)
        {
            //TODO create command
            GetPersonQuery query = new GetPersonQuery(2);
            var result = await _mediator.Send(query);
            return View(result);
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
