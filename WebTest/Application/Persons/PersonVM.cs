using Application.Common.Mappings;
using AutoMapper;
using Domain;
namespace Application.Persons
{
    public class PersonVM : IMapFrom<Person>
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }

        public void Mapping(Profile profile)
        {
            profile.CreateMap<Person, PersonVM>()
                .ForMember(d => d.Age, opt => opt.MapFrom(s => s.AgePerson.Value));
        }
    }
}
