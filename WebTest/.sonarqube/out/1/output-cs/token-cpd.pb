Ì
gC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Behaviors\RequestPerformanceBehavior.cs
	namespace 	
Application
 
. 
Common 
. 
	Behaviors &
{ 
public		 

class		 &
RequestPerformanceBehavior		 +
<		+ ,
TRequest		, 4
,		4 5
	TResponse		6 ?
>		? @
:		A B
IPipelineBehavior		C T
<		T U
TRequest		U ]
,		] ^
	TResponse		_ h
>		h i
{

 
private 
readonly 
	Stopwatch "
_timer# )
;) *
private 
readonly 
ILogger  
<  !
TRequest! )
>) *
_logger+ 2
;2 3
public &
RequestPerformanceBehavior )
() *
ILogger* 1
<1 2
TRequest2 :
>: ;
logger< B
)B C
{ 	
_timer 
= 
new 
	Stopwatch "
(" #
)# $
;$ %
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
	TResponse #
># $
Handle% +
(+ ,
TRequest, 4
request5 <
,< =
CancellationToken> O
cancellationTokenP a
,a b"
RequestHandlerDelegatec y
<y z
	TResponse	z ƒ
>
ƒ „
next
… ‰
)
‰ Š
{ 	
_timer 
. 
Start 
( 
) 
; 
var 
response 
= 
await  
next! %
(% &
)& '
;' (
_timer 
. 
Stop 
( 
) 
; 
if 
( 
_timer 
. 
ElapsedMilliseconds *
>+ ,
$num- 0
)0 1
{ 
var 
name 
= 
typeof !
(! "
TRequest" *
)* +
.+ ,
Name, 0
;0 1
_logger 
. 

LogWarning "
(" #
$"# %
La requÃªte % 0
{0 1
name1 5
}5 6
 a mis 6 =
{= >
_timer> D
.D E
ElapsedMillisecondsE X
}X Y
 msY \
"\ ]
)] ^
;^ _
} 
return!! 
response!! 
;!! 
}"" 	
}## 
}$$ ß
fC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Behaviors\RequestValidationBehavior.cs
	namespace 	
Application
 
. 
Common 
. 
	Behaviors &
{		 
public

 

class

 %
RequestValidationBehavior

 *
<

* +
TRequest

+ 3
,

3 4
	TResponse

5 >
>

> ?
:

@ A
IPipelineBehavior

B S
<

S T
TRequest

T \
,

\ ]
	TResponse

^ g
>

g h
where 
TRequest 
: 
IRequest $
<$ %
	TResponse% .
>. /
{ 
private 
readonly 
IEnumerable $
<$ %

IValidator% /
</ 0
TRequest0 8
>8 9
>9 :
_validators; F
;F G
public %
RequestValidationBehavior (
(( )
IEnumerable) 4
<4 5

IValidator5 ?
<? @
TRequest@ H
>H I
>I J

validatorsK U
)U V
{ 	
_validators 
= 

validators $
;$ %
} 	
public 
Task 
< 
	TResponse 
> 
Handle %
(% &
TRequest& .
request/ 6
,6 7
CancellationToken8 I
cancellationTokenJ [
,[ \"
RequestHandlerDelegate] s
<s t
	TResponset }
>} ~
next	 ƒ
)
ƒ „
{ 	
var 
context 
= 
new 
ValidationContext /
(/ 0
request0 7
)7 8
;8 9
var 
failures 
= 
_validators &
. 
Select 
( 
v 
=> 
v 
. 
Validate '
(' (
context( /
)/ 0
)0 1
. 

SelectMany 
( 
result "
=># %
result& ,
., -
Errors- 3
)3 4
. 
Where 
( 
f 
=> 
f 
!=  
null! %
)% &
. 
ToList 
( 
) 
; 
if 
( 
failures 
. 
Count 
!= !
$num" #
)# $
{ 
throw   
new   
ValidationException   -
(  - .
failures  . 6
)  6 7
;  7 8
}!! 
return## 
next## 
(## 
)## 
;## 
}$$ 	
}%% 
}&& £
`C:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Behaviors\TransactionBehavior.cs
	namespace 	
Application
 
. 
Common 
. 
	Behaviors &
{ 
public		 

class		 
TransactionBehavior		 $
<		$ %
TRequest		% -
,		- .
	TResponse		/ 8
>		8 9
:		: ;
IPipelineBehavior		< M
<		M N
TRequest		N V
,		V W
	TResponse		X a
>		a b
{

 
private 
readonly 
ITestDbContext '

_dbContext( 2
;2 3
public 
TransactionBehavior "
(" #
ITestDbContext# 1
	dbContext2 ;
); <
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
	TResponse #
># $
Handle% +
(+ ,
TRequest, 4
request5 <
,< =
CancellationToken> O
cancellationTokenP a
,a b"
RequestHandlerDelegatec y
<y z
	TResponse	z ƒ
>
ƒ „
next
… ‰
)
‰ Š
{ 	
try 
{ 

_dbContext 
. 
BeginTransaction +
(+ ,
), -
;- .
var 
response 
= 
await $
next% )
() *
)* +
;+ ,

_dbContext 
. 
CommitTransaction ,
(, -
)- .
;. /
return 
response 
;  
} 
catch 
( 
	Exception 
) 
{ 

_dbContext 
. 
RollbackTransaction .
(. /
)/ 0
;0 1
throw 
; 
} 
}   	
}!! 
}"" ð
\C:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Interfaces\ITestDbContext.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
{ 
public 

	interface 
ITestDbContext #
{ 
void 
BeginTransaction 
( 
) 
;  
void 
CommitTransaction 
( 
)  
;  !
void 
RollbackTransaction  
(  !
)! "
;" #
}		 
}

 ‰

lC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Interfaces\Repositories\IPersonRepository.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
.' (
Repositories( 4
{ 
public 

	interface 
IPersonRepository &
{ 
Task		 
<		 
Domain		 
.		 
Person		 
>		 
	GetPerson		 %
(		% &
int		& )
id		* ,
)		, -
;		- .
Task

 
<

 
List

 
<

 
Domain

 
.

 
Person

 
>

  
>

  !
GetAll

" (
(

( )
)

) *
;

* +
Task 
< 
Domain 
. 
Person 
> 
	GetPerson %
(% &
Specification& 3
<3 4
Domain4 :
.: ;
Person; A
>A B
specificationC P
)P Q
;Q R
void 
Update 
( 
Domain 
. 
Person !
person" (
)( )
;) *
} 
} ð
fC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Interfaces\Repositories\IRepository.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
.' (
Repositories( 4
{		 
public

 

	interface

 
IRepository

  
<

  !
TEntity

! (
>

( )
where

* /
TEntity

0 7
:

8 9
IEntity

: A
{ 
ICollection 
< 
string 
> 
Includes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
Task 
< 
TEntity 
> 
	FindAsync 
(  

Expression  *
<* +
Func+ /
</ 0
TEntity0 7
,7 8
bool9 =
>= >
>> ?
func@ D
)D E
;E F
Task 
< 
TReturn 
> 
FindReadOnlyAsync '
<' (
TReturn( /
>/ 0
(0 1

Expression1 ;
<; <
Func< @
<@ A
TEntityA H
,H I
boolJ N
>N O
>O P
funcQ U
)U V
;V W
Task 
< 
TEntity 
> 
AddAsync 
( 
TEntity &
entity' -
)- .
;. /
Task 
AddRangeAsync 
( 
IEnumerable &
<& '
TEntity' .
>. /
entities0 8
)8 9
;9 :
void 
Update 
( 
TEntity 
entity "
)" #
;# $
Task 
< 
ICollection 
< 
TEntity  
>  !
>! "
FilterAsync# .
(. /

Expression/ 9
<9 :
Func: >
<> ?
TEntity? F
,F G
boolH L
>L M
>M N
funcO S
)S T
;T U
Task 
< 
ICollection 
< 
TReturn  
>  !
>! "
FilterReadOnlyAsync# 6
<6 7
TReturn7 >
>> ?
(? @

Expression@ J
<J K
FuncK O
<O P
TEntityP W
,W X
boolY ]
>] ^
>^ _
func` d
)d e
;e f
} 
} ½
cC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Interfaces\Services\IMailService.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
.' (
Services( 0
{ 
public 

	interface 
IMailService !
{ 
void		 
SendEmailAsync		 
(		 
string		 "
destinataire		# /
,		/ 0
string		0 6
body		7 ;
)		; <
;		< =
}

 
} ¡
TC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Mappings\IMapFrom.cs
	namespace 	
Application
 
. 
Common 
. 
Mappings %
{ 
public 

	interface 
IMapFrom 
< 
T 
>  
{ 
void 
Mapping 
( 
Profile 
profile $
)$ %
=>& (
profile) 0
.0 1
	CreateMap1 :
(: ;
typeof; A
(A B
TB C
)C D
,D E
GetTypeF M
(M N
)N O
)O P
.P Q

ReverseMapQ [
([ \
)\ ]
;] ^
}		 
}

 Á
ZC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Common\Mappings\MappingProfile.cs
	namespace 	
Application
 
. 
Common 
. 
Mappings %
{ 
public 

class 
MappingProfile 
:  !
Profile" )
{		 
public

 
MappingProfile

 
(

 
)

 
{ 	%
ApplyMappingsFromAssembly %
(% &
Assembly& .
.. / 
GetExecutingAssembly/ C
(C D
)D E
)E F
;F G
} 	
private 
void %
ApplyMappingsFromAssembly .
(. /
Assembly/ 7
assembly8 @
)@ A
{ 	
var 
types 
= 
assembly  
.  !
GetExportedTypes! 1
(1 2
)2 3
. 
Where 
( 
t 
=> 
t 
. 
GetInterfaces +
(+ ,
), -
.- .
Any. 1
(1 2
i2 3
=>4 6
i 
. 
IsGenericType #
&&$ &
i' (
.( )$
GetGenericTypeDefinition) A
(A B
)B C
==D F
typeofG M
(M N
IMapFromN V
<V W
>W X
)X Y
)Y Z
)Z [
. 
ToList 
( 
) 
; 
foreach 
( 
var 
type 
in  
types! &
)& '
{ 
var 
instance 
= 
	Activator (
.( )
CreateInstance) 7
(7 8
type8 <
)< =
;= >
var 

methodInfo 
=  
type! %
.% &
	GetMethod& /
(/ 0
$str0 9
)9 :
??; =
type> B
.B C
GetInterfaceC O
(O P
$strP \
)\ ]
.] ^
	GetMethod^ g
(g h
$strh q
)q r
;r s

methodInfo 
? 
. 
Invoke "
(" #
instance# +
,+ ,
new- 0
object1 7
[7 8
]8 9
{: ;
this< @
}A B
)B C
;C D
} 
} 	
} 
} î
OC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\DependencyInjection.cs
	namespace 	
Application
 
{ 
public		 

static		 
class		 
DependencyInjection		 +
{

 
public 
static 
IServiceCollection (
AddApplication) 7
(7 8
this8 <
IServiceCollection= O
servicesP X
)X Y
{ 	
var 
currentAssembly 
=  !
Assembly" *
.* + 
GetExecutingAssembly+ ?
(? @
)@ A
;A B
services 
. 
AddAutoMapper "
(" #
currentAssembly# 2
)2 3
;3 4
services 
. 

AddMediatR 
(  
currentAssembly  /
)/ 0
;0 1
services 
. 
AddTransient !
(! "
typeof" (
(( )
IPipelineBehavior) :
<: ;
,; <
>< =
)= >
,> ?
typeof@ F
(F G&
RequestPerformanceBehaviorG a
<a b
,b c
>c d
)d e
)e f
;f g
services 
. 
AddTransient !
(! "
typeof" (
(( )
IPipelineBehavior) :
<: ;
,; <
>< =
)= >
,> ?
typeof@ F
(F G%
RequestValidationBehaviorG `
<` a
,a b
>b c
)c d
)d e
;e f
services 
. 
AddTransient !
(! "
typeof" (
(( )
IPipelineBehavior) :
<: ;
,; <
>< =
)= >
,> ?
typeof@ F
(F G
TransactionBehaviorG Z
<Z [
,[ \
>\ ]
)] ^
)^ _
;_ `
return 
services 
; 
} 	
} 
} Ð
`C:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Commands\UpdatePersonCommand.cs
	namespace 	
Application
 
. 
Persons 
. 
Commands &
{ 
public 

class 
UpdatePersonCommand $
:% &
IRequest' /
,/ 0
IMapFrom1 9
<9 :
Domain: @
.@ A
PersonA G
>G H
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
int 
Age 
{ 
get 
; 
set !
;! "
}# $
} 
} Ñ
iC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Commands\UpdatePersonCommandValidator.cs
	namespace 	
Application
 
. 
Persons 
. 
Commands &
{ 
public 

class (
UpdatePersonCommandValidator -
:. /
AbstractValidator0 A
<A B
UpdatePersonCommandB U
>U V
{ 
public (
UpdatePersonCommandValidator +
(+ ,
), -
{ 	
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
Id		 
)		 
.		 
NotNull		 &
(		& '
)		' (
;		( )
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Name

 
)

  
.

  !
NotNull

! (
(

( )
)

) *
.

* +
Length

+ 1
(

1 2
$num

2 3
,

3 4
$num

5 7
)

7 8
;

8 9
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
.! "
EmailAddress" .
(. /
)/ 0
;0 1
RuleFor 
( 
x 
=> 
x 
. 
Age 
) 
.  
InclusiveBetween  0
(0 1
$num1 3
,3 4
$num5 7
)7 8
;8 9
} 	
} 
} ¡
fC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Handlers\GetAllPersonsQueryHandler.cs
	namespace		 	
Application		
 
.		 
Persons		 
.		 
Handlers		 &
{

 
public 

class %
GetAllPersonsQueryHandler *
:+ ,
IRequestHandler- <
<< =
GetAllPersonsQuery= O
,O P
ListQ U
<U V
PersonVMV ^
>^ _
>_ `
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IPersonRepository *
_personRepository+ <
;< =
public %
GetAllPersonsQueryHandler (
(( )
IMapper) 0
mapper1 7
,7 8
IPersonRepository9 J
personRepositoryK [
)[ \
{ 	
_mapper 
= 
mapper 
; 
_personRepository 
= 
personRepository  0
;0 1
} 	
public 
async 
Task 
< 
List 
< 
PersonVM '
>' (
>( )
Handle* 0
(0 1
GetAllPersonsQuery1 C
requestD K
,K L
CancellationTokenM ^
cancellationToken_ p
)p q
{ 	
var 
result 
= 
await 
_personRepository 0
.0 1
GetAll1 7
(7 8
)8 9
;9 :
return 
_mapper 
. 
Map 
< 
List #
<# $
PersonVM$ ,
>, -
>- .
(. /
result/ 5
)5 6
;6 7
} 	
} 
} ï
`C:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Handlers\UpdatePersonHandler.cs
	namespace 	
Application
 
. 
Persons 
. 
Handlers &
{ 
public 

class 
UpdatePersonHandler $
:% &
RequestHandler' 5
<5 6
UpdatePersonCommand6 I
>I J
{		 
private

 
readonly

 
IPersonRepository

 *
_personRepository

+ <
;

< =
private 
readonly 
IMapper  
_mapper! (
;( )
public 
UpdatePersonHandler "
(" #
IMapper# *
mapper+ 1
,1 2
IPersonRepository3 D
personRepositoryE U
)U V
{ 	
_mapper 
= 
mapper 
; 
_personRepository 
= 
personRepository  0
;0 1
} 	
	protected 
override 
void 
Handle  &
(& '
UpdatePersonCommand' :
request; B
)B C
{ 	
var 
person 
= 
_mapper  
.  !
Map! $
<$ %
Domain% +
.+ ,
Person, 2
>2 3
(3 4
request4 ;
); <
;< =
_personRepository 
. 
Update $
($ %
person% +
)+ ,
;, -
} 	
} 
} ï
SC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\PersonValidator.cs
	namespace 	
Application
 
. 
Persons 
{ 
public 

class 
PersonValidator  
:! "
AbstractValidator# 4
<4 5
PersonVM5 =
>= >
{ 
public 
PersonValidator 
( 
)  
{ 	
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
Id		 
)		 
.		 
NotNull		 &
(		& '
)		' (
.		( )
InclusiveBetween		) 9
(		9 :
$num		: <
,		< =
$num		> @
)		@ A
;		A B
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Name

 
)

  
.

  !
NotNull

! (
(

( )
)

) *
.

* +
Length

+ 1
(

1 2
$num

2 3
,

3 4
$num

5 7
)

7 8
;

8 9
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
.! "
EmailAddress" .
(. /
)/ 0
;0 1
RuleFor 
( 
x 
=> 
x 
. 
Age 
) 
.  
InclusiveBetween  0
(0 1
$num1 3
,3 4
$num5 7
)7 8
;8 9
} 	
} 
} ç
LC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\PersonVM.cs
	namespace 	
Application
 
. 
Persons 
{ 
public 

class 
PersonVM 
: 
IMapFrom $
<$ %
Domain% +
.+ ,
Person, 2
>2 3
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
int

 
Age

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
} 
} Þ
^C:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Queries\GetAllPersonsQuery.cs
	namespace 	
Application
 
. 
Persons 
. 
Queries %
{ 
public 

class 
GetAllPersonsQuery #
:$ %
IRequest& .
<. /
List/ 3
<3 4
PersonVM4 <
>< =
>= >
{ 
} 
}		 ô
ZC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Queries\GetPersonQuery.cs
	namespace 	
Application
 
. 
Persons 
. 
Queries %
{		 
public

 

class

 
GetPersonQuery

 
:

  !
IRequest

" *
<

* +
PersonVM

+ 3
>

3 4
{ 
public 
GetPersonQuery 
( 
int !
id" $
)$ %
=>& (
Id) +
=, -
id. 0
;0 1
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
} 
public 

class !
GetPersonQueryHandler &
:' (
IRequestHandler) 8
<8 9
GetPersonQuery9 G
,G H
PersonVMI Q
>Q R
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IPersonRepository *
_personRepository+ <
;< =
public !
GetPersonQueryHandler $
($ %
IMapper% ,
mapper- 3
,3 4
IPersonRepository5 F
personRepositoryG W
)W X
{ 	
_mapper 
= 
mapper 
; 
_personRepository 
= 
personRepository  0
;0 1
} 	
public 
async 
Task 
< 
PersonVM "
>" #
Handle$ *
(* +
GetPersonQuery+ 9
request: A
,A B
CancellationTokenC T
cancellationTokenU f
)f g
{ 	#
PrimaryKeySpecification #
pkSpec$ *
=+ ,
new- 0#
PrimaryKeySpecification1 H
(H I
requestI P
.P Q
IdQ S
)S T
;T U
var 
result 
= 
await 
_personRepository 0
.0 1
	GetPerson1 :
(: ;
pkSpec; A
)A B
;B C
return   
_mapper   
.   
Map   
<   
PersonVM   '
>  ' (
(  ( )
result  ) /
)  / 0
;  0 1
}!! 	
}"" 
}$$ í
cC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Specifications\AgeSpecification.cs
	namespace 	
Application
 
. 
Persons 
. 
Specifications ,
{		 
class

 	
AgeSpecification


 
:

 
Specification

 *
<

* +
Person

+ 1
>

1 2
{ 
private 
readonly 
int 
_age !
;! "
public 
AgeSpecification 
(  
int  #
city$ (
)( )
{ 	
_age 
= 
city 
; 
} 	
public 
override 

Expression "
<" #
Func# '
<' (
Person( .
,. /
bool0 4
>4 5
>5 6
ToExpression7 C
(C D
)D E
=>F H
person 
=> 
person 
. 
Age  
==! #
_age$ (
;( )
} 
} ú
jC:\Users\benaz\source\repos\Asp.Core\WebTest\Application\Persons\Specifications\PrimaryKeySpecification.cs
	namespace 	
Application
 
. 
Persons 
. 
Specifications ,
{ 
class 	#
PrimaryKeySpecification
 !
:" #
Specification$ 1
<1 2
Person2 8
>8 9
{		 
private

 
readonly

 
int

 
_id

  
;

  !
public #
PrimaryKeySpecification &
(& '
int' *
id+ -
)- .
{ 	
_id 
= 
id 
; 
} 	
public 
override 

Expression "
<" #
Func# '
<' (
Person( .
,. /
bool0 4
>4 5
>5 6
ToExpression7 C
(C D
)D E
=>F H
person 
=> 
person 
. 
Id 
==  "
_id# &
;& '
} 
} 