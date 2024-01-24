//fpc 3.0.4

program HelloWorld;

function promedio (personas, i, peso,suma:integer):real;
begin
    for i:=1 to personas do begin
        readln(peso);
        suma:= suma+peso;
    end;
    promedio:= suma / personas;
end;
var personas:integer;
begin
    readln(personas);
    writeln('el promedio de los pesos es ',promedio(personas,0,0,0):8:2);
end.
