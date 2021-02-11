using Application.Common.Interfaces.Repositories;
using Application.Persons.Queries;
using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Persons.Handlers
{
    public class GetAllPersonsQueryHandler : IRequestHandler<GetAllPersonsQuery, List<PersonVM>>
    {
        private readonly IMapper _mapper;
        private readonly IPersonRepository _personRepository;

        public GetAllPersonsQueryHandler(IMapper mapper, IPersonRepository personRepository)
        {
            _mapper = mapper;
            _personRepository = personRepository;
        }

        public async Task<List<PersonVM>> Handle(GetAllPersonsQuery request, CancellationToken cancellationToken)
        {
            var result = await _personRepository.GetAll();
            return _mapper.Map<List<PersonVM>>(result);
        }
    }
}
