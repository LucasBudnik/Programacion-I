//fpc 3.0.4

program HelloWorld;
const
    minutes = 59;
type
    time = record
        hour:  integer;
        min: 0 .. minutes;
     end;

{----------------------------------------------
Read Time - Read both times}
procedure read_time(var t1:time;var t2:time);
begin
    readln(t1.hour);
    readln(t1.min);
    readln(t2.hour);
    readln(t2.min);
end;

{----------------------------------------------
Difference - Calc the difference of the times}
function diference(t1,t2:time):time;
var result:time;
begin
    if t1.hour < t2.hour then begin
        result.hour:= t2.hour - t1.hour;
    end else
        result.hour:= t1.hour - t2.hour;
    if t1.min < t2.min then begin
        result.min:= t2.min - t1.min;
    end else 
        result.min:= t1.min - t2.min;
    diference:= result;
end;

{----------------------------------------------
Menor - Calc the less time}
function menor (t1,t2:time):time;
begin
    if t1.hour <  t2.hour then begin
        menor:=t1;
    end else
        if t2.hour < t1.hour then begin
            menor:= t2;
        end else
            if t1.min < t2. min then begin
                menor:= t1;
            end else
                menor:= t2;
end;
{----------------------------------------------
Print_time: Show the time as hours and minutes}
procedure print_time(t:time);
begin
    if t.hour < 10 then begin
        write('0',t.hour);
    end else
        write(t.hour);
    write(':');
    if t.min< 10 then begin
        write('0',t.min);
    end else
        write(t.min);
    writeln();
end;
{----------------------------------------------
writeResult - Show the result, such as a answer}
procedure write_result(d,m,t1,t2:time);
begin
    print_time(t1);
    print_time(t2);
    write('diference: ');print_time(d);
    write('less: ');print_time(m);
end;
{----------------------------------------------
mainProces - lead all process}
procedure main_process();
var 
    t1,t2,d,m:time;
begin
    read_time(t1,t2);
    d:=diference(t1,t2);
    m:=menor(t1,t2);
    write_result(d,m,t1,t2);
end;

{----------------------------------------------
PROGRAMA PRINCIPAL - CALL ALL PROCESS}
begin
    main_process;
end.
