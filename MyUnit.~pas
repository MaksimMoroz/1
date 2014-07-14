unit MyUnit;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Series, TeEngine, TeeProcs, Chart, jpeg,math,TeeFunci;

Type
Integral=class
  fx : extended;//результат вычисления функции
  a:extended;//нижний предел
  b:extended;//верхний предел
  h:extended;//шаг
  n:integer;//количество шагов
  Series1:TLineSeries; //рисование функции
  Series2: TAreaSeries;//рисование площади
Function func(x:extended):extended;
 Function trapeze():extended;
 Function left1():extended;
 Function right1():extended;
 Function medium():extended;
end;
    
  var
x:extended;
  Int:Integral;

implementation

Function Integral.func(x:extended):extended;
  begin
    Result:=1/(x+sqrt(cos(x)));;
  end;

Function Integral.trapeze():extended;
var
  i:integer;
begin

Series1.Clear;
Series2.Clear;
Series2.Stairs:=False;
Series2.InvertedStairs:=False;
     x:=a;
     int.fx:=0;
     for i:=0 to n-1 do
       begin
       int.fx:=int.fx+((func(x)+func(x+h))/2)*h;
       Series1.AddXY(x,((func(x)+func(x+h))/2));
       Series2.AddXY(x,((func(x)+func(x+h))/2));
       x:=x+h;
       end;
     Result:=int.fx;
     if int.fx=0 then
     showmessage('ошибка');
end;

Function Integral.left1():extended;
var
  i:integer;
begin
Series1.Clear;
Series2.Clear;
Series2.Stairs:=True;
Series2.InvertedStairs:=False;
     x:=a;
     int.fx:=0;
     for i:=0 to n-1 do
       begin
       int.fx:=int.fx+func(x)*h;
       Series1.AddXY(x,func(x));
       Series2.AddXY(x,func(x));
       x:=x+h;
       end;
     Result:=int.fx;
     if int.fx=0 then
     showmessage('ошибка');
end;

Function Integral.right1():extended;
var
  i:integer;
begin
Series1.Clear;
Series2.Clear;
Series2.Stairs:=True;
Series2.InvertedStairs:=True;
     x:=a;
     int.fx:=0;
     for i:=1 to n do
       begin
       int.fx:=int.fx+func(x+h);
       Series1.AddXY(x,func(x+h));
       Series2.AddXY(x,func(x+h));
       x:=x+h;
       end;
     int.fx:=int.fx*h;
     Result:=int.fx;
     if int.fx=0 then
     showmessage('ошибка');
end;

Function Integral.medium():extended;
 var
 i:integer;
 begin
  Series1. Clear;
  Series2.Clear;
  Series2.Stairs:=True;
  Series2.InvertedStairs:=True;
     x:=a;
     int.fx:=0;
     for i:=0 to n-1 do
       begin
       int.fx:=int.fx+func(x+(h/2));
       Series1.AddXY(x-h,func(x-(h/2)));
       Series2.AddXY(x-h,func(x-h));
       x:=x+h;
       end;
     int.fx:=int.fx*h;
     Result:=int.fx;
     if int.fx=0 then
     showmessage('ошибка');
 end;

end.
