//fpc 3.0.4

program HelloWorld;
var
    num,dig:integer;
    alrevez:integer;
begin
    readln(num);
    alrevez:= 0;
    while num <> 0 do begin
        dig:= num mod 10;
        alrevez:= alrevez * 10 + dig;
        num:= num div 10;
     end;
     writeln(alrevez);
end.
