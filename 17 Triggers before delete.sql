truncate table control;

drop table alumnos;

create table alumnos(
	legajo varchar2(4) not null,
	documento varchar2(8) not null,
	nombre varchar2(30) not null,
	curso number(1) not null,
	materia varchar2(15) not null,
	nota_final number(3,2) not null);

insert into alumnos values('A234','23333333','LOPEZ ANA',5,'MATEMATICA',9);
insert into alumnos values('A345','24444444','GARCIA CARLOS',6,'MATEMATICA',8.5);
insert into alumnos values('A457','26666666','PEREZ FABIAN',6,'LENGUA',3.2);
insert into alumnos values('A348','25555555','PEREZ PATRICIA',6,'LENGUA',7.85);
insert into alumnos values('A123','22222222','PEREZ PATRICIA',5,'MATEMATICAS',9);
insert into alumnos values('A124','32222222','GONZALES JOSE',5,'BIOLOGIA',9);
insert into alumnos values('A124','32222222','GONZALES JOSE',5,'MATEMATICAS',8);
----------------------------------
create or replace trigger borradoalumnos
before delete
    on alumnos
    for each row
        begin
        insert into control values(user,sysdate);            
end borradoalumnos;

delete from alumnos where curso=5;

select * from alumnos;
select * from control;
