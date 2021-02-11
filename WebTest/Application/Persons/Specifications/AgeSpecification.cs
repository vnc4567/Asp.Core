using Domain;
using Domain.Specifications;
using System;
using System.Linq.Expressions;

namespace Application.Persons.Specifications
{
    class AgeSpecification : Specification<Person>
    {
        private readonly int _age;
        public AgeSpecification(int age)
        {
            _age = age;
        }

        public override Expression<Func<Person, bool>> ToExpression() =>
            person => person.Age == _age;

    }
}
