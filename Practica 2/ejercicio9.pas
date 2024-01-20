//fpc 3.0.4

program HelloWorld;
var
    car,ultcar:char;
    ss:boolean;
    canto:integer;
    long:integer;
    cant:integer;
begin
    
    read(car);   //lectura
    
    ss:=false;  //inicializacion
    cant:=0;
                                
    while(car <> '*')do begin // lectura de la secuencia...
        
        long:=0;canto:=0;  //inicializacion
        
        if car = 's' then ss:=true; // si comienza con 's'
        
        while (car <> '*')and(car <> ' ')do begin //lectura de cada palabra...
        
            if ss then begin                       // si comienza con 's' 
                if car = 'o' then canto:=canto+1;  // se cuenta la cantidad de 'o' dentro de la palabra
                long:=long+1;                      // se cuenta la cantidad de caracteres dentro de la palabra
                ultcar:=car;                       // se almacena el ultimo caracter
            end;
            
            read(car);                             // se lee el sigiuiente caracter
        end;
        
        if (ss) and (long>=6) and (canto=2) and (ultcar = 's')then    // si la palabra  comienza y termina con s tiene 2 o y tiene mas de 6 caracteres
            cant:=cant+1;                          // se aumenta la cant de palabras que cumplen el cometido 
            
        ss:= false;                                // se reinicializa la variable que guarda sí la palabra comienza en 's'
        
        while car = ' ' do read(car);              // se limpian blancos
    
    end;
     
    writeln('la cantidad de palabras que cumplen son ', cant);
      
end.
