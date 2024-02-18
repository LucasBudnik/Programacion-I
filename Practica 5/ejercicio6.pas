//fpc 3.0.4

program HelloWorld;
const 
    meses = 12;
    sucursales = 7;
type
    rangoMes = 1 .. meses;
    rangoSucursal = 1 .. sucursales;
    Tsucursal = record
        cantidad_vendido : integer;
        cantidad_devuelto : integer;
        monto_facturado : real;
        monto_devuelto : real;
    end;
{--------------------------------------------------------------------
}
procedure leer (var s : Tsucursal);
begin
    readln(s.cantidad_vendido,s.cantidad_devuelto,s.monto_facturado,s.monto_devuelto);
end;
{--------------------------------------------------------------------
}    
function ganancia(s :Tsucursal):real;
begin
   ganancia:=(s.monto_facturado - s.monto_devuelto);
end;
{--------------------------------------------------------------------
}
procedure mesQueMasVendio(s : Tsucursal;var masVendio:integer; var mes_max: rangoMes;mes:rangoMes);
var vendio : integer;
begin
    vendio:= (s.cantidad_vendido - s.cantidad_devuelto);
    if vendio > masVendio then begin
        masVendio:= vendio;
        mes_max := mes;
    end;

end;
{--------------------------------------------------------------------
}
procedure gananciaMin(g:real;var gmin:real;s:rangoSucursal;var smin:rangoSucursal);
begin
    if gmin > g then begin
        gmin:= g;
        smin:=s;
    end;
end;
{--------------------------------------------------------------------
}
procedure Informe_AyC(smin:rangoSucursal;var prom:real);
begin
    writeln('la sucursal con menor ganancia es ',smin);
    prom:= prom / sucursales;
    writeln;
    writeln('la Ganancia promedio en el mes de marzo entre todas las sucursales es ',prom:8:2);
    writeln;
end;
{--------------------------------------------------------------------
}
procedure Informe_B(m:rangoMes;s:rangoSucursal);
begin
    write('para la sucursal ',s,' el mes que mas vendio fue ');
    case m of
        1: writeln('enero');
        2:writeln('febrero');
        3:writeln('marzo');
        4:writeln('abril');
        5:writeln('mayo');
        6:writeln('junio');
        7:writeln('julio');
        8:writeln('agosto');
        9:writeln('septiembre');
        10:writeln('octubre');
        11:writeln('noviembre');
        12:writeln('diciembre');
    end;
    writeln;
end;
{--------------------------------------------------------------------
}
procedure recaudacionPromedioMarzo(mes : rangoMes;s :Tsucursal; var prom :real);
begin
        if mes = 3 then
            prom:= prom + ganancia(s);
end;
{--------------------------------------------------------------------
}
var
    suc : Tsucursal;
    mes,mes_max : rangoMes;
    s,smin : rangoSucursal;
    g,gmin,prom:real;
    masVendio:integer;
begin
    gmin:=9999999999999;
    prom:=0;
    for s:=1 to sucursales do begin
        masVendio:=0;g:=0;
        for mes:= 1 to meses do begin
            leer(suc);//.. VENDIDO, DEVUELTO , FACTURADO, DEVUELTO
            g:= ganancia(suc) + g;
            recaudacionPromedioMarzo(mes,suc,prom);
            mesQueMasVendio(suc,masVendio,mes_max,mes);
        end;
        gananciaMin(g,gmin,s,smin);
        Informe_B(mes_max,s);
    end;
    Informe_AyC(smin,prom);
    
end.
