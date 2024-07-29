declare
    mensaje varchar2(30):= 'Buenos dias a todos';
    numero CONSTANT number :=30000;

begin
    dbms_output.put_line('El mensaje anterior es: '||mensaje);
    mensaje:='adios a todos';
    dbms_output.put_line('El mensaje nuevo es: '||mensaje);
    dbms_output.put_line(numero);
end;