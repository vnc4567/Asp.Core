func @_Domain.Specifications.AndSpecification$T$.ToExpression$$() -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :19 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :21 :55) // Not a variable of known type: _left
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :21 :55) // _left.ToExpression() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :22 :56) // Not a variable of known type: _right
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :22 :56) // _right.ToExpression() (InvocationExpression)
// Entity from another assembly: Expression
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :24 :49) // typeof(T) (TypeOfExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :24 :28) // Expression.Parameter(typeof(T)) (InvocationExpression)
// Entity from another assembly: Expression
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :25 :46) // Not a variable of known type: leftExpression
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :25 :46) // leftExpression.Body (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :25 :67) // Not a variable of known type: rightExpression
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :25 :67) // rightExpression.Body (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :25 :27) // Expression.AndAlso(leftExpression.Body, rightExpression.Body) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :26 :63) // Not a variable of known type: paramExpr
%16 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :26 :41) // new ParameterReplacer(paramExpr) (ObjectCreationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :26 :80) // Not a variable of known type: exprBody
%18 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :26 :41) // new ParameterReplacer(paramExpr).Visit(exprBody) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :26 :23) // (BinaryExpression)new ParameterReplacer(paramExpr).Visit(exprBody) (CastExpression)
// Entity from another assembly: Expression
%20 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :27 :61) // Not a variable of known type: exprBody
%21 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :27 :71) // Not a variable of known type: paramExpr
%22 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :27 :28) // Expression.Lambda<Func<T, bool>>(exprBody, paramExpr) (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :29 :19) // Not a variable of known type: finalExpr
return %24 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\AndSpecification.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
