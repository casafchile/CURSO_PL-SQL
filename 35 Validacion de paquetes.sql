--en el usuario HR
create or replace package paq01 is
    function fun01 return number;
    procedure pro01;
    --------
    --si se coloca solo aca y no en el body, sale invalido en el select
    procedure pro02;
end;

select * from user_objects where object_name='PAQ01';

create or replace package body paq01
    is
        function fun01 return number is
        begin
            return 0;
        end;
    procedure pro01 is
        begin
            null;
        end;
    ------
    procedure pro02 is
        begin
            null;
        end;
    end;
