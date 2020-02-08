using Application.Person.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebTest.ViewComponents
{
    public class PersonViewComponent : ViewComponent
    {
        private readonly IMediator _mediator;
        public PersonViewComponent(IMediator mediator)
        {
            _mediator = mediator;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var listPersons = await _mediator.Send(new GetAllPersonsQuery());
            return View("_PrintAll",listPersons);
        }
    }
}
