using Domain.Common;

namespace Domain
{
    public class Person : IEntity
    {
        public int Id { get; init; }
        public string Name { get; init; }
        public string Email { get; init; }
        public AgePerson AgePerson { get; init; }
        public string Adresse { get; init; }
        public string Adresse2 { get; init; }

        public Person() { }
        public Person(int id, string name, string email, AgePerson age, string adresse, string adresse2)
        {
            Id = id;
            Name = name;
            Email = email;
            AgePerson = age;
            Adresse = adresse;
            Adresse2 = adresse2;
        }
    }
}
