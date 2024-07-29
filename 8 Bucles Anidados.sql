set SERVEROUTPUT on;
declare
    bucle1 number:=0;
    bucle2 number;
begin
    loop
        dbms_output.put_line('---------------------------');
        dbms_output.put_line('Valor de bucle externo = ' || bucle1);
        dbms_output.put_line('---------------------------');
        bucle2:=0;
            loop
            dbms_output.put_line('Valor de bucle anidado = ' ||bucle2);
                bucle2:=bucle2+1;
            exit when bucle2=5;
        end loop;
        bucle1:=bucle1+1;
        exit when bucle1=3;
    end loop;
end;