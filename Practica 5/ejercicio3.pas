//fpc 3.0.4

program HelloWorld;
const
    computers = 20;
    hours = 730;
    
type
    rangoComputer = 1 .. computers;
    rangoHours = 1 .. hours;
    computer = record
        number : rangoComputer;
        hour : rangoHours;
        price : real;
     end;

{-------------------------------------------------------------------------------
PRINT COMPUTER - Imprime los datos pasados por valor}
procedure printComputer(c:computer);
begin
    writeln('computer ',c.number);
    writeln(c.hour,'hs');
    writeln(c.price:3:2, '$');
    writeln;
end;

{-------------------------------------------------------------------------------
READ COMPUTER - lectura de datos mediante un valor al azar}
procedure readComputers(var c:computer);
begin
    c.hour:= random(hours);
    c.price:= random(200);
    printComputer(c);
end;

{-------------------------------------------------------------------------------
CALC MONT - Calcula el producto entre el precio y la cantidad de horas uso}
function calcMont(c:computer):real;
begin
    calcMont:= c.price*c.hour;
end;

{-------------------------------------------------------------------------------
MIN HOURS - Calcula la computadora con menor cantidad de horas uso}
function minHours(c,min:computer):computer;
begin
    if c.hour < min.hour then begin
        minHours := c;
    end else 
        minHours:= min;
end;

{-------------------------------------------------------------------------------
PRINT ANSWER - Responde de manera estructurada las preguntas del problema}
procedure printAnswers(min:computer;mont:real);
begin
    writeln;
    writeln('el monto total recaudado es de ', mont:8:2);
    writeln;writeln;
    writeln('la computadora con menor cantidad de horas es: ');
    printComputer(min);
    writeln('el monto recaudado de la misma es de ',calcMont(min):3:2);
end;

{-------------------------------------------------------------------------------
MAIN PROCESS Dirige el programa}
procedure MainProcess();
var
    c,min:computer;
    mont:real;
    i:rangoComputer;
begin
    randomize;
    min.hour:= hours;
    mont:= 0;
    for i:=1 to computers do begin
        c.number:= i;
        readComputers(c);
        mont:= calcMont(c)+mont;
        min:= minHours(c,min);
    end;
    printAnswers(min,mont);
end;

{-------------------------------------------------------------------------------
PROGRAMA PRINCIPAL}
begin 
    MainProcess();
end.
