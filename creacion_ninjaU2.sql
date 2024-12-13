DROP DATABASE IF EXISTS NinjasU2; 
CREATE DATABASE IF NOT EXISTS NinjasU2; 

USE NinjasU2; 

CREATE TABLE IF NOT EXISTS Aldeas (
	idAldea INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Rangos (
	idRango INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Ninjas (
	idNinja INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(250) NOT NULL,
	idRango INT,
	idAldea INT, 
	FOREIGN KEY (idRango) REFERENCES Rangos(idRango),
	FOREIGN KEY (idAldea) REFERENCES Aldeas(idAldea)
	
);

CREATE TABLE IF NOT EXISTS Habilidades (
	idHabilidad INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(250) NOT NULL UNIQUE,
	descripcion VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS HabilidadesNinjas (
	idHabilidad INT,
	idNinja INT, 
	PRIMARY KEY (idHabilidad, idNinja),
	FOREIGN KEY (idHabilidad) REFERENCES Habilidades(idHabilidad),
	FOREIGN KEY (idNinja) REFERENCES Ninjas(idAldea)
);

CREATE TABLE IF NOT EXISTS Misiones (
	idMision INT AUTO_INCREMENT PRIMARY KEY,
	descripcion VARCHAR(250) NOT NULL,
	recompensa DOUBLE NOT NULL,
	idRango INT, 
	FOREIGN KEY (idRango) REFERENCES Rangos(idRango)
);

CREATE TABLE IF NOT EXISTS MisionesNinjas (
	fechaInicio DATE NOT NULL,
	fechaFinal DATE, 
	estado BOOLEAN NOT NULL, 
	idMision INT,
	idNinja INT,
	FOREIGN KEY (idMision) REFERENCES Misiones(idMision),
	FOREIGN KEY (idNinja) REFERENCES Ninjas(idNinja)
);
