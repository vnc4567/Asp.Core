using FluentValidation;

namespace Application.Persons
{
    public class PersonValidator : AbstractValidator<PersonVM>
    {
        public PersonValidator()
        {
            RuleFor(x => x.Id).NotNull().InclusiveBetween(18, 60);
            RuleFor(x => x.Name).NotNull().Length(0, 10);
            RuleFor(x => x.Email).EmailAddress();
            RuleFor(x => x.Age).InclusiveBetween(18, 60);
        }
    }
}
