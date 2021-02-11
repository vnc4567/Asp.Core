using Domain;
using Domain.Specifications;
using System;
using System.Linq.Expressions;

namespace Application.Persons.Specifications
{
    class PrimaryKeySpecification : Specification<Person>
    {
        private readonly int _id;
        public PrimaryKeySpecification(int id)
        {
            _id = id;
        }

        public override Expression<Func<Person, bool>> ToExpression() =>
            person => person.Id == _id;

    }
}