using ServiceStack.FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Person
{
	public class PersonValidator : AbstractValidator<Person>
	{
		public PersonValidator()
		{
			RuleFor(x => x.Id).NotNull();
			RuleFor(x => x.Name).Length(0, 10);
			RuleFor(x => x.Email).EmailAddress();
			RuleFor(x => x.Age).InclusiveBetween(18, 60);
		}
	}
}
