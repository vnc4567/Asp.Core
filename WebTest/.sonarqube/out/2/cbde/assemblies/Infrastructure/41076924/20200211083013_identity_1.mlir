// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_Infrastructure.Migrations.identity.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :194 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :194 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :194 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :196 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :197 :22) // "AspNetRoleClaims" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :196 :12) // migrationBuilder.DropTable(                  name: "AspNetRoleClaims") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :199 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :200 :22) // "AspNetUserClaims" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :199 :12) // migrationBuilder.DropTable(                  name: "AspNetUserClaims") (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :202 :12) // Not a variable of known type: migrationBuilder
%8 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :203 :22) // "AspNetUserLogins" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :202 :12) // migrationBuilder.DropTable(                  name: "AspNetUserLogins") (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :205 :12) // Not a variable of known type: migrationBuilder
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :206 :22) // "AspNetUserRoles" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :205 :12) // migrationBuilder.DropTable(                  name: "AspNetUserRoles") (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :208 :12) // Not a variable of known type: migrationBuilder
%14 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :209 :22) // "AspNetUserTokens" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :208 :12) // migrationBuilder.DropTable(                  name: "AspNetUserTokens") (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :211 :12) // Not a variable of known type: migrationBuilder
%17 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :212 :22) // "AspNetRoles" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :211 :12) // migrationBuilder.DropTable(                  name: "AspNetRoles") (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :214 :12) // Not a variable of known type: migrationBuilder
%20 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :215 :22) // "AspNetUsers" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\Migrations\\20200211083013_identity.cs" :214 :12) // migrationBuilder.DropTable(                  name: "AspNetUsers") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
