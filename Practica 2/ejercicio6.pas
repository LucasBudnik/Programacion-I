//fpc 3.0.4

program HelloWorld;
var
    car:char;
    cant:integer;

begin
    cant:=0;
    car:= ' ';
    while car <> '.' do begin
        read(car);
        if (car = 'a') then begin
            read(car);
            if (car = 'e') then
                cant:= cant+1;
        end else
            if car = 'e' then begin
                read(car);
                if car = 'a' then 
                    cant:=cant+1;
            end;
      end;
      writeln('la cant de "ea" y de "ae" son ', cant);
end.
