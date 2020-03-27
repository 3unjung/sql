DELIMITER | /* fait un truc utile qu'il faut mettre */
CREATE PROCEDURE listClients() /* crée une sorte de fonction */
BEGIN
	SELECT numfou FROM entcom;
END |

DELIMITER;

SHOW CREATE PROCEDURE listClients; /* affiche le résultat de la fonction */