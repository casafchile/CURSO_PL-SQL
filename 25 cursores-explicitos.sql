--explicitos
set SERVEROUTPUT on;

declare
    v_docu empleados.documento%type; --toma el dato del campo empleados.documento y conserva el tipo
    v_nom empleados.nombre%type;
    v_ape empleados.apellido%type;
    v_suel empleados.sueldo%type;
    
cursor c_cursor2 is    --mete el resultado de la busqueda al cursor
    select documento,nombre, apellido,sueldo 
    from empleados
    where documento=22222222;
    
begin
    open c_cursor2;                                 --Abre la coneccion
    fetch c_cursor2 into v_docu,v_nom,v_ape,v_suel; --toma dentro del cursor los datos
    close c_cursor2;                                --Cierra la coneccion
    dbms_output.put_line('Documento: '||v_docu);
    dbms_output.put_line('Nombre: '||v_nom);
    dbms_output.put_line('Apellido: '||v_ape);
    dbms_output.put_line('Sueldo: '||v_suel);
    
end;

select*from empleados;