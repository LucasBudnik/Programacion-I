program ejercicio;
var
    alfa, beta, gama, epsilon: integer;
    procedure calcular(alfa: integer;{2} var gama: integer;{6}var beta:integer;{13} var epsilon: integer{-6});   
begin 
    alfa:=beta - 1 ; 
    beta:= alfa + 8; 
    gama:= beta + 15;
    epsilon:= beta - gama;
    writeln(alfa);     {12}
    writeln(beta);     {20}
    writeln(gama);     {35}
    writeln(epsilon);  {-15}
end; 

begin 
    alfa:= 6;
    beta:= 13;
    gama:= -6;
    epsilon:= 2;
    calcular(epsilon{2}, alfa{35}, beta{20}, gama{-15}); writeln;
    writeln(alfa);{35}
    writeln(beta);{20}
    writeln(gama);{-15} 
    writeln(epsilon);{2} 
end.