using Application.Common.Interfaces.Repositories;
using Application.Persons.Commands;
using Domain;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Persons.Handlers
{
    public class UpdatePersonHandler : IRequestHandler<UpdatePersonCommand>
    {
        private readonly IPersonRepository _personRepository;

        public UpdatePersonHandler(IPersonRepository personRepository)
        {
            _personRepository = personRepository;
        }

        public async Task<Unit> Handle(UpdatePersonCommand request, CancellationToken cancellationToken)
        {
            Person person = new Person
            {
                AgePerson = new AgePerson(request.Age),
                Email = request.Email,
                Name = request.Name,
                Id = request.Id
            };

            await _personRepository.UpdateAsync(person);
            return Unit.Value;
        }
    }
}
