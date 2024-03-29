﻿using Domain;
using Domain.Specifications;
using System;
using System.Linq.Expressions;

namespace Application.Persons.Specifications
{
    public class AgeSpecification : Specification<Person>
    {
        private readonly int _age;
        public AgeSpecification(int age)
        {
            _age = age;
        }

        public override Expression<Func<Person, bool>> ToExpression() =>
            person => person.AgePerson.Value == _age;

    }
}
