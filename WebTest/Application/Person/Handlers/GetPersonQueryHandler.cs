using Application.Person.Queries;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Person.Handlers
{
    public class GetPersonQueryHandler : IRequestHandler<GetPersonQuery, PersonVM>
    {
        private readonly IMapper _mapper;

        public GetPersonQueryHandler( IMapper mapper)
        {
            _mapper = mapper;
        }

        public async Task<PersonVM> Handle(GetPersonQuery request, CancellationToken cancellationToken)
        {
            Domain.Person entity = new Domain.Person
            {
                Id = request.Id,
                Name = "Vincent",
                Adresse="totot"
            };
            return _mapper.Map<PersonVM>(entity);
        }
    }
}
