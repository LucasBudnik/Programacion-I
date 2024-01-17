//fpc 3.0.4

program HelloWorld;
const
    fin = 0;
var
    cod,precio,vend,ganancia,max,cmax:integer;
    maxvend,cmaxvend:integer;
    cantdeproductos:integer;
begin
                                               //inicializacion
    max:=0;
    cantdeproductos:=0;
    maxvend:=0;
    cod:= random(15);
    while (cod <> fin) do begin
        precio:= random(500);                  // precio por unidad del producto
        vend:= random(15);                     // cantidad de ventas por producto
        ganancia:= precio*vend;                // recaudacion por producto
            
        writeln('codigo: 00',cod);
        writeln('precio x unidad: ',precio);
        writeln('cantidad vendidos:',vend);
        writeln('ganancia: ',ganancia);
        
        if ganancia > max then begin           // codigo que mas recaudo
            max:= ganancia;
            cmax:= cod;
         end;
         
         if vend > maxvend then begin          // codigo que mas se vendio
             maxvend:= vend;
             cmaxvend:=cod;
          end;
          writeln;writeln;
        cantdeproductos:=cantdeproductos+1;
        cod:= random(15);
    end;
    if cantdeproductos > 0 then begin
        writeln('el codigo del producto que mas recaudo: 00',cmax);      //informe
        writeln('el codigo del producto que mas se vendio: 00',cmaxvend);
    end else 
        writeln('no se ingreso ningun producto al programa');
end.
