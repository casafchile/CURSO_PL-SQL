set serveroutput on;

declare

    identificador integer := 50;
    nombre varchar2(25) := 'Felipe Herrera';
    apodo char(10) := 'phil';
    sueldo number := 300000; 
    comision decimal(4,2) := 50.20;
    fecha_actual date := (sysdate);
    fecha date := to_date('2024/07/16','yyyy/mm/dd');
    saludo varchar2(50) default 'Buenos dias a todos';

begin
    dbms_output.put_line('El valor de la variable es: ' || identificador);
    dbms_output.put_line('El nombre del usuario es: ' || nombre);
    dbms_output.put_line('El apodo del usuario es: ' || apodo);
    dbms_output.put_line('El sueldo del usuario es: ' || sueldo);
    dbms_output.put_line('La comision a cobrar al usuario es de: ' || comision);
    dbms_output.put_line('La fecha Actual es: ' || fecha_actual);
    dbms_output.put_line('Fecha de contratacion: ' || fecha);
    dbms_output.put_line('Saludo: ' || saludo);
end;