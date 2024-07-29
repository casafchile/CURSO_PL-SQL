create or replace function f_datoempleados(v_documento1 in number, v_documento2 in number)
return SYS_REFCURSOR
is
    v_ref SYS_REFCURSOR;
    
begin
    open v_ref for SELECT * FROM empleados where documento in (v_documento1,v_documento2);
    return v_ref;
end;
----------------------------
-- ejecuta
select f_datoempleados(22222222)from dual; --no muestra como queremos
--
var rc1 refcursor;
exec :rc1:=f_datoempleados(22222222,24444444);
print rc1;
-------------
SELECT * FROM empleados;