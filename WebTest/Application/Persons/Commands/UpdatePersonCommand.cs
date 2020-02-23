using Application.Common.Mappings;
using MediatR;

namespace Application.Persons.Commands
{
    public class UpdatePersonCommand : IRequest, IMapFrom<Domain.Person>
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }
    }
}
