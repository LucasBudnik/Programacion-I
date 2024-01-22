//fpc 3.0.4

program HelloWorld;
function masgrande(num:integer):integer;
var dig,max:integer;
begin
    max:=0;
    while num <> 0 do begin
        dig:= num mod 10;
        if dig > max then max:= dig;
        num:= num div 10;
    end;
    masgrande:=max;
end;
var
    num:integer;
begin
    readln(num);
    writeln('el digito mas grande del numero ',num,' es ',masgrande(num));
end.

// se utiliza una funcion, porque es mas eficiente en soluciones que precisan un solo numero como resultado
// de una operacion. De otro modo, si hubiera que moodificar algun numero, preexistente en tal operacion
// podriamos haber necesitado un procedure, ó en casos que necesitemos mas de un resultado.
