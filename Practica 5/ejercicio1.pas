//fpc 3.0.4

program HelloWorld;
type
    prisma = record
        ancho: real;
        alto:real;
        profundidad:real;
    end;
{------------------------------------------------------------
LEER - Lee todas las variables del programa principal}
procedure leer_prisma(var p : prisma);
begin
    readln(p.ancho,p.alto,p.profundidad);
end;
{------------------------------------------------------------
CALCULAR VOLUMEN - Calcula y devuelve el valor del volumen del prisma
segun los datos ingresados del mismo}
function volumen(p:prisma):real;
begin
    volumen:= p.ancho * p.alto * p.profundidad;
end;
{------------------------------------------------------------
CALCULAR AREA - Calcula y devuelve el valor del area del prisma 
segun los datos ingresados del mismo}
function area (p:prisma):real;
begin
    area:= 2 * p.ancho * p.alto + 2 * p.ancho * p.profundidad + 2 * p.alto * p.profundidad;
end;
{------------------------------------------------------------
Programa Principal - dirige el programa}
var
    p:prisma;   
begin
    leer_prisma(p);
    writeln('el volumen del prisma es ', volumen(p):3:2);
    writeln('el area del prisma es ',area(p):3:2);
end.