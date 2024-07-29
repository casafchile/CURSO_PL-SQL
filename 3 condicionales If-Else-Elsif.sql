--if-else
declare
    a number:=10;
    b number:=20;
    
begin

    if a > b then  
    dbms_output.put_line(a||' es mayor que ' || b);

    else
        dbms_output.put_line(b||' es mayor que ' || a);

    end if; --se acaba el if
end;

---------------------------------------------------
--if-else-elsif

declare
    numero number:=100;
begin
    if (numero = 10) then  
        dbms_output.put_line('valor de nuemro es 10');
    elsif (numero = 20) then  
        dbms_output.put_line('valor de nuemro es 20');
    elsif (numero = 30) then  
        dbms_output.put_line('valor de nuemro es 30');
    else
        dbms_output.put_line('Ninguno de los valores fue encontrado');
    end if;
    dbms_output.put_line('El valor exacto de la variable es: '||numero);
end;