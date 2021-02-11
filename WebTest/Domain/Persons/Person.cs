using Domain.Common;

namespace Domain
{
    public class Person : IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }
        public string Adresse { get; set; }
        public string Adresse2 { get; set; }
    }
}
