delimiter $$

create function sumatoria(num int)
returns int deterministic
begin
	declare sumatoria int default 0;
    declare cont int default 1;
	etiqueta: loop
		set sumatoria = sumatoria + cont;
		set cont = cont + 1;
        if cont > num then
			leave etiqueta;		#equivalente al break
		end if;
    end loop etiqueta;
	return sumatoria;

end $$
delimiter ;