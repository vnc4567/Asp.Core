func @_Application.DependencyInjection.AddApplication$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :10 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :10 :56)
cbde.store %_services, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :10 :56)
br ^0

^0: // JumpBlock
// Entity from another assembly: Assembly
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :12 :34) // Assembly.GetExecutingAssembly() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :13 :12) // Not a variable of known type: services
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :13 :35) // Not a variable of known type: currentAssembly
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :13 :12) // services.AddAutoMapper(currentAssembly) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :14 :12) // Not a variable of known type: services
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :14 :32) // Not a variable of known type: currentAssembly
%8 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :14 :12) // services.AddMediatR(currentAssembly) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :15 :12) // Not a variable of known type: services
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :15 :34) // typeof(IPipelineBehavior<,>) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :15 :64) // typeof(RequestPerformanceBehavior<,>) (TypeOfExpression)
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :15 :12) // services.AddTransient(typeof(IPipelineBehavior<,>), typeof(RequestPerformanceBehavior<,>)) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :16 :12) // Not a variable of known type: services
%14 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :16 :34) // typeof(IPipelineBehavior<,>) (TypeOfExpression)
%15 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :16 :64) // typeof(RequestValidationBehavior<,>) (TypeOfExpression)
%16 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :16 :12) // services.AddTransient(typeof(IPipelineBehavior<,>), typeof(RequestValidationBehavior<,>)) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :17 :12) // Not a variable of known type: services
%18 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :17 :34) // typeof(IPipelineBehavior<,>) (TypeOfExpression)
%19 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :17 :64) // typeof(TransactionBehavior<,>) (TypeOfExpression)
%20 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :17 :12) // services.AddTransient(typeof(IPipelineBehavior<,>), typeof(TransactionBehavior<,>)) (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :19 :19) // Not a variable of known type: services
return %21 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Application\\DependencyInjection.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
