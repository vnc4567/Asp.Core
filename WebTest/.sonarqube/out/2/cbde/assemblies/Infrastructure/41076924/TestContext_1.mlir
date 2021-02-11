func @_Infrastructure.Persistence.TestContext.BeginTransaction$$() -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :18 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :20 :27) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :20 :27) // this.Database (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :20 :27) // this.Database.BeginTransaction() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Infrastructure.Persistence.TestContext.CommitTransaction$$() -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :23 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :25 :12) // Not a variable of known type: _transaction
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :25 :12) // _transaction.Commit() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Infrastructure.Persistence.TestContext.RollbackTransaction$$() -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :28 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :30 :12) // Not a variable of known type: _transaction
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :30 :12) // _transaction.Rollback() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Infrastructure.Persistence.TestContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :33 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :33 :48)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :33 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :35 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :35 :33) // Not a variable of known type: modelBuilder
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :35 :12) // base.OnModelCreating(modelBuilder) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :36 :12) // Not a variable of known type: modelBuilder
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :36 :57) // typeof(TestContext) (TypeOfExpression)
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :36 :57) // typeof(TestContext).Assembly (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\TestContext.cs" :36 :12) // modelBuilder.ApplyConfigurationsFromAssembly(typeof(TestContext).Assembly) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
