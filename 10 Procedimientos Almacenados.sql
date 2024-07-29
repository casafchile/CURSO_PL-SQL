create or replace procedure aumenta_precio
as
    begin
        update libros set precio = precio +(precio*.01);
    end aumenta_precio;

select * from libros;

execute aumenta_precio;
----------------------------------------------------
create or replace procedure saludo 
AS 
BEGIN 
   dbms_output.put_line('Hola a todos'); 
END saludo; 
BEGIN 
   saludo;      --se ejecuta asi o "execute saludo"
END; 

