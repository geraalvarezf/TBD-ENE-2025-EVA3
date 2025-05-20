delimiter $$

create procedure copiar()
begin
	declare id_cust int;
    declare first_n varchar(50);
    declare last_n varchar(50);
    declare terminar int default false;
    
    declare copiar_c cursor for 
		select customer_id, first_name, last_name from customer;
    
    
    declare continue handler for not found set terminar = true;
    
    open copiar_c;
    copiar_customer: loop
		fetch copiar_c into id_cust, first_n, last_n;
        insert into customer2 value(id_cust, first_n, last_n);
        if terminar then
			leave copiar_customer;
            end if;
    end loop;
    
end$$