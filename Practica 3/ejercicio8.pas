//fpc 3.0.4

program HelloWorld;
function verif(c1,c2:char):boolean;
begin
    verif:= (c1 = 'p')and(c2 = 'a');
end;
var
    car,ultcar:char;cant:integer;v:boolean;
begin
    read(car);cant:=0;
    while car <> '.' do begin
        v:=false;
        while (car <> '.') and (car <> ' ')do begin
            ultcar:= car;
            read(car);
            if verif(ultcar,car) then v:=true;
         end;
         if v then cant:=cant+1;
         while car = ' ' do read(car);
    end;
    writeln('la cantidad de palabras que tienen "p" seguida de "a" son ',cant);
    
end.
