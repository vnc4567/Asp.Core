// Skipping function GetAll(), it contains poisonous unsupported syntaxes

// Skipping function GetPerson(i32), it contains poisonous unsupported syntaxes

// Skipping function Find(none), it contains poisonous unsupported syntaxes

// Skipping function GetPerson(none), it contains poisonous unsupported syntaxes

func @_Infrastructure.Persistence.Repositories.EfPersonRepository.Update$Domain.Person$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :36 :8) {
^entry (%_person : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :36 :27)
cbde.store %_person, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :36 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :38 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :38 :12) // _context.Persons (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :38 :36) // Not a variable of known type: person
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :38 :12) // _context.Persons.Update(person) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :39 :12) // Not a variable of known type: _context
%6 = cbde.unknown : i32 loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Persistence\\Repositories\\EfPersonRepository.cs" :39 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
