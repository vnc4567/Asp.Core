using MediatR;
using System.Collections.Generic;

namespace Application.Person.Queries
{
    public class GetAllPersonsQuery : IRequest<List<PersonVM>>
    {
    }
}
