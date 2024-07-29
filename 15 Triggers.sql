create table libros(
  codigo number(6),
  titulo varchar2(40),
  autor varchar2(30),
  editorial varchar2(20),
  precio number(6,2)
 );
 create table control(
  usuario varchar2(30),
  fecha date
 );
  drop table libros;
 drop table control;
-----
/*cadaingreso que uno ingresa datos dentro de la tabla libros, 
se ingresara en control el usuario que ingreso datos*/

create or replace trigger tr_ingresolibros
    before insert
        on libros
        begin
          insert into control values(user, sysdate);
end tr_ingresolibros;

select * from control;
select * from libros;
insert into libros values(100,'Uno','Richard Bach','Planeta',25);