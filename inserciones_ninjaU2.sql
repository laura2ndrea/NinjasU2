USE NinjasU2; 

INSERT INTO Aldeas (nombre) VALUES 
('Aldea 1'),
('Aldea 2'),
('Aldea 3');

INSERT INTO Rangos (nombre) VALUES 
('Rango 1'),
('Rango 2'),
('Rango 3');

INSERT INTO Ninjas (nombre, idRango, idAldea) VALUES 
('Ninja 1', 1, 1),
('Ninja 2', 2, 2),
('Ninja 3', 3, 3);

INSERT INTO Habilidades (nombre, descripcion) VALUES 
('Habilidad 1','Cualquier cosa de la habilidad 1'),
('Habilidad 2','Cualquier cosa de la habilidad 2'),
('Habilidad 3','Cualquier cosa de la habilidad 3');

INSERT INTO HabilidadesNinjas (idHabilidad, idNinja) VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Misiones (descripcion, recompensa, idRango) VALUES 
('Hacer algo muy importante', 200.23, 1),
('Hacer algo mas o menos importante', 100.69, 2),
('Hacer algo nada importante', 9.99, 3);

INSERT INTO MisionesNinjas (fechaInicio, fechaFinal, estado, idMision, idNinja) VALUES 
('2023-12-10', NULL, FALSE, 1, 1),
('2023-05-10', NULL, FALSE, 2, 2),
('2024-06-02', '2024-06-03', TRUE, 3, 3);

