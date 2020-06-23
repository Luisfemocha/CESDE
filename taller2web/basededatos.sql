CREATE DATABASE bd_acdivoca;
use bd_acdivoca;

CREATE TABLE usuarios(
    id serial PRIMARY KEY,
    usn varchar(50) UNIQUE not null,
    mail varchar(100) UNIQUE NOT null,
    psw varchar(50) not null
);