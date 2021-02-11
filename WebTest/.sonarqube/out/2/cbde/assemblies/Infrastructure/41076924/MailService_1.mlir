func @_Infrastructure.MailService.MailService.SendEmailAsync$string.string$(none, none) -> () loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :10 :8) {
^entry (%_recipient : none, %_body : none):
%0 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :10 :35)
cbde.store %_recipient, %0 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :10 :35)
%1 = cbde.alloca none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :10 :53)
cbde.store %_body, %1 : memref<none> loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :10 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :12 :32) // new SmtpClient() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :13 :12) // Not a variable of known type: client
%5 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :13 :12) // client.DeliveryMethod (SimpleMemberAccessExpression)
// Entity from another assembly: SmtpDeliveryMethod
%6 = constant unit loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :13 :36) // SmtpDeliveryMethod.               SpecifiedPickupDirectory (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :15 :12) // Not a variable of known type: client
%8 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :15 :12) // client.PickupDirectoryLocation (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :15 :45) // @"C:\Test" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :17 :12) // Not a variable of known type: client
%11 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :17 :24) // "test@localhost" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :17 :41) // Not a variable of known type: recipient
%13 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :18 :19) // "Confirm your email" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :19 :15) // Not a variable of known type: body
%15 = cbde.unknown : none loc("C:\\Users\\benaz\\source\\repos\\Asp.Core\\WebTest\\Infrastructure\\MailService\\MailService.cs" :17 :12) // client.Send("test@localhost",recipient,                     "Confirm your email",                 body) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
