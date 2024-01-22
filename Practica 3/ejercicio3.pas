//fpc 3.0.4

program HelloWorld;
function max4(num1,num2,num3,num4:integer):integer;
var max1,max2:integer;
begin
    if num1 > num2 then begin
        max1:= num1;
     end else max1:= num2;
     if num3 > num4 then begin
         max2:= num3;
      end else max2:= num4;
      if max1 > max2 then begin
          max4:= max1;
       end else max4:=max2;
end;

function m2(n1,n2:integer):integer;
begin
    if n1 > n2 then begin m2:= n1;
    end else  m2:= n2;
end;

function m4(num1,num2,num3,num4:integer):integer;
begin
    if m2(num1,num2) > m2(num3,num4) then begin
        m4:= m2(num1,num2);
    end else m4:= m2(num3,num4);
end;

var
    num1,num2,num3,num4:integer;
begin
    readln(num1,num2,num3,num4);
    writeln('el mayor es: ', max4(num1,num2,num3,num4));
    
    writeln('el mayor es: ', m4(num1,num2,num3,num4));
    // de ambas soluciones la segunda resulta mas legible, e incluso al utilizar
    // la reimplementacion, resulta mas eficiente
end.
