using Application.Common.Mappings;

namespace Application.Persons
{
    public class PersonVM : IMapFrom<Domain.Person>
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }


    }
}
