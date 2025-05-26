DELIMITER $$

CREATE FUNCTION potencia(base DECIMAL(20,6), exponente INT) 
RETURNS DECIMAL(20,6) 
DETERMINISTIC
BEGIN
    DECLARE resultado DECIMAL(20,6) DEFAULT 1;
    DECLARE cont INT DEFAULT 0;
    
    IF exponente < 0 THEN
        RETURN NULL; 
    END IF;
    
    etiqueta: LOOP
        IF cont >= exponente THEN
            LEAVE etiqueta;  
        END IF;
        
        SET resultado = resultado * base;
        SET cont = cont + 1;
    END LOOP etiqueta;
    
    RETURN resultado;
END $$

DELIMITER ;