set SERVEROUTPUT on;
declare
    valor number:=10;
    
begin
    loop 
        dbms_output.put_line(valor);
        valor:=valor+10;
        --exit when valor > 50;  --otra forma de hacerlo pero sin IF
        if valor > 50 then exit;
        end if;
    end loop;
    --MENSAJE FINAL DE SALIDA
    dbms_output.put_line('Valor final= '||valor);
end;

-------------------------------------------------
set SERVEROUTPUT on;
declare
    despegue number:=10;
    
begin
    loop 
        dbms_output.put_line(despegue);
        despegue:=despegue-1;
        if despegue<0 then exit;
        end if;
    end loop;
    dbms_output.put_line('Despegue');
end;