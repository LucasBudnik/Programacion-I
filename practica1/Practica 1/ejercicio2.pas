//fpc 3.0.4

program HelloWorld;
const
    horas= 23;
    dias=7; 
var 
    hora,dia,temp:integer;
    maxdia,mindia,promdia:integer;
    horamax,horamin:integer;
    prommax,prommin,dprommax,dprommin:integer;
begin
    // inicializacion
    prommax:= -50;
    prommin:= 50;
  
  
  //regulacion por dias
    for dia:=1 to dias do begin
        //inicializacion
        maxdia:= -50;
        mindia:= 50;

        
        // regulacion por horas
        for hora:= 0 to horas do begin  
            // lectura de cada temperatura
            temp:= random(101) - 50;
            // maxima temperatura dia
            if temp > maxdia then begin
                maxdia:= temp;
                horamax:= hora;
                // minima temperatiura dia
            end else if  temp < mindia then begin
                          mindia:= temp;
                          horamin:= hora;
                     end;
            //fin del dia
        end;



        // temperatura promedio dia
        promdia:= ((maxdia + mindia) div 2);
        //promedio maximo
        if promdia > prommax then begin
            prommax:=promdia;
            dprommax:= dia;
         end else  //promedio minimo
             if promdia < prommin then begin
                 prommin:= promdia;
                 dprommin:= dia;
              end;  
        // informe del dia 
        writeln('en el dia: ',dia);
        writeln ('temperatura maxima del dia temp: ', maxdia,' hora: ', horamax);
        writeln;
        writeln ('temperatura minima del dia temp: ', mindia,' hora: ',horamin);
        writeln;
        writeln ('temperatura promedio del dia: ', promdia);
        //fin de la semana
    end;
    
    
    
    
    // informe del dia con menor promedio y el dia con mayor promedio
    writeln;
    writeln;
    writeln;
    writeln('dia con menor promedio: ', dprommin);
    writeln;
    writeln('dia con mayor promedio: ', dprommax);
    writeln;
end.
