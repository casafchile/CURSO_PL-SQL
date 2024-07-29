select trigger_name,triggering_event,table_name,status
from user_triggers where table_name='EMPLEADOS';

alter trigger TR_AUMENTASUELDO disable; --desabilita el trigger

alter trigger TR_AUMENTASUELDO enable; --habilita el trigger
-----
update empleados set sueldo=2000 where documento='22333444';
select * from control;
select*from empleados;
truncate table control;