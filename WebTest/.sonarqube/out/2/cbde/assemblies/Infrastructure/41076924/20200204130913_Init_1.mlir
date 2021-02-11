// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_Infrastructure.Migrations.Init.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200204130913_Init.cs" :25 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200204130913_Init.cs" :25 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200204130913_Init.cs" :25 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200204130913_Init.cs" :27 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200204130913_Init.cs" :28 :22) // "Person" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200204130913_Init.cs" :27 :12) // migrationBuilder.DropTable(                  name: "Person") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
