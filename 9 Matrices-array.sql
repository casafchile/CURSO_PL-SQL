set SERVEROUTPUT on;
declare
    type a_paises is varray(5)of varchar2(20);
    nombre a_paises;
begin
    nombre:=a_paises('Chile','Argentina','Peru','Bolivia','Uruguay');
    for p in 1..5 loop
        dbms_output.put_line('Nombre pais: '||nombre(p));
    end loop;
end;
-----------------------------------------------------
set SERVEROUTPUT on;
declare
    type matriz_nombres is varray(5)of varchar2(20);
    type matriz_edad is varray(5)of integer;
    nombres matriz_nombres;
    edad matriz_edad;
    total integer;
begin
    nombres:=matriz_nombres('Juan','Felipe','Gabriela','Eduardo','Maria');
    edad:=matriz_edad(28,23,19,48,5);
    total:=nombres.count;
    for f in 1..total loop
        dbms_output.put_line('Nombre: '||nombres(f)||' Edad: '||edad(f));
    end loop;
end;
