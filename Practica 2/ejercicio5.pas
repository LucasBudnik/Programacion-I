//fpc 3.0.4

program HelloWorld;
var
    car:char;
    cantA,cants,cantcar:integer;
    CARS:BOOLEAN;
begin
    cantcar:=0;
    cantA:=0;
    cants:=0;
   read(car);
   while car <> '.' do begin
       if car = 'A' then begin
           cantA := cantA + 1;
       end else 
           if (car = 's') then begin
               read(car);
               if (car = 'a') then 
                    cants:= cants + 1;
           end;
       if car <> '.' then begin
           cantcar:=cantcar+1;
           read(car);
        end;
   end;
   writeln('la cantidad de caracteres leidos es ',cantcar);
   writeln('la cantidad de letreas A leidas es ',cantA);
   writeln('la cantidad de letras s  seguidas de a es ',cants);
end.
