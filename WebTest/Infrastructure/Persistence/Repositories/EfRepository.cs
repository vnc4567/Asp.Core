using Application.Common.Interfaces.Repositories;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using Domain.Common;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Persistence.Repositories
{
    public class EfRepository<TEntity> : IRepository<TEntity>
             where TEntity : class, IEntity
    {
        private readonly TestContext _context;
        private readonly DbSet<TEntity> _entities;
        private readonly IConfigurationProvider _configuration;

        private IQueryable<TEntity> _readonlyEntities => _entities.AsNoTracking();
        public ICollection<string> Includes { get; set; } = new List<string>();

        public EfRepository(TestContext context, IConfigurationProvider configuration)
        {
            this._context = context;
            this._entities = context.Set<TEntity>();
            _configuration = configuration;
        }

        public async Task<TEntity> AddAsync(TEntity entity)
        {
            await _context.AddAsync(entity);
            await _context.SaveChangesAsync();

            return entity;
        }

        public async Task<TEntity> FindAsync(Expression<Func<TEntity, bool>> func)
        {
            var query = GenerateQuery(_entities.AsQueryable(), func);

            foreach (var include in Includes)
            {
                query = query.Include(include);
            }

            return await query.SingleOrDefaultAsync();
        }


        public void Update(TEntity user)
        {
            _entities.Update(user);
            _context.SaveChanges();
        }

        public async Task<TReturn> FindReadOnlyAsync<TReturn>(Expression<Func<TEntity, bool>> func)
        {
            return await GenerateQuery(_readonlyEntities, func)
                .ProjectTo<TReturn>(_configuration).SingleOrDefaultAsync();
        }

        private IQueryable<TEntity> GenerateQuery(IQueryable<TEntity> entities, Expression<Func<TEntity, bool>> func)
        {
            return entities.Where(func);
        }

        public async Task<ICollection<TReturn>> FilterReadOnlyAsync<TReturn>(Expression<Func<TEntity, bool>> func)
        {
            return await GenerateQuery(_readonlyEntities, func).ProjectTo<TReturn>(_configuration).ToListAsync();
        }

        public async Task<ICollection<TEntity>> FilterAsync(Expression<Func<TEntity, bool>> func)
        {
            var query = GenerateQuery(_entities, func);

            foreach (var include in Includes)
            {
                query = query.Include(include);
            }

            return await query.ToListAsync();
        }

        public async Task AddRangeAsync(IEnumerable<TEntity> entities)
        {
            await _entities.AddRangeAsync(entities);
            await _context.SaveChangesAsync();
        }
    }
}
