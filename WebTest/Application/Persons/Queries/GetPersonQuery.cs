using Application.Common.Interfaces.Repositories;
using Application.Persons.Specifications;
using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Persons.Queries
{
    public class GetPersonQuery : IRequest<PersonVM>
    {
        public GetPersonQuery(int id) => Id = id;

        public int Id { get; set; }

    }
    public class GetPersonQueryHandler : IRequestHandler<GetPersonQuery, PersonVM>
    {
        private readonly IMapper _mapper;
        private readonly IPersonRepository _personRepository;

        public GetPersonQueryHandler(IMapper mapper, IPersonRepository personRepository)
        {
            _mapper = mapper;
            _personRepository = personRepository;
        }

        public async Task<PersonVM> Handle(GetPersonQuery request, CancellationToken cancellationToken)
        {
            PrimaryKeySpecification pkSpec = new PrimaryKeySpecification(request.Id);
            var result = await _personRepository.GetPersonAsync(pkSpec);
            return _mapper.Map<PersonVM>(result);
        }
    }

}
