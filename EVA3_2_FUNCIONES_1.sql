delimiter $$
create function es_par(num int)
returns varchar(20) deterministic
begin
	declare residuo int;
    declare resu varchar(20);
    set residuo = mod(num, 2);
    if residuo = 0 then
		set resu = "PAR";
    else
		set resu = "IMPAR";
    end if;
    
    return resu;
end $$
delimiter ;
