//fpc 3.0.4

program HelloWorld;
{5. Escriba un programa que lea una secuencia de caracteres terminada en ‘*’
y procese palabras analizando si su longitud es exactamente 5.
El programa debe informar cuántas palabras de longitud 5 encontró. 
El procesamiento de cada palabra debe ser realizado en un módulo.
Puede haber blancos al principio y al final de la secuencia.}

procedure palabra(var car:char; var cant: integer;long:integer);
begin
    while (car <> '*')and(car <> ' ') do begin
        long:= long + 1;
        read(car);
    end;
    if long = 5 then cant := cant + 1;
end;
var
    car:char;
    cant:integer;
begin
    read(car);
    cant:=0;
    while car <> '*' do begin 
        palabra(car,cant,0);
        while car = ' ' do read(car);
    end;
    writeln(' la cantidad de palabras que tiene exactamente 5 caracteres son: ',cant);
    
end.
