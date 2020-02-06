using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Common.Interfaces
{
    public interface ITestDbContext
    {
        void BeginTransaction();
        void CommitTransaction();
        void RollbackTransaction();

    }
}
