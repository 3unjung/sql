DELIMITER |
CREATE PROCEDURE listCommandes()
BEGIN 
	SELECT * FROM entcom WHERE obscom != '';
END |

DELIMITER;

SHOW CREATE PROCEDURE listCommandes;