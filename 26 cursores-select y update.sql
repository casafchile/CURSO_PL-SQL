set SERVEROUTPUT on;

--hace un loop y muestra todos los nombres y su respectivo sueldo
declare
    v_empleados empleados%rowtype;
begin
    for v_empleados in (select * from empleados) loop
        dbms_output.put_line(v_empleados.nombre ||' - ' ||v_empleados.sueldo);
    end loop;
end;
---------------
set SERVEROUTPUT on;
--actualiza los datos del empleado, pero si no encuentra el dato lanzara la notificacion
begin
    update empleados set sueldo=10000 where documento='23333334';
    if sql%notfound then
        dbms_output.put_line('NO EXISTE REGISTRO PARA MODIFICAR');
    end if;
end;