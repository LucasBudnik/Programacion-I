//fpc 3.0.4

program HelloWorld;
var
    num,dig:integer;
    max,i:integer;
begin
    writeln('inciso a, b y c');
    for i:=1 to 80 do begin
        max:=0;
        num:= random(35432);  writeln('numero: ',num);
         while num <> 0 do begin
             dig := num mod 10;                                            //primeros 3 incisos
             if (dig mod 2  = 0) then
                 writeln('digito par: ',dig);
             if dig > max then 
                 max:= dig;
             num:= num div 10;
         end;
         writeln('el digito maximo: ',max);
         write;
     end;
     
     writeln;writeln;
     writeln('inciso d');
     num:= random(10)-1;
     while num <> -1 do begin   
         writeln('numero: ',num);
         while num <> 0 do begin
             dig := num mod 10;
             if (dig mod 2  = 0) then                                         //inciso 4
                 writeln('digito par: ',dig);
             num:= num div 10;
         end;
         num:= random(10)-1;
         writeln;
     end;
     
     writeln;writeln;
     writeln('incioso e');
     max:=0;
     while max <> 19 do begin
         num:= random(2145);
         writeln('numero: ',num);
         max:=0;
         while num <> 0 do begin
             dig:= num mod 10;
             max:=max+dig;                                    // quinto inciso
             num:= num div 10;
         end;
         writeln('suma de sus digitos: ',max);
         writeln;
     end;
end.
