using Application.Common.Mappings;
using AutoMapper;
using Domain;
using FluentValidation;
using MediatR;

namespace Application.Persons.Commands
{
    public class UpdatePersonCommand : IRequest, IMapFrom<Person>
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }

        public void Mapping(Profile profile)
        {
            profile.CreateMap<UpdatePersonCommand, Person>()
                .ForMember(d => d.AgePerson, opt => opt.MapFrom(s => new AgePerson(s.Age)));

        }
    }

    public class PersonValidator : AbstractValidator<UpdatePersonCommand>
    {
        public PersonValidator()
        {
            RuleFor(x => x.Id).NotNull();
            RuleFor(x => x.Name).NotNull().Length(0, 10);
            RuleFor(x => x.Email).EmailAddress();
            RuleFor(x => x.Age).InclusiveBetween(18, 60);
        }
    }
}
