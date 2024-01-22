//fpc 3.0.4

program HelloWorld;
function resto(num,divisor:integer):integer;
var 
    cociente:integer;
begin
    cociente:= num div divisor;
    resto := num - (divisor*cociente);
end;
function espar(r:integer):boolean;
begin
    if resto(r,2) = 0 then begin
        espar := true;
     end else espar := false;
end;
var
    num,divisor,r:integer;
begin
    readln(num);
    readln(divisor);
    writeln('resto = numero - cociente . divisor');
    r:= resto(num,divisor);
    writeln('el resto es ', r);
    writeln('el resto es par? ',espar(r));
   
end.
