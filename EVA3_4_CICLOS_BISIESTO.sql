delimiter $$

create function año_bisiesto(año int)
returns boolean deterministic
begin
	declare resultado boolean default false;
    
    if (año % 4 = 0 and año % 100 != 0)
		or (año % 400 = 0) then 
		set resultado = true;
	end if;
	return resultado;
end $$
delimiter ;