namespace Application.Common.Interfaces
{
    public interface ITestDbContext
    {
        void BeginTransaction();
        void CommitTransaction();
        void RollbackTransaction();

    }
}
