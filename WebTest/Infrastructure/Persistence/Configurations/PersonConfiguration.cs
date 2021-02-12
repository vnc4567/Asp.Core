using Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PersonConfiguration : IEntityTypeConfiguration<Person>
    {
        public void Configure(EntityTypeBuilder<Person> builder)
        {
            builder.OwnsOne(u => u.AgePerson, b =>
            {
                b.Property(e => e.Value).HasConversion<int>();
            });
            builder.Property(e => e.Email).HasMaxLength(50);
        }
    }
}
