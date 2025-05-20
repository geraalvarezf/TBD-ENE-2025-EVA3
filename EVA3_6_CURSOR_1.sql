delimiter $$

create procedure contar_clientes2(out cont int)
begin	
#variable para guardar los datos de la consulta
	declare ic_cl int;
    declare terminar int default false; #terminar el loop
    
	declare contar_cl cursor for select customer_id
	from customer; #consulta que se almacena en el cursor
    
	declare continue handler for not found #excepcion (fin de cursor
    begin
		set terminar = true;
    end;
    
    open contar_cl;
    set cont = 0;
    contar: loop
		fetch contar_cl into ic_cl;
		set cont = cont + 1;
        if terminar then 
			leave contar;
		end if;
    end loop;
end$$

delimiter ;