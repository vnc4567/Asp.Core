using Domain.Common;

namespace Domain
{
    public record AgePerson()
    {
        public int Value { get; }

        public AgePerson(int value): this()
        {
            if (value < 18 || value > 60)
                throw new BusinessException("L'age doit être compris entre 18 et 60");

            Value = value;
        }

    }
}
