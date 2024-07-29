set SERVEROUTPUT on;
declare
    nombre varchar2(20);
    direccion varchar2(30);
    detalles clob;
    eleccion char(1);
    
begin
    nombre:='Pedro Perez';
    direccion:='Calle Primera No 1';
    detalles:='Este es el detalle de la variable clob que iniciamos en la 
              seccion declarativa, es una variable de gran almacenamiento';
    eleccion:='y';
    if eleccion = 'y' then    
        dbms_output.put_line(nombre);
        dbms_output.put_line(direccion);
        dbms_output.put_line(detalles);
    end if;
end;
-----------------------------------------------------------
set SERVEROUTPUT on;
declare
    saludo varchar2(12):='HoLa A tOdOs';
        
begin
    dbms_output.put_line(UPPER(saludo));--convierte en mayusculas
    dbms_output.put_line(LOWER(saludo));--convierte en minusculas
    dbms_output.put_line(INITCAP(saludo));--convierte a mayusculas las primeras palabras
    dbms_output.put_line(SUBSTR(saludo,1,1));  /*Busca posicion de caracteres
                                                 a partir de lugar indicado*/
    dbms_output.put_line(INSTR(saludo,'o'));   /*indica la posicion de un caracter
                                               indicado en segundo parametro*/
end;
-----------------------------------------------------------
set SERVEROUTPUT on;
declare
    saludo2 varchar2(30):='####Hola a todos####';
        
begin
    dbms_output.put_line(RTRIM(saludo2,'#'));--elimina los iconos del lado derecho
    dbms_output.put_line(LTRIM(saludo2,'#'));--elimina los iconos del lado derecho
    dbms_output.put_line(TRIM('#' from saludo2));--elimina los iconos del lado derecho
end;