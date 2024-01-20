//fpc 3.0.4

program HelloWorld;
var
    comienzacont:boolean;
    palabras,long,max:integer;
    car:char;
begin
    max:=0;
    palabras:=0;
    comienzacont:=false;
    read(car);
   while car <> '.' do begin
       if car = 't' then begin comienzacont:=true; long:=0; end;
       while (car <> '.')and(car <> ' ') do begin
           if comienzacont then long:=long+1;
           read(car);
       end;
       palabras:=palabras+1;
       if comienzacont then begin
           if max<long then max:=long;
           comienzacont:=false;
       end;
       while car=' ' do
           read(car);
    end;
    writeln('cantidad de palabras = ',palabras);
    writeln('la longitud de la palabra mas larga que comienza con t es ',max);
end.
