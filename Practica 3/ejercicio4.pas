//fpc 3.0.4

program HelloWorld;
function suma(num:integer):integer;
var dig,s1:integer;
begin
    s1:=0;
    while num <> 0 do begin
        dig:= num mod 10;
        if (dig mod 3 = 0) or (dig mod 5 = 0) then s1:=s1+dig;
        num:= num div 10;
    end;
    suma:=s1;
end;


var
    num:integer;
begin
    readln(num);
    while num <> 0 do begin
        writeln('suma de digitos multiplos de 3 y 5: ',suma(num));
        readln(num);
    end;
    
end.
