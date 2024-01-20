//fpc 3.0.4

program HelloWorld;
var
    car,ultcar:char;
    startm,finishs,spfn:integer;
    sp:boolean;
    car8,long, cantp:integer;
begin
    read(car);
    car8:=0;startm:=0;finishs:=0;spfn:=0;
    sp:=false;
    while (car <> 'z') do begin
        long:=0;
        cantp:=0;
        if car = 'M' then begin starTm:= startm+1;
        end else if car = 'P' then sp:=true;
        while (car <> ' ')and(car <> 'z') do begin
            if car = 'p' then cantp:=cantp+1;
            long:= long+1;
            ultcar:=car;
            read(car);
        end;
        if ultcar = 'S' then begin finishs:=finishs+1;
        end else if (ultcar = 'N')and(sp) then spfn:=spfn+1;
        sp:=false;
        if (long < 8)and(cantp = 2) then car8:= car8+1;
        while car = ' ' do
            read(car);
    end;
    writeln('cantidad de palabras que empiezan con M ',startm);
    writeln('cantidad de palabras que terminan con S ',finishs);
    writeln('cantidad de palabras que empiezan con P y terminan con N ',spfn);
    writeln('cantidad de palabras que tienen menos de 8 caracteres y dos p ',car8);
    
end.
