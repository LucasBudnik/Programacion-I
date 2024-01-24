//fpc 3.0.4

program HelloWorld;
function resultado (op:char;n1,n2:integer):integer;
begin
    case op of
        '+': resultado:= n1 + n2;
        '-': resultado:= n1 - n2;
        '*': resultado:= n1 * n2;
        '/': resultado:= n1 div n2;
        else resultado:= -1;
    end;
end;
        
var
    operador:char;
    n1,n2:integer;
begin
    readln(operador);
    readln(n1);
    readln(n2);
    writeln(n1,' ',operador,' ',n2, ' = ',resultado(operador,n1,n2));
end.
