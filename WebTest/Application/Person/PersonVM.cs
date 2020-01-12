using Application.Common.Mappings;
using AutoMapper;
using ServiceStack.FluentValidation.Attributes;
using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Person
{
	[Validator(typeof(PersonValidator))]
	public class PersonVM : IMapFrom<Domain.Person>
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Email { get; set; }
		public int Age { get; set; }

		public void Mapping(Profile profile)
		{
			profile.CreateMap<Domain.Person, PersonVM>()
				.ForMember(d => d.Id, opt => opt.MapFrom(s => s.Id));
		}

	}
}
