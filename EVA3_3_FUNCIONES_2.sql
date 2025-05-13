delimiter $$
create function calificacion_letra(nota int)
returns varchar(50) deterministic
begin
	declare resu varchar (50);
    case
     WHEN nota >= 90 AND nota <= 100 THEN SET resu = 'A';  
        WHEN nota >= 80 AND nota < 89 THEN SET resu = 'B';  
        WHEN nota >= 70 AND nota < 79 THEN SET resu = 'C';  
        WHEN nota >= 60 AND nota < 69 THEN SET resu = 'D';  
        WHEN nota >= 0 AND nota < 60 THEN SET resu = 'F';  
        else set resu = 'Calificacion no aprobatoria'; 
	end case;
    return resu;
end $$
delimiter ; 




