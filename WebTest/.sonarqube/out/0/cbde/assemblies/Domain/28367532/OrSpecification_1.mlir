func @_Domain.Specifications.OrSpecification$T$.ToExpression$$() -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :20 :33) // Not a variable of known type: _left
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :20 :33) // _left.ToExpression() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :21 :34) // Not a variable of known type: _right
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :21 :34) // _right.ToExpression() (InvocationExpression)
// Entity from another assembly: Expression
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :22 :49) // typeof(T) (TypeOfExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :22 :28) // Expression.Parameter(typeof(T)) (InvocationExpression)
// Entity from another assembly: Expression
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :23 :45) // Not a variable of known type: leftExpression
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :23 :45) // leftExpression.Body (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :23 :66) // Not a variable of known type: rightExpression
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :23 :66) // rightExpression.Body (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :23 :27) // Expression.OrElse(leftExpression.Body, rightExpression.Body) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :24 :63) // Not a variable of known type: paramExpr
%16 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :24 :41) // new ParameterReplacer(paramExpr) (ObjectCreationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :24 :80) // Not a variable of known type: exprBody
%18 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :24 :41) // new ParameterReplacer(paramExpr).Visit(exprBody) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :24 :23) // (BinaryExpression)new ParameterReplacer(paramExpr).Visit(exprBody) (CastExpression)
// Entity from another assembly: Expression
%20 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :25 :61) // Not a variable of known type: exprBody
%21 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :25 :71) // Not a variable of known type: paramExpr
%22 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :25 :28) // Expression.Lambda<Func<T, bool>>(exprBody, paramExpr) (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :27 :19) // Not a variable of known type: finalExpr
return %24 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\OrSpecification.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
