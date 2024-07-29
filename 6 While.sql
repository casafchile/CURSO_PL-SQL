set SERVEROUTPUT on;
declare
    valor number := 10;
begin
    while valor<20 loop
        dbms_output.put_line('El valor es: '||valor);
        valor:= valor+1;
    end loop;
end;
-----------------------------------------------------------
set SERVEROUTPUT on;
declare
    numero number := 0;
    resultado number;
begin
    while numero <=5 loop
        resultado:=3*numero;
        dbms_output.put_line('3 x '||numero ||' = '||resultado);
        numero:= numero+1;
    end loop;
end;