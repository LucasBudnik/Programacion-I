//fpc 3.0.4

program HelloWorld;
const 
    dias = 31;
    meses = 12;
    anios = 2021;
    minutos = 59;
    segundos = 59;
type
    rangoDias = 1 .. dias;
    rangoMes = 1 .. meses;
    rangoAnio = 2019 .. anios;

    rangoMinutos = 0 .. minutos;
    rangoSegundos = 0 .. segundos;
    rangoHoras = integer;
    
    Tnombre = string [15];
    
    Tfecha = record
        dia : rangoDias;
        mes : rangoMes;
        anio : rangoAnio;
    end;
    
    Ttiempo = record
        hora : rangoHoras;
        min : rangoMinutos;
        seg : rangoSegundos;
    end;
    
    Tpaciente = record
        nombre : Tnombre;
        apellido : Tnombre;
        fecha : Tfecha;
        tiempo : Ttiempo;
    end;
    




{-------------------------------------------------------------------------
}
procedure inicializacion (var agosto :integer;var masTardo : Tpaciente);
begin
    agosto := 0;
    masTardo.tiempo.hora := 0;
    masTardo.tiempo.min := 0;
    masTardo.tiempo.seg := 0;
end;
{-------------------------------------------------------------------------
}
procedure lectura (var p:Tpaciente);
begin
    readln(p.apellido);
    if p.apellido <> 'FIN' then begin
        readln(p.nombre);
        readln(p.fecha.dia,p.fecha.mes,p.fecha.anio);
        readln(p.tiempo.hora,p.tiempo.min,p.tiempo.seg);
    end;
end;
{-------------------------------------------------------------------------
}
function PmasTardo(p,max:Tpaciente):Tpaciente;
begin
    if p.tiempo.hora > max.tiempo.hora then begin
        PmasTardo := p;
    end else
        if p.tiempo.hora < max.tiempo.hora then begin
            Pmastardo:= max;
         end else 
             if p.tiempo.min > max.tiempo.min then begin
                 Pmastardo := p;
             end else
                 if p.tiempo.min < max.tiempo.min then begin
                     Pmastardo:= max;
                 end else
                     if p.tiempo.seg < max.tiempo.seg then begin
                         Pmastardo:= max;
                      end else
                          Pmastardo:= p;
end;
{-------------------------------------------------------------------------
}
function Pagosto (p:Tpaciente):integer;
begin
    if p.fecha.mes = 8 then begin
        Pagosto := 1;
    end else
        Pagosto := 0;
end;

{-------------------------------------------------------------------------
}
procedure informar(agosto:integer;masTardo:Tpaciente);
begin
    writeln('la cantidad de pacientes atendidos en agosto fueron: ',agosto);
    writeln();
    writeln('el paciente que mas tardò en ser atendido se llama: ',masTardo.nombre,' ',masTardo.apellido);

end;
{-------------------------------------------------------------------------
}
procedure mainProcess ;
var
    p:Tpaciente;
    agosto:integer;
    masTardo:Tpaciente;
begin
    inicializacion(agosto,masTardo);
    repeat
        lectura(p);
        if p.apellido <> 'FIN' then begin
            masTardo := PmasTardo(p,masTardo);
            agosto := Pagosto(p) + agosto;
        end;
    until (p.apellido = 'FIN');
    informar(agosto,masTardo);
end;

{-------------------------------------------------------------------------
}
begin
    mainProcess;
end.
