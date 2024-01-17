//fpc 3.0.4

program HelloWorld;
const
  carreras = 8;
var
    carrera,codigo,anios,anio,alumnos,promalum,maxprom,cod:integer;
begin
    //inicializacion 
    maxprom:=0;
    //regularizacion por carreras
    for carrera:= 1 to carreras do begin      writeln('carrera: ', carrera);
        //lecturas pedidas
        codigo:= random(3000);                writeln('codigo de carrera: ', codigo);
        anios:= random(7);                    writeln('cantidad de anios de la carrera: ',anios);
        //inicializacion
        promalum:= 0;
        //regularizacion por anios
        for anio:=1 to anios do begin
            //lectura pedidas
            alumnos:= random(60)+1;
            //suma de cantidad de alumnos de cada anio
            promalum:=alumnos+promalum;
        end;
        //calculo del promedio de la cantidad de alumnos de la carrera
        promalum:= promalum div anios;         writeln('promedio de alumnos de la carrera: ', promalum);
        //calculo de la mayor cantidad promedio de alumnos por carrera
        if promalum > maxprom then begin
            maxprom:= promalum;
            cod:=codigo;
        end;
        writeln;writeln;writeln;
    end;
    //informe
    writeln('el codigo de la carrera con mayor cantidad promedio de alumnos es: ', cod);
end.
