set SERVEROUTPUT on;
declare
    numero number;
begin
    for numero in 10..20 loop
        dbms_output.put_line('El valor es: '||numero);
    end loop;
end;
-----------------------------------------------------------
set SERVEROUTPUT on;
begin
    for f in 1..10 loop
        dbms_output.put_line('2 x '||f||' = '||(f*2));
    end loop;
end;
-----------------------------------------------------------
set SERVEROUTPUT on;
begin
    for f in 1..10 loop
        dbms_output.put_line('9 x '||f||' = '||(f*9));
    end loop;
end;