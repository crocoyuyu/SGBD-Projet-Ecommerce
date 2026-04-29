SPOOL C:\temp\Execution00.log

-- connection systeme (DBA/compte technique oracle déjà existant)
connect system/Pise2025

SHOW USER

-- Seulement necessaire si on exécute les scripts plusieurs fois :
-- DROP USER administrateur cascade;
-- DROP USER gestionnaire_stock cascade;
-- DROP USER commercial cascade;
-- DROP USER service_client cascade;
-- DROP USER preparateur cascade;
-- DROP TABLESPACE DATA_SOF_PISE INCLUDING CONTENTS AND DATAFILES ;
-- DROP TABLESPACE INDEX_SOF_PISE INCLUDING CONTENTS AND DATAFILES ;


-- creation du schema administrateur (l'administateur metier de l'application)
CREATE USER administrateur IDENTIFIED BY admin123;

-- Attribut des privileges d'admin
GRANT connect TO administrateur;
GRANT create table TO administrateur;
GRANT create view TO administrateur;
GRANT create any index TO administrateur;
GRANT create synonym TO administrateur;
GRANT create sequence TO administrateur;

SPOOL OFF ;
