using Xunit;

namespace Test.Commons
{
    [CollectionDefinition("DbContext collection")]
    public class DbContextCollection : ICollectionFixture<DbContextFixture>
    {
    }
}
