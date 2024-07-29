create table tabla1(titulo varchar2(40),precio number(3,2))
------
create or replace procedure autorlibro(articulo in varchar2)
as
v_autor varchar(20);
begin
     select autor into v_autor from libros where titulo=articulo;
      insert into tabla1 
      select titulo, precio from libros where autor=v_autor;
end autorlibro;
execute autorlibro('El alquimista');
select * from tabla1;
select * from libros;

