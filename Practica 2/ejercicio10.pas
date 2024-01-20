//fpc 3.0.4
{Escriba un programa que lea una secuencia de caracteres terminada en ‘#’.
a) Contar la cantidad de palabras de longitud 6 que componen esa se
cuencia.
b)
Ídem a) pero además contando la cantidad de palabras que comienzan con ‘P ’ seguido de A’.
c)
Ídem a) y b) pero además contando la cantidad de palabras que finalizan con ‘S ’ seguido de
A’.}
program HelloWorld;
var
    car,ultcar,antultcar,firstcar,secondcar:char;
    long,longsix,canta,cantb:integer;
    n:boolean;
begin
    read(car);
    longsix:=0;
    ultcar:= ' ';
    canta:=0;cantb:=0;
    
    while car <> '#' do begin
    
        long:=0;
        firstcar:=car;
        n:=true;
        
        while (car <> ' ')and (car <> '#')do begin
            long:= long+1;
            antultcar:=ultcar;
            ultcar:=car;
            read(car);
            if n then begin
                secondcar:=car;
                n:=false;
            end;
        end;
        
        if long = 6 then longsix:= longsix + 1;
        
        if (firstcar = 'P') and (secondcar = 'A') then canta:=canta + 1;
        
        if (ultcar = 'A') and (antultcar = 'S') then cantb:= cantb + 1;
        
        while car = ' ' do read(car);
        
    end;
    
    WRITELN('CANTIDAD DE PALABRAS DE 6 CARACTERES ',longsix);
    WRITELN('CANTIDAD DE PALABRAS QUE EMPIEZAN COM P SEGUIDA DE A ', canta);
    writeln('CANTIDAD DE PALABRAS QUE TERMINAN CON S SEGUIDA DE A ', cantb);
end.
