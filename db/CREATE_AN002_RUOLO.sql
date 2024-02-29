CREATE TABLE `AN002_RUOLO` (
  `AN002_ID` BIGINT NOT NULL AUTO_INCREMENT,
  `AN002_DESCRIZIONE` nvarchar(500) NOT NULL,
  `AN002_COD_RUOLO` nvarchar(100) NOT NULL, 
  `AN002_STATO` nvarchar(1) NOT NULL DEFAULT 'E',
  `AN002_DATA_CREAZIONE` datetime(4) default CURRENT_TIMESTAMP(4) NOT NULL,
  `AN002_COD_UTENTE_CREAZIONE` nvarchar(100) NOT NULL default "PA",
  `AN002_DATA_MODIFICA` datetime(4) NULL,
  `AN002_COD_UTENTE_MODIFICA` nvarchar(100) NULL,
  PRIMARY KEY (`AN002_ID`), 
  CONSTRAINT CHK_AN002_STATO CHECK (AN002_STATO = 'E' OR AN002_STATO = 'D'),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE AN002_RUOLO AUTO_INCREMENT = 1;