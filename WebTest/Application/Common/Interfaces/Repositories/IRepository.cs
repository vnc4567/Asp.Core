﻿using Domain.Common;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Application.Common.Interfaces.Repositories
{
    public interface IRepository<TEntity> where TEntity : IEntity
    {
        ICollection<string> Includes { get; set; }
        Task<TEntity> FindAsync(Expression<Func<TEntity, bool>> func);
        Task<TEntity> AddAsync(TEntity entity);
        Task AddRangeAsync(IEnumerable<TEntity> entities);
        Task UpdateAsync(TEntity entity);
        Task<ICollection<TEntity>> FilterAsync(Expression<Func<TEntity, bool>> func);
    }
}
