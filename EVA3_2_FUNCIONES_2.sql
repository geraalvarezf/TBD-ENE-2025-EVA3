delimiter $$
create function comparar(num1 int, num2 int)
returns varchar(20) deterministic

begin
declare resu varchar(20);

	if num1 > num2 then
		set resu = "MAYOR";
        
    elseif num1 < num2 then
		set resu = "MENOR";
        
    else
		set resu = "IGUAL";
    end if;
    
	return resu;
 end $$
 