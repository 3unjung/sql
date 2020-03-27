-- Priviléges --
/* Donne tous les droits à un utilisateur
GRANT ALL PRIVILEES ON nom_de_la_base. * TO 'utilisateur'@'adress_hp'
IDENTITIED BY 'mot_de_pass';

privilege = SELECT, INSERT, DELETE, UPDATE, CREATE, DROP...
objet = nom_base.nomtable (exemple: papyrus.fournis)
utilisateur = nom de l'utilisateur

GRANT SELECT, INSERT, UPDATE 
ON nom_de_la_base
TO nom_de_l_utilisateur
IDENTIFIED BY '1Ksable'; */

