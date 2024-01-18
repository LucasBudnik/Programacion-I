//fpc 3.0.4

program HelloWorld;
var
    num,dig,suma,max:integer;
begin
    suma:= 0;
    num:= random(20)+8880;
    while num <> 8888 do begin
        max:= 0;
        writeln('numero: ',num);
        while num <> 0 do begin
            dig:= num mod 10;
            if dig > max then max:=dig;
            suma:= dig+suma;
            num:= num div 10;
        end;
        writeln('el digito maximo es: ',max);
        num:= random(20)+8880;
    end;
    writeln('la suma de las unidades a informar es ',suma);
end.
