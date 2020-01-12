using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Person.Queries
{
    public class GetPersonQuery : IRequest<PersonVM>
    {
        public GetPersonQuery(int id) => Id = id;

        public int Id { get; set; }

    }
}
