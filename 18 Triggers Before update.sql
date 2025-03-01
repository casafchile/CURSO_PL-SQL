truncate table control;
drop table empleados;

--creacion tabla empleados
   create table empleados(
  documento char(8),
  apellido varchar2(20),
  nombre varchar2(20),
  seccion varchar2(30),
  sueldo number(8,2)
 );
--creacion tabla control
 create table control(
  usuario varchar2(30),
  fecha date
 );

--ingreso de datos
 insert into empleados values('22333444','ACOSTA','Ana','Secretaria',500);
 insert into empleados values('22777888','DOMINGUEZ','Daniel','Secretaria',560);
 insert into empleados values('22999000','FUENTES','Federico','Sistemas',680);
 insert into empleados values('22555666','CASEROS','Carlos','Contaduria',900);
 insert into empleados values('23444555','GOMEZ','Gabriela','Sistemas',1200);
 insert into empleados values('23666777','JUAREZ','Juan','Contaduria',1000);
--------------------------------------------------------------------------
create or replace trigger actualiza
before update
on empleados 
    for each row
    begin
        insert into control values(user,sysdate);
end actualiza;

  update empleados set sueldo=sueldo+sueldo*0.1 where seccion='Secretaria';

select * from empleados;
select * from control;