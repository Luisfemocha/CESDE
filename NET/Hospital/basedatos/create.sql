CREATE TABLE paciente(
    idp int PRIMARY KEY,
    nomp varchar(30) not null,
    edadp int not null,
    telp varchar(10) not null);
    
CREATE TABLE empleado(
    ide int PRIMARY KEY,
    nome varchar(30) not null,
    edade int not null,
    tele varchar(10) not null,
    cargo varchar(20) not null);
    
CREATE TABLE enfermedad(
    idenf int PRIMARY KEY,
    nomenf varchar(30) not null,
    sintenf varchar(200) not null,
    cuidenf varchar(300),
    especs varchar(300));
    
CREATE TABLE cita(
    idc int PRIMARY KEY,
    idp1 int not null,
    ide1 int not null,
    fechac datetime not null,
    diagnostico int,
    CONSTRAINT fk1 FOREIGN KEY (idp1) REFERENCES paciente(idp),
    CONSTRAINT fk2 FOREIGN KEY (ide1) REFERENCES empleado(ide),
    CONSTRAINT fk3 FOREIGN KEY (diagnostico) REFERENCES enfermedad(idenf)
);
    
CREATE TABLE visitante(
    idv int PRIMARY KEY,
    nomv varchar(30) not null,
    edadv int not null,
    telefono varchar(10)
);

CREATE TABLE visita(
    idvis int PRIMARY KEY,
    idv1 int not null,
    idp2 int not null,
    fechav datetime not null,
    CONSTRAINT fk4 FOREIGN KEY (idv1) REFERENCES visitante(idv),
    CONSTRAINT fk5 FOREIGN KEY (idp2) REFERENCES paciente(idp)
);

CREATE TABLE historial(
    idph int PRIMARY KEY,
	idp3 int not null,
    idenf1 int not null,
    fechad date not null,
    notas varchar(300),
    CONSTRAINT fk6 FOREIGN KEY (idp3) REFERENCES paciente(idp),
    CONSTRAINT fk7 FOREIGN KEY (idenf1) REFERENCES enfermedad(idenf)
);
