func @_Infrastructure.Migrations.dbset.Up$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :6 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :6 :35)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :6 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :8 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :9 :22) // "PK_Person" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :10 :23) // "Person" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :8 :12) // migrationBuilder.DropPrimaryKey(                  name: "PK_Person",                  table: "Person") (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :12 :12) // Not a variable of known type: migrationBuilder
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :13 :22) // "Person" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :14 :25) // "Persons" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :12 :12) // migrationBuilder.RenameTable(                  name: "Person",                  newName: "Persons") (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :16 :12) // Not a variable of known type: migrationBuilder
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :17 :22) // "PK_Persons" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :18 :23) // "Persons" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :19 :24) // "Id" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :16 :12) // migrationBuilder.AddPrimaryKey(                  name: "PK_Persons",                  table: "Persons",                  column: "Id") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Infrastructure.Migrations.dbset.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :22 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :22 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :22 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :24 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :25 :22) // "PK_Persons" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :26 :23) // "Persons" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :24 :12) // migrationBuilder.DropPrimaryKey(                  name: "PK_Persons",                  table: "Persons") (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :28 :12) // Not a variable of known type: migrationBuilder
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :29 :22) // "Persons" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :30 :25) // "Person" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :28 :12) // migrationBuilder.RenameTable(                  name: "Persons",                  newName: "Person") (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :32 :12) // Not a variable of known type: migrationBuilder
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :33 :22) // "PK_Person" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :34 :23) // "Person" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :35 :24) // "Id" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200205143606_dbset.cs" :32 :12) // migrationBuilder.AddPrimaryKey(                  name: "PK_Person",                  table: "Person",                  column: "Id") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
