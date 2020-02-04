using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Common.Interfaces
{
    public interface ITestDbContext
    {
        void BeginTransactionAsync();
        void CommitTransactionAsync();
        void RollbackTransaction();

    }
}
