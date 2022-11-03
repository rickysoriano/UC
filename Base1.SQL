CREATE TABLE UserUc(
    UserId INTEGER IDENTITY (1,1) PRIMARY KEY,
    UserName VARCHAR(100),
    Password VARCHAR(32),
    CreatedDate DATETIME,
    UpdatedBY DATETIME,
    CreatedBy INTEGER,
    UpdatedB INTEGER,
    Active BIT
);

CREATE TABLE Organizer(
    OrganizerId INTEGER IDENTITY (1,1) PRIMARY KEY,
    Name VARCHAR(50),
    CreatedDate DATETIME,
    CreatedBy INTEGER,
    UpdatedB INTEGER,
    UpdatedDate DATETIME,
    Active BIT
);

CREATE TABLE EventUc(
    EventUcId INTEGER IDENTITY (1,1) PRIMARY KEY,
    Name VARCHAR (200),
    OrganizerId INTEGER,
    Observations VARCHAR(700),
    DurationDays INTEGER,
    CreatedDate  DATETIME,
    UpdatedDAte DATETIME,
    CreatedBy INTEGER,
    UpdatedB INTEGER,
    Active BIT 
);

CREATE TABLE EventDay(
    EventDayId INTEGER IDENTITY (1,1) PRIMARY KEY,
    EventUcId INTEGER,
    Schedule VARCHAR(200),
    StartTime TIME,
    EndTime TIME,
    Observations VARCHAR(300),
    Active BIT
);

CREATE TABLE GuestEvent(
    GuestId INTEGER IDENTITY (1,1) PRIMARY KEY,
    EventUcId INTEGER ,
    CreatedDate DATETIME, 
    UpdatedB INTEGER,
    Active BIT  
);

CREATE TABLE Guest(
    GuestId INTEGER IDENTITY (1,1) PRIMARY KEY,
    Name VARCHAR (50),
    LastName VARCHAR(100),
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    CreatedBy INTEGER,
    UpdatedB INTEGER,
    Active BIT 
);

CREATE TABLE Assitance(
    AssitanceId INTEGER IDENTITY (1,1) PRIMARY KEY,
    GuestId INTEGER,
    EventDayId INTEGER,
    StatusAssitanceId INTEGER
);

CREATE TABLE StatusAssitance(
    StatusAssitanceId INTEGER IDENTITY (1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Active BIT 
);

INSERT INTO UserUc (UserName,Password,CreatedBy,UpdatedB) VALUES ('ricky','1232342',1,1);
INSERT INTO UserUc (UserName,Password,CreatedBy,UpdatedB) VALUES ('Martin','1232542',2,2);
INSERT INTO UserUc (UserName,Password,CreatedBy,UpdatedB) VALUES ('Miguel','1232322',3,3);
INSERT INTO UserUc (UserName,Password,CreatedBy,UpdatedB) VALUES ('Laura','1235342',4,4);
INSERT INTO UserUc (UserName,Password,CreatedBy,UpdatedB) VALUES ('Vene','1232442',5,5);

INSERT INTO Organizer (Name,CreatedBy,UpdatedB) VALUES ('UC',1,1);
INSERT INTO Organizer (Name,CreatedBy,UpdatedB) VALUES ('CCB',2,2);
INSERT INTO Organizer (Name,CreatedBy,UpdatedB) VALUES ('ITT',3,3);
INSERT INTO Organizer (Name,CreatedBy,UpdatedB) VALUES ('ITM',4,4);
INSERT INTO Organizer (Name,CreatedBy,UpdatedB) VALUES ('ITC',5,5);

INSERT INTO EventUc (Name,OrganizerId,Observations,DurationDays,CreatedBy,UpdatedB) VALUES ('Programacion',1,'Computadoras funcionando',4,1,1);
INSERT INTO EventUc (Name,OrganizerId,Observations,DurationDays,CreatedBy,UpdatedB) VALUES ('Matematicas',2,'Mesas limpias',5,2,2);
INSERT INTO EventUc (Name,OrganizerId,Observations,DurationDays,CreatedBy,UpdatedB) VALUES ('Congreso Mecatronica',3,'Proyectores funcionando',6,4,4);
INSERT INTO EventUc (Name,OrganizerId,Observations,DurationDays,CreatedBy,UpdatedB) VALUES ('Congreso Electronica',1,'Laboratorio con herramientas',6,5,5);
INSERT INTO EventUc (Name,OrganizerId,Observations,DurationDays,CreatedBy,UpdatedB) VALUES ('Congreso Fisica',1,'Proyectores funcionando',6,5,5);

INSERT INTO EventDay (EventUcId,Schedule,Observations) VALUES (1,20,'Matutino');
INSERT INTO EventDay (EventUcId,Schedule,Observations) VALUES (2,10,'Matutino');
INSERT INTO EventDay (EventUcId,Schedule,Observations) VALUES (3,1,'Matutino');
INSERT INTO EventDay (EventUcId,Schedule,Observations) VALUES (4,15,'Matutino');
INSERT INTO EventDay (EventUcId,Schedule,Observations) VALUES (5,25,'Matutino');

INSERT INTO StatusAssitance(Name) VALUES ('Disponible');
INSERT INTO StatusAssitance(Name) VALUES ('Disponible');
INSERT INTO StatusAssitance(Name) VALUES ('Disponible');
INSERT INTO StatusAssitance(Name) VALUES ('Disponible');
INSERT INTO StatusAssitance(Name) VALUES ('Disponible');

INSERT INTO Assitance (GuestId,EventDayId,StatusAssitanceId) VALUES (1,1,1);
INSERT INTO Assitance (GuestId,EventDayId,StatusAssitanceId) VALUES (2,2,2);
INSERT INTO Assitance (GuestId,EventDayId,StatusAssitanceId) VALUES (3,3,3);
INSERT INTO Assitance (GuestId,EventDayId,StatusAssitanceId) VALUES (4,4,4);
INSERT INTO Assitance (GuestId,EventDayId,StatusAssitanceId) VALUES (5,5,5); 

INSERT INTO GuestEvent (EventUcId,UpdatedB) VALUES (1,1);
INSERT INTO GuestEvent (EventUcId,UpdatedB) VALUES (2,2);
INSERT INTO GuestEvent (EventUcId,UpdatedB) VALUES (3,3);
INSERT INTO GuestEvent (EventUcId,UpdatedB) VALUES (4,4);
INSERT INTO GuestEvent (EventUcId,UpdatedB) VALUES (5,5);

INSERT INTO Guest (Name,LastName,CreatedBy,UpdatedB) VALUES ('Keyla','Martinez Gomez',1,1);
INSERT INTO Guest (Name,LastName,CreatedBy,UpdatedB) VALUES ('Mariana','San Fernandez',2,2);
INSERT INTO Guest (Name,LastName,CreatedBy,UpdatedB) VALUES ('Erick','Gomez Gamez',3,3);
INSERT INTO Guest (Name,LastName,CreatedBy,UpdatedB) VALUES ('Rosario','Martinez Gomez',4,4);
INSERT INTO Guest (Name,LastName,CreatedBy,UpdatedB) VALUES ('Alan','Perez Martinez',5,5);