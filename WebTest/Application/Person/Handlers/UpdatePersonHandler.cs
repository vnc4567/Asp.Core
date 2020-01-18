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

        protected override void Handle(UpdatePersonCommand request)
        {
            Domain.Person person = new Domain.Person
            {
                Age=request.Age,
                Email=request.Email
            };

            //saveChanges

        }
    }
}
