set SERVEROUTPUT on;
--cracion de especificacion de paquete
create or replace package los_productos as --asimila el procedimiento
    PROCEDURE caracteristicas(v_codigo productos.codigo%type);
end los_productos;

	--se creo otra funcionespecificandola en el paquete
    FUNCTION f_precio(v_codigo int)
    return number;

--CREACION DE BODY DE PAQUETE
create or replace package body los_productos as
    procedure caracteristicas(v_codigo productos.codigo%type) is 
        v_producto productos.nombre%type;
        v_precio productos.precio%type;
        begin
            select nombre, precio into v_producto, v_precio 
            from productos where codigo=v_codigo;
            -- -------------------------------------
            dbms_output.put_line('Articulo: '||v_producto);
            dbms_output.put_line('Precio: '||v_precio);
            -- -------------------------------------
    end caracteristicas;
	---------------------------------------------------
--SE DEFINE EL PAQUETE

    function f_precio(v_codigo int)
    return number
    as
        v_precio number;
        begin
            select precio into v_precio
            from productos where codigo = v_codigo;
            return v_precio;
    end f_precio;

end los_productos;

--para llamar el paquete
begin
    los_productos.caracteristicas(3);
end;
