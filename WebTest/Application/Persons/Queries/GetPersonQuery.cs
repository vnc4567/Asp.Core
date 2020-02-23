using MediatR;

namespace Application.Persons.Queries
{
    public class GetPersonQuery : IRequest<PersonVM>
    {
        public GetPersonQuery(int id) => Id = id;

        public int Id { get; set; }

    }
}
