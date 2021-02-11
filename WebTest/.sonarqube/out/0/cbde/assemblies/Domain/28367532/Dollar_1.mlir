func @_Domain.Dollar.Dollar.Times$decimal$(none) -> none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :14 :8) {
^entry (%_multiplier : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :14 :28)
cbde.store %_multiplier, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :14 :28)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :16 :30) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :16 :30) // this.Amount (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :16 :44) // Not a variable of known type: multiplier
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :16 :30) // Binary expression on unsupported types this.Amount * multiplier
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :16 :19) // new Dollar(this.Amount * multiplier) (ObjectCreationExpression)
return %5 : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :16 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Domain.Dollar.Dollar.Equals$object$(none) -> i1 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :18 :8) {
^entry (%_dollar : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :18 :36)
cbde.store %_dollar, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :18 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :19) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :19) // this.Amount (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :42) // Not a variable of known type: dollar
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :33) // (Dollar) dollar (CastExpression)
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :32) // ((Dollar) dollar).Amount (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :19) // comparison of unknown type: this.Amount==((Dollar) dollar).Amount
return %6 : i1 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Domain\\Dollar\\Dollar.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
