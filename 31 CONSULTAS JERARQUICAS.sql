select nombre, id_puesto, level/*level es una palabra reservada que trae el nivel 
                                 de empleado segun se visualiza la relacion empleado 
                                 supervisor en la jerarquia*/
from empleados
start with nombre = 'Miguel Gonzales' --se comienza con el nivel mas alto de la jerarquia
connect by prior id_empleado = id_supervisor; --prior: identifica la relacion entre el empleado y supervisor

select*from empleados;
------------------------------------------------------------
select level, nombre, id_puesto,
sys_connect_by_path(nombre, ' > ')JERARQUIA    --muestra la lista de jerarquia
from empleados
START with id_supervisor is null 
connect by prior id_empleado = id_supervisor;
----
drop table empleados;

create table empleados (
id_empleado int not null primary key,
nombre varchar(20) not null,
id_puesto char(20),
id_supervisor int null
);

insert into empleados values(100,'Miguel Gonzales','PRESIDENTE',null);           
insert into empleados values(101,'Federico Antillana','VICE_PRESIDENTE',100);
insert into empleados values(102,'MIguel Montero','GERENTE_GRAL',100);
insert into empleados values(103,'Manuel Saldaños','IT_GERENTE',102);
insert into empleados values(104,'Ana Montesinos','SOPORTE_IT',103);
insert into empleados values(105,'Manuel Figueroa','SOPORTE_IT',103);
insert into empleados values(106,'Eliana Sandoval','SOPORTE_IT',103);
insert into empleados values(107,'Iluminada Contreras','SOPORTE_IT',103);
insert into empleados values(108,'Manuela Condado','SECRETARIA',101);
insert into empleados values(109,'Emilia Cortinez','SECRETARIA',102);
insert into empleados values(110,'Denia Soler','SECRETARIA',103);
insert into empleados values(111,'Barbara Eleonor','SECRETARIA',101);
insert into empleados values(112,'Fausto Melaneo','VENDEDOR',102);
insert into empleados values(113,'Adalberto Mirabal','VENDEDOR',102);
insert into empleados values(114,'Estelvina Zorrilla','VENDEDORA',102);
insert into empleados values(115,'Mireya Matos','ASISTENTE_SECRETARIO',108);
insert into empleados values(116,'Elena Martinez','ASISTENTE_SECRETARIO',109);