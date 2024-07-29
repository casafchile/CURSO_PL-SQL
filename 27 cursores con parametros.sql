set SERVEROUTPUT on;

declare
    v_nom productos.nombre_producto%type;
    v_pre productos.precio%type;

cursor c_productos (idprod productos.id_producto%type)
    is
        select nombre_producto, precio from productos
        where id_producto = idprod;
begin
    open c_productos(2);
    loop
        fetch c_productos into v_nom,v_pre;
        exit when c_productos%notfound;
        dbms_output.put_line('Articulo: '||v_nom||', precio: '||v_pre);
    end loop;
    close c_productos;
end;

select*from productos
----------------------------------------------------------

--------
drop table productos;

create table productos(
id_producto int not null,
nombre_producto VARCHAR2(25),
precio NUMBER(6,2),
descripcion VARCHAR2(50));

insert into productos values(1,'Abrazadera',560,'Abrazadera de media pulgada');
insert into productos values(2,'Destornillador',120,'destornillador cabeza plana');
insert into productos values(3,'Martillo',300,'Martillo con ganzua'); 
insert into productos values(4,'Llave inglesa',200,'Llave inglesa de plomeria');
insert into productos values(5,'Pasadores RTR',935,'Tuerca exagonal de Almenada');
insert into productos values(6,'Tornillo exagonal',90,'Tornillo exagonal de baja o tuerca');