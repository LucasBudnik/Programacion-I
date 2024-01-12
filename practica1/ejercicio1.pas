{1.- Realizar un programa que lea por teclado un conjunto de valores que
representan cantidades de visitantes que ingresan por día (para el mes de enero)
a un parque de acuático. Se pide:
a) Informar la máxima cantidad de visitantes que ingresaron en enero.
b) Agregar al inciso a) el código necesario para informar el día del mes que
menos visitantes recibió el parque.}


program   ingresantes;
const
  enero=31;
var                                           //variables del programa principal
    i:integer;                  //indice de dias
    max:integer;                //maxima cantidad de ingresantes
    visit:integer;              //cantidad de ingresantes
    min:integer;                //minima cantidad de ingresantes
    dmin:integer;               //dia con menor cantidad de ingresantes

begin                                          //programa principal
  visit:=0;
  dmin:=0;
  max:=0;
  min:=999;
  for i:=1 to enero do begin              //desde el dia 1 de enero hasta el 31
    writeln('ingresantes en el dia:',i);
    readln(visit);
    if visit>max then begin               //verificar que la cantidad de visitantes sea mayor a la maxima registrada
      max:=visit;
    end else if visit<min then begin      //sino se verifica la condicion anterior, se verifica si la cantidad de visitantes sea menor a la menor registrada
               min:=visit;
               dmin:=i;                   //se registra el dia con menor cantidad de ingresantes
              end;
  end;                                    // se informa los datos pedidos
  writeln('la cantidad maxima de ingresantes fue:',max);
  writeln;
  writeln('el dia que menos ingresantes hubo fue:',dmin);


end. 