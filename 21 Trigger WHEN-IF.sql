create or replace trigger tr_aumentasueldo
before update
on empleados
for each row when (new.sueldo>old.sueldo)
    begin
        insert into control values(user,sysdate,:old.documento,:old.sueldo,:new.sueldo);
end tr_aumentasueldo;

update empleados set sueldo=600 where documento=22333444;
select * from control;
select*from empleados;
-----------------------------

--Al colocar el sueldo en null, el sistema entregara en la base de datos valor 0

create or replace trigger tr_actualiza_datos
before insert
on empleados
for each row 
    begin
        :new.apellido:=upper(:new.apellido); --variable
        if :new.sueldo is null then
            :new.sueldo:=0;
        end if;
end tr_actualiza_datos;

delete from empleados where documento='2566777';
insert into empleados values('2566777','Lopez','Luisa','Secretaria',null);
select * from control;
select*from empleados;
-----------------------------
drop table empleados;

 create table empleados(
  documento char(8),
  apellido varchar2(20),
  nombre varchar2(20),
  seccion varchar2(30),
  sueldo number(8,2)
 );

   drop table control;
 create table control(
  usuario varchar2(30),
  fecha date,
  documento char(8),
  antiguosueldo number(8,2),
  nuevosueldo number(8,2)
 ); 
  insert into empleados values('22333444','ACOSTA','Ana','Secretaria',500);
 insert into empleados values('22555666','CASEROS','Carlos','Contaduria',900);
 insert into empleados values('22777888','DOMINGUEZ','Daniel','Secretaria',560);
 insert into empleados values('22999000','FUENTES','Federico','Sistemas',680);
 insert into empleados values('23444555','GOMEZ','Gabriela','Sistemas',1200);
 insert into empleados values('23666777','JUAREZ','Juan','Contaduria',1000);