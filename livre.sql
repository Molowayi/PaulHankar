create TABLE livre (id int unsigned PRIMARY KEY AUTO_INCREMENT, titre varchar(120), auteur_id int) ENGINE=INNODB;

DELIMITER $$

CREATE PROCEDURE loadDates(
    titre VARCHAR(120), 
    id_auteur_livre INT
)
BEGIN
    
    DECLARE counter INT DEFAULT 0;
   	DECLARE idAuteur INT DEFAULT 1;

    WHILE counter <= 200 DO
        INSERT INTO livre (titre,idAuteur) VALUES ("Toto", idAuteur);
        SET counter = counter + 1;
        SET idAuteur = idAuteur +1 ;
    END WHILE;

END$$

DELIMITER ;

USE test_boucle_while;
CALL putBook("Toto", 1);


