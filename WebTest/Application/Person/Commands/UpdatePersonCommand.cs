using Application.Common.Mappings;
using MediatR;
using ServiceStack.FluentValidation.Attributes;
using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Person.Commands
{
    public class UpdatePersonCommand : IRequest,IMapFrom<Domain.Person>
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }
    }
}
