using Application.Common.Interfaces.Repositories;
using Application.Person.Queries;
using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Person.Handlers
{
    public class GetPersonQueryHandler : IRequestHandler<GetPersonQuery, PersonVM>
    {
        private readonly IMapper _mapper;
        private readonly IPersonRepository _personRepository;

        public GetPersonQueryHandler( IMapper mapper,IPersonRepository personRepository)
        {
            _mapper = mapper;
            _personRepository = personRepository;
        }

        public async Task<PersonVM> Handle(GetPersonQuery request, CancellationToken cancellationToken)
        {
            var result = await _personRepository.GetPerson(request.Id);
            return _mapper.Map<PersonVM>(result);
        }
    }
}
