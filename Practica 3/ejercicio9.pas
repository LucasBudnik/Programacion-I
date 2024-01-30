//fpc 3.0.4

program HelloWorld;
function cuadrado(x:integer): integer; 
begin
    cuadrado:= x*x;
end;
var 
 c: integer;

begin
{
    vemos distintos tipos de invocaciones y ejecutamos las que sean validas. Las demas
    las comentamos.
}
    //a)
     writeln('a)');
     Writeln(cuadrado(5));                         //valida
    {--------------------------------------------------------}
    //b) 
    //c:= cuadrado(5); 
    //Write(cuadrado);           //invalida
    {--------------------------------------------------------}
    //c) 
    //If ( cuadrado = 25 ) then
      //      Write(‘5*5=25’);                       //invalida
    {--------------------------------------------------------}        
    //d) 
    //cuadrado(5);                                //invalida
    {--------------------------------------------------------}
    //e)
    writeln('e)');
    c:= cuadrado(5); 
    Writeln(c);                 //valida
    {--------------------------------------------------------}
    //f) 
    //cuadrado(5, c); Write (c);                  //invalida
    {--------------------------------------------------------}
   // g) 
   writeln('g)');
   If ( cuadrado(5) = 25 ) then                //valida
        Write('5*5=25');
end.
//fpc 3.0.4

program HelloWorld;
function cuadrado(x:integer): integer; 
begin
    cuadrado:= x*x;
end;
var 
 c: integer;

begin
{
    vemos distintos tipos de invocaciones y ejecutamos las que sean validas. Las demas
    las comentamos.
}
    //a)
     writeln('a)');
     Writeln(cuadrado(5));                         //valida
    {--------------------------------------------------------}
    //b) 
    //c:= cuadrado(5); 
    //Write(cuadrado);           //invalida
    {--------------------------------------------------------}
    //c) 
    //If ( cuadrado = 25 ) then
      //      Write(‘5*5=25’);                       //invalida
    {--------------------------------------------------------}        
    //d) 
    //cuadrado(5);                                //invalida
    {--------------------------------------------------------}
    //e)
    writeln('e)');
    c:= cuadrado(5); 
    Writeln(c);                 //valida
    {--------------------------------------------------------}
    //f) 
    //cuadrado(5, c); Write (c);                  //invalida
    {--------------------------------------------------------}
   // g) 
   writeln('g)');
   If ( cuadrado(5) = 25 ) then                //valida
        Write('5*5=25');
end.
