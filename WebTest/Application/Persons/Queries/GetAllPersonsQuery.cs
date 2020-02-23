using MediatR;
using System.Collections.Generic;

namespace Application.Persons.Queries
{
    public class GetAllPersonsQuery : IRequest<List<PersonVM>>
    {
    }
}
