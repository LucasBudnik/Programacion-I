//fpc 3.0.4

program HelloWorld;
const 
    fin = 9999;
type
    Tnombre = string[15];
    producto = record
        cod : integer;
        tipo : Tnombre;
        cant :integer;
        precio : real;
    end;
{--------------------------------------------------------------------------------------------------
}
procedure impresion (p : producto);
begin
    writeln('codigo: ',p.cod);
    writeln(p.tipo);
    writeln('cantidad : ',p.cant);
    writeln(p.precio:5:2,'$');
end;
{--------------------------------------------------------------------------------------------------
}
procedure lectura (var p:producto);
begin
    readln(p.cod);
    if p.cod <> fin then
        readln(p.tipo,p.cant,p.precio);
end;
{--------------------------------------------------------------------------------------------------
}
procedure Calcular_ayb(p : producto;var cantidad_alfajores:integer;var cantidad_Tmermeladas:integer;var prom:real);
begin
    if p.tipo = 'alfajor' then begin
        cantidad_alfajores:= cantidad_alfajores + p.cant;
     end else 
         if p.tipo = 'mermelada' then begin
             prom  := p.precio + prom;
             cantidad_Tmermeladas:= cantidad_Tmermeladas+1;
         end;
end;
{--------------------------------------------------------------------------------------------------
}
procedure inicializar(var cantidad_alfajores:integer;var cantidad_Tmermeladas:integer; var prom :real;var m1:producto; var m2: producto);
begin
    cantidad_alfajores:= 0;
    cantidad_Tmermeladas:=0;
    prom:=0;
    m1.cant:=0;
    m2.cant:=0;
end;
{--------------------------------------------------------------------------------------------------
}
procedure mayorFabricacion(var m1:producto;var m2:producto; p:producto);

begin
        if p.cant > m1.cant then begin
            m2:=m1;
            m1:=p;
        end else
            if p.cant > m2.cant then
                m2:=p;
end;

{--------------------------------------------------------------------------------------------------
}
procedure informe(cantidad_alfajores,cantidad_Tmermelada:integer;var prom:real;max1,max2:producto);
begin
        writeln('La cantidad de alfajores Fabricados para el mes es ',cantidad_alfajores,' alfajores.');
        writeln;
        
        prom:= prom / cantidad_Tmermelada;
        writeln('el precio promedio de las mermeladas es de ',prom:5:2,'$');
        writeln;
        writeln('el producto mas fabricado es ');
        impresion(max1);
        writeln('el segundo producto mas fabricado es ');
        impresion(max2);
end;
{--------------------------------------------------------------------------------------------------
}
procedure mainProcess ;
var
    p : producto;
    cantidad_alfajores,cantidad_Tmermeladas : integer;
    prom:real;
    max1,max2:producto;
begin
    inicializar(cantidad_alfajores,cantidad_Tmermeladas,prom,max1,max2);
    repeat
        lectura(p);
        if p.cod <> fin then begin
                Calcular_ayb(p,cantidad_alfajores,cantidad_Tmermeladas,prom);
                mayorFabricacion(max1,max2,p);
        end;
    until(p.cod = fin);
    informe(cantidad_alfajores,cantidad_Tmermeladas,prom,max1,max2);
end;
{--------------------------------------------------------------------------------------------------
}   
begin
    mainProcess;
end.
