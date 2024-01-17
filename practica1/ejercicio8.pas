//fpc 3.0.4

program HelloWorld;
const
    fin = 756;
var
    numero_alumno,materias_aprobadas,mat,nota,max_nota,promedio,max_promedio,num_max_prom:integer;
    cantidad_de_alumnos_leidos:integer;
begin
    //inicializacion
    max_promedio:=0;
    cantidad_de_alumnos_leidos:=0;
    
    numero_alumno:=random(25)+746;
    
    while numero_alumno <> fin do begin       writeln('numero de alumno: ',numero_alumno);
        materias_aprobadas:=random(6)+5;      writeln('cantidad de materias aprobadas: ', materias_aprobadas);
        max_nota:=0;           //inicializacion
        promedio:=0;
        
        
        
        for mat:= 1 to materias_aprobadas do begin //lectura de notas por materia
            nota:= random(7)+4;
            if nota > max_nota then  // calcular la nota maxima obtenida por el alumno
                max_nota:=nota;
            promedio:= promedio+nota;  //calculo de promedio de notas por materia_ primera parte
        end;
        
        // informar la maximo nota obtenida por el alumno
        writeln('la nota maxima del alumno: ',max_nota);
        
        
        // calculo de notas por materia_ segunda parte
        promedio:= promedio div materias_aprobadas;  writeln('promedio de materias aprobadas: ', promedio);
       
        // calcular el maximo promedio entre los alumnos y guardar el numero de alumno del mismo
        if promedio > max_promedio then begin
            max_promedio:=promedio;
            num_max_prom:=numero_alumno;
        end;
        writeln;writeln;writeln;
        
        cantidad_de_alumnos_leidos := cantidad_de_alumnos_leidos + 1;
        numero_alumno:=random(20)+746;
    end;
    
    
    if cantidad_de_alumnos_leidos > 0 then begin
        writeln('el numero de alumno del maximo promedio es: ',num_max_prom);
    end else
        writeln('no se leyó ningun alumno');
end.
