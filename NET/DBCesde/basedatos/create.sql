create database BDCesde;
use BDCesde;

CREATE TABLE area(
	IDAr int primary key,
	nomAr varchar(50) not null
);
CREATE TABLE administrativo(
	IDAd int primary key,
	nomAD varchar(50) not null,
	telefonoA varchar(10) not null,
	areaA int not null,
	cargoA varchar(50),
	CONSTRAINT fk1 foreign key (areaA) REFERENCES area(IDAr)
);
CREATE TABLE programa(
	IDProg int primary key,
	nomProg varchar(50) not null,
	areaP int,
	CONSTRAINT fk2 FOREIGN KEY (areaP) REFERENCES area(IDAr)
);
CREATE TABLE profesor(
	IDProf int primary key,
	nomProf varchar(50) not null,
	telefonoP varchar(10) not null,
	programaP int not null,
	cargoP varchar(50),
	CONSTRAINT fk3 FOREIGN KEY (programaP) REFERENCES programa(IDProg)
);
CREATE TABLE estudiante(
	IDE int primary key,
	nomE varchar(50) not null,
	telefonoE varchar(10) not null,
	programaE int not null,
	CONSTRAINT fk4 FOREIGN KEY (programaE) REFERENCES programa(IDProg)
);