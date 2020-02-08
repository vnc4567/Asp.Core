using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Person.Queries
{
    public class GetAllPersonsQuery : IRequest<List<PersonVM>>
    {
    }
}
