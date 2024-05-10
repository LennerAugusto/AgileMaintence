
USE AgileMaintenceDB;
CREATE TABLE Client(
 Id CHAR(36) PRIMARY KEY,
 Name  VARCHAR(255),
 Cpf CHAR(15),
 Phone  CHAR(15),
 IsActive BOOL
);

INSERT INTO Client(Id, Name, Cpf, Phone, IsActive) 
VALUES ('78a9a8b1-b729-4277-a2ed-e7719c55811e', 'Gustavo Espinoza Filho', '922.631.920-00', '(27) 2114-8607', 1);

INSERT INTO Client (Id, Name, Cpf, Phone, IsActive) 
VALUES ('ca3af3b8-0066-48ad-9d78-0abae6399ad2', 'Valentin Jack Bezerra', '929.794.650-03', '(82) 3233-7626', 1);

INSERT INTO Client (Id, Name, Cpf, Phone, IsActive) 
VALUES ('18b50315-1abb-404d-967b-164ea7309c67', 'Bóris Inácio Cortês Jr.', '144.505.870-73', '(69) 2865-2195', 1);

INSERT INTO Client (Id, Name, Cpf, Phone, IsActive) 
VALUES ('827c2cad-34b3-4ab1-8b70-6435c5327a11', 'Ângela Karina Casanova de Cordeiro', '382.687.550-83', '(82) 2855-9109', 1);

INSERT INTO Client (Id, Name, Cpf, Phone, IsActive) 
VALUES ('f77df879-eda9-4efc-a082-1244474d22e1', 'Raquel Terezinha Bonilha', '117.554.210-52', '(69) 2764-4889', 1);

INSERT INTO Client (Id, Name, Cpf, Phone, IsActive) 
VALUES ('205fe1ad-33bb-4ece-85b4-88800e7f6514', 'Ali Caldeira de Paiva', '579.310.760-60', '(83) 2731-4678', 1);

INSERT INTO Client(Id, Name, Cpf, Phone, IsActive) 
VALUES ('902daef2-5ed2-4a85-a7f2-10d36f61a1c2', 'Diego Reginaldo Aguiar Espada', '779.247.610-39', '(84) 2372-5023', 1);

INSERT INTO Client (Id, Name, Cpf, Phone, IsActive) 
VALUES ('90cd7d32-fc84-4d86-bbcf-276102af7892', 'Fábio Camilo de Bezerra Filho', '243.679.370-03', '(85) 3220-6332', 1);

INSERT INTO Client(Id, Name, Cpf, Phone, IsActive) 
VALUES ('d7dde2e7-c941-45c7-9c33-bcb0272abb43', 'Diego Zeca de Abreu Filho', '768.965.920-95', '(32) 3659-3721', 1);

INSERT INTO Client(Id, Name, Cpf, Phone, IsActive) 
VALUES ('c26c4191-d9ba-4c99-ac90-5c60daae2693', 'Quico Aragão de Pacheco', '615.638.160-08', '(96) 3116-5319', 1);

CREATE TABLE OrderOfService(
	Id CHAR(36) PRIMARY KEY,
    ClientId char(36)  NOT NULL,
    NameClient VARCHAR(255),
    Vehicle CHAR(36),
     Plate CHAR(7),
    ProblemSumary CHAR(255),
    StartDate CHAR(10),
    EndDate CHAR(10),
    IsActive BOOL,
     FOREIGN KEY (ClientId) REFERENCES Client(Id)
);

INSERT INTO OrderOfService(Id, ClientId, NameClient, Vehicle, Plate, StartDate, EndDate, IsActive) 
VALUES ('4be29e01-ea92-4d9d-b445-9d929fb73fb3', 'c26c4191-d9ba-4c99-ac90-5c60daae2693', 'Quico Aragão de Pacheco', 'Corsa', 'NEC-2087', '09/05/2024', '09/05/2024', 1);

INSERT INTO OrderOfService(Id, ClientId, NameClient, Vehicle, Plate, StartDate, EndDate, IsActive) 
VALUES ('ca951622-81d4-44ae-b648-a138881013fd', '90cd7d32-fc84-4d86-bbcf-276102af7892', 'Fábio Camilo de Bezerra Filho', 'Gol', 'IAJ-1212', '09/05/2024', '09/05/2024', 1);

INSERT INTO OrderOfService(Id, ClientId, NameClient, Vehicle, Plate, StartDate, EndDate, IsActive) 
VALUES ('b9a032a7-b179-4f5e-adde-e3ccf7d19bd7', '78a9a8b1-b729-4277-a2ed-e7719c55811e', 'Gustavo Espinoza Filho', 'Prisma', 'HNI-0859', '09/05/2024', '09/05/2024', 1);

INSERT INTO OrderOfService(Id, ClientId, NameClient, Vehicle, Plate, StartDate, EndDate, IsActive) 
VALUES ('1ccc5cdc-289b-4ce6-886e-8a0e5c827a79', 'ca3af3b8-0066-48ad-9d78-0abae6399ad2', 'Valentin Jack Bezerra', 'Porshe', 'JZD-37776', '09/05/2024', '09/05/2024', 1);

INSERT INTO OrderOfService(Id, ClientId, NameClient, Vehicle, Plate, StartDate, EndDate, IsActive) 
VALUES ('200a24c8-80e6-4f54-b913-d1ab68754e08', '18b50315-1abb-404d-967b-164ea7309c67', 'Bóris Inácio Cortês Jr.', 'Buggy', 'MZR-7803', '09/05/2024', '09/05/2024', 1);
