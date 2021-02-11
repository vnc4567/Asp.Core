// Skipping function AddAsync(none), it contains poisonous unsupported syntaxes

// Skipping function FindAsync(none), it contains poisonous unsupported syntaxes

func @_Infrastructure.Persistence.Repositories.EfRepository$TEntity$.Update$TEntity$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :52 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :52 :27)
cbde.store %_user, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :52 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :54 :12) // Not a variable of known type: _entities
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :54 :29) // Not a variable of known type: user
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :54 :12) // _entities.Update(user) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :55 :12) // Not a variable of known type: _context
%5 = cbde.unknown : i32 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :55 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function FindReadOnlyAsync(none), it contains poisonous unsupported syntaxes

func @_Infrastructure.Persistence.Repositories.EfRepository$TEntity$.GenerateQuery$System.Linq.IQueryable$TEntity$.System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none, none) -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :64 :8) {
^entry (%_entities : none, %_func : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :64 :50)
cbde.store %_entities, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :64 :50)
%1 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :64 :80)
cbde.store %_func, %1 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :64 :80)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :66 :19) // Not a variable of known type: entities
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :66 :34) // Not a variable of known type: func
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :66 :19) // entities.Where(func) (InvocationExpression)
return %4 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfRepository.cs" :66 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function FilterReadOnlyAsync(none), it contains poisonous unsupported syntaxes

// Skipping function FilterAsync(none), it contains poisonous unsupported syntaxes

// Skipping function AddRangeAsync(none), it contains poisonous unsupported syntaxes

