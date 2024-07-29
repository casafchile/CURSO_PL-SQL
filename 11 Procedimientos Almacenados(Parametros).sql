create or replace procedure aumentasueldo(anio in number, porcentaje in number)
as
begin
    update empleados set sueldo=sueldo+(sueldo*porcentaje/100)
    where (extract(year from current_date)- extract(year from fechaingreso))>anio;
end aumentasueldo;

SELECT * FROM empleados;
execute aumentasueldo(10,20);    --datos ingresados
-------------------------------------------------------
create or replace procedure ingresoemple(docu in char, nom in varchar, ape in varchar2)
as
begin
    insert into empleados values(docu, nom, ape, null, sysdate);
end ingresoemple;

SELECT * FROM empleados;
execute ingresoemple('25656589','Emilio', 'Perez'); --datos ingresados

------------------------------------------------------
--Elimina el procedimiento
drop procedure ________