//fpc 3.0.4

program HelloWorld;
var 
    num,dig:integer;
    suma:integer;
    n:boolean;
begin
    readln(num);
    suma:= num;
    n:= true;
    while (n) do begin
        num:=suma;
        suma:=0;
        while num <> 0 do begin
            dig:= num mod 10;
            suma:= dig+suma;
            num:= num div 10;
         end;
         n:= (suma div 10 <> 0);
    end;
    writeln(suma);
end.
