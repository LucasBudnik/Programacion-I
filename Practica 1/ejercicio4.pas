//fpc 3.0.4

program HelloWorld;
const paises = 14;
var
     pais:integer;
     felinos:integer;
     max1,max2:integer;pmax1,pmax2:integer;
     min1,min2:integer;pmin1,pmin2:integer;
     mas40:integer;
begin
    //inicializacion 
    max1:=0;
    max2:=0;
    min1:=100;
    min2:=100;
    mas40:= 0;
    //regularizacion por paises
    for pais:=1 to paises do begin              writeln('pais: ',pais);
        felinos:= random(100);                  writeln('felinos: ',felinos);
                                                writeln;writeln;writeln;
        if felinos > 40 then                  //cantidad de paises con mas de 40 felinos
            mas40:=mas40+1;
        if felinos > max1 then begin          //pais con mayor cantidad de felinos
            max2:= max1;
            max1:= felinos;
            pmax2:=pmax1;
            pmax1:=pais;
         end else
             if felinos > max2 then begin    //segundo pais con mayor cantidad de felinos
                 max2:=felinos;
                 pmax2:=pais;
              end else 
                  if felinos < min1 then begin //pais con menor cantidad de felinos
                      min2:=min1;
                      min1:=felinos;
                      pmin2:=pmin1;
                      pmin1:=pais;
                   end else
                       if felinos < min2 then begin  //segundo pais con menor cantidad de felinos
                           min2:= felinos;
                           pmin2:=pais;
                        end;
                                
    end;
    mas40:= (mas40*100) div paises;    //calculo porcentual de paise con mas de 40 felinos
    
    //informe final
    writeln('paises con mayor cantidad de felinos: ');
    writeln('primero ',max1);writeln('segundo: ',max2);
    writeln('paises con menor cantidad de felinos: ');
    writeln('primero: ',min1);writeln('segundo: ',min2);
    writeln('procentaje de paises con mas de 40 felinos: ', mas40,'%');
end.
