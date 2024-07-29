--:new
create or replace trigger tr_ingresalibros
before insert
on libros
for each row
    begin
        if(:new.precio<=30) then    --el nuevo precio del libro es menor o igual a 30 pasarlo a ofertas
            insert into ofertas values(:new.codigo,:new.precio,user,sysdate);
        end if;
    end tr_ingresalibros;


select * from libros;
select * from ofertas;
insert into libros values(155,'El gato con botas', 'Gaskin','Planeta',28);
------------------------------------------
--:old
create or replace trigger tr_actualizalibros
before update of precio
on libros
for each row
    begin 
        if(:old.precio <=30) and (:new.precio>30)then
            delete from ofertas where codigo=:old.codigo;
        end if;
        if(:old.precio>30) and (:new.precio<=30)then
        insert into ofertas values(:new.codigo,:new.precio,user,sysdate);
        end if;
end tr_actualizalibros;

select * from libros;
select * from ofertas;
update libros set precio=25 where codigo=120; --inserta el dato a la tabla ofertas
update libros set precio=60 where codigo=120; --elimina el dato a la tabla ofertas
------------------------------------------
drop table libros;
drop table ofertas;
-----
 create table libros(
  codigo number(6),
  titulo varchar2(40),
  autor varchar2(30),
  editorial varchar(20),
  precio number(6,2)
 );
 create table ofertas(
  codigo number(6),
  precio number(6,2),
  usuario varchar2(20),
  fecha date
 );
 insert into libros values(100,'Uno','Richard Bach','Planeta',25);
 insert into libros values(103,'El aleph','Borges','Emece',28);
 insert into libros values(105,'Matematica estas ahi','Paenza','Nuevo siglo',12);
 insert into libros values(120,'Aprenda PHP','Molina Mario','Nuevo siglo',55);
 insert into libros values(145,'Alicia en el pais de las maravillas','Carroll','Planeta',35);