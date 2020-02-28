using Application.Persons.Commands;
using Application.Persons.Queries;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Diagnostics;
using System.Threading.Tasks;
using WebTest.Models;

namespace WebTest.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(ILogger<HomeController> logger, IMediator mediator) : base(logger, mediator)
        {
        }

        public async Task<IActionResult> Index()
        {
            GetPersonQuery query = new GetPersonQuery(1);
            var result = await _mediator.Send(query);
            return View(result);
        }

        [ProducesDefaultResponseType]
        public async Task<IActionResult> Update(UpdatePersonCommand model)
        {
            await _mediator.Send(model);
            return RedirectToAction("Index");
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
