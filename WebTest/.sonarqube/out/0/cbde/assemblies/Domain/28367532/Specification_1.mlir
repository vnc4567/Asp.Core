func @_Domain.Specifications.Specification$T$.IsSatisfiedBy$T$(none) -> i1 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :11 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :11 :34)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :11 :34)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ToExpression
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :13 :38) // ToExpression() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :13 :38) // ToExpression().Compile() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :14 :19) // Not a variable of known type: predicate
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :14 :29) // Not a variable of known type: entity
%6 = cbde.unknown : i1 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :14 :19) // predicate(entity) (InvocationExpression)
return %6 : i1 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :14 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Domain.Specifications.Specification$T$.And$Domain.Specifications.Specification$T$$(none) -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :16 :8) {
^entry (%_specification : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :16 :36)
cbde.store %_specification, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :16 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :18 :43) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :18 :49) // Not a variable of known type: specification
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :18 :19) // new AndSpecification<T>(this, specification) (ObjectCreationExpression)
return %3 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Domain.Specifications.Specification$T$.Or$Domain.Specifications.Specification$T$$(none) -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :20 :8) {
^entry (%_specification : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :20 :35)
cbde.store %_specification, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :20 :35)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :22 :42) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :22 :48) // Not a variable of known type: specification
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :22 :19) // new OrSpecification<T>(this, specification) (ObjectCreationExpression)
return %3 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Specifications\\Specification.cs" :22 :12)

^1: // ExitBlock
cbde.unreachable

}
