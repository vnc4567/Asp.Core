using Application.Common.Interfaces.Repositories;
using Application.Persons.Commands;
using AutoMapper;
using MediatR;

namespace Application.Persons.Handlers
{
    public class UpdatePersonHandler : RequestHandler<UpdatePersonCommand>
    {
        private readonly IPersonRepository _personRepository;
        private readonly IMapper _mapper;

        public UpdatePersonHandler(IMapper mapper, IPersonRepository personRepository)
        {
            _mapper = mapper;
            _personRepository = personRepository;
        }
        protected override void Handle(UpdatePersonCommand request)
        {
            var person = _mapper.Map<Domain.Person>(request);
            _personRepository.Update(person);
        }
    }
}
