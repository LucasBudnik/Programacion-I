//fpc 3.0.4

program HelloWorld;
const 
    libros = 1000;
var
    L,paginas,min1,min2,Lmin1,Lmin2,max:integer;
begin
    min1:=10000;
    min2:=10000;
    max:=0;
    for L:=1 to libros do begin  //se recorren los 1000 libros
        paginas:= random(10000); //se lee la cantidad de paginas de cada uno
        if paginas < min1 then begin //se guarda el libro con menor cantidad de paginas
            min2:= min1;
            min1:= paginas;
            Lmin2:= Lmin1;
            Lmin1:=L;
         end else 
             if paginas < min2 then begin  // se guarda el segundo libro con menor cantidad de paginas
                 Lmin2:=L;
                 min2:=paginas;
              end else
                  if paginas>max then begin  // se guarda la cantidad de paginas del libro con mayor cantidad de paginas
                      max:=paginas;
                  end;
     end;     
     // se informa lo previamnente guardado
     writeln('libros con menor cantidad de paginas: ');
     writeln('primero: ',Lmin1);writeln('segundo: ',Lmin2);
     writeln('cantidad de paginas del libro con mayor cantidad de paginas: ',max);
                 
end.
