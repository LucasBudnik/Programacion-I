//fpc 3.0.4

program HelloWorld;
const
    fin = 999;
    c = 40;        
    //suponemos que las personas tienen entre 20 y 60 anios
    // y los codigos se encuentran entre 990 y 1005
var
    cod,edad,max,prom,n:integer;
begin
    //inicializacion
    prom:=0;
    max:=0;
    n:=0;
    cod := random(20)+990;
                               //mientras el codigo sea distinto del numero dado e interpretado como 'fin'
    while (cod <> fin) do begin writeln('codigo: ',cod);
       edad:= random(41)+20;    writeln('edad: ',edad);
       if edad > c then        // si la edad es mayor que la edad dada la adicionamos para calcular el promedio
           prom:= prom+1;  
       if edad > max then      //la persona con mayor edad
           max:= edad;
       n:=n+1;                 //contador de personas encuestadas
        cod := random(20)+990; writeln;writeln;
    end;
    prom:= (prom*100)div n;   // promedio de personas encuestadas mayores a la edad dada como 'c'
    
    writeln('la persona encuestada mas grande tenia: ',max,' años');
    writeln;
    writeln('el porcentaje de personas mayores a ',c,' son: ',prom,'%');
end.
