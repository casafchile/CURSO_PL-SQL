create table control_empleados(
    usuario varchar2(20),
    fecha date,
    accion varchar2(20)
);
---------------------------
create or replace trigger tr_control_empleados
before insert or update or delete
on empleados
for each row
    begin
        if inserting then
            insert into control_empleados values(user, sysdate,'Ingreso');
        end if;
        if deleting then
            insert into control_empleados values(user, sysdate,'Borrado');
        end if;
        if updating then
            insert into control_empleados values(user, sysdate,'Actualizacion');
        end if;
end tr_control_empleados;

--
select*from control_empleados;
select*from empleados;

insert into empleados values (22555888, 'CASERES', 'ANTONIO', 'Gerencia',3000);
update empleados set sueldo=3001 where sueldo=3000;
delete from empleados where seccion='Gerencia';

