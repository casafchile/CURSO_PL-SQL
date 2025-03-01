--implicito
set SERVEROUTPUT on;

declare
    filas number;
begin
    update empleados set sueldo = sueldo + 500 where sueldo>=3000;
    if sql%notfound then
        dbms_output.put_line('==NO HAY EMPLEADOS DISPONIBLES==');
    elsif sql%found then
        filas:=sql%rowcount; --Mostrara la cantidad de lineas que fueron actualizadas
        dbms_output.put_line(filas||': EMPLEADOS ACTUALIZADOS');
    end if;
end;


select*from empleados;
-----------
 drop table empleados;

 create table empleados(
  documento char(8),
  apellido varchar2(30),
  nombre varchar2(30),
  domicilio varchar2(30),
  seccion varchar2(20),
  sueldo number(8,2)
 );
 insert into empleados values('22222222','Acosta','Ana','Avellaneda 11','Secretaria',1800);
 insert into empleados values('23333333','Bustos','Betina','Bulnes 22','Gerencia',5000);
 insert into empleados values('24444444','Caseres','Carlos','Colon 333','Contabilidad',3000);
 insert into empleados values('32323255','Gonzales','Miguel','Calle 4ta No.90','Contabilidad',8000);
 insert into empleados values('56565555','Suarez','Tomas','Atarazana 78','Cobros',1500);