using Application.Common.Interfaces.Repositories;
using Application.Person.Commands;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Person.Handlers
{
    public class UpdatePersonHandler : RequestHandler<UpdatePersonCommand>
    {
        private readonly IPersonRepository _personRepository;

        public UpdatePersonHandler(IPersonRepository personRepository)
        {
            _personRepository = personRepository;
        }
        protected override void Handle(UpdatePersonCommand request)
        {
            Domain.Person person = new Domain.Person
            {
                Id = request.Id,
                Age=request.Age,
                Email=request.Email,
                Name=request.Name
            };
            _personRepository.Update(person);
        }
    }
}
