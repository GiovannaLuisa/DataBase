create database Oficina_mecânica;
CREATE TABLE Mecânicos(
idMecânico int auto_increment primary key,
	Fname varchar(15) not null,
    Minit char,
    Lname varchar(15) not null,
	Bdate DATE,
	Address varchar(30),
    RG char(7),
    CPF char(11),
	Sex char,
	Salary decimal(10,2),
    Especialidade varchar(45) not null,
    constraint chk_salary_employee check (Salary> 1900.0)
);

create table Clients (
	idClient int auto_increment primary key,
	Fname varchar(10) not null,
	Minit char,
	Lname varchar(30) not null,
	Bdate Date,
	Adress varchar(85) not null,
	CPF char(11) not null
);

create table Veículo (
	idVeículo int auto_increment primary key,
	NºPlaca char (7) not null,
	Modelo varchar(45),
	constraint fk_veículo foreign key (idVeículo) references Clients(idclient)
);

create table Equipe_Mecânicos (
	idEquipeMecânica int auto_increment primary key,
	constraint fk_VEquipe_mecânicos foreign key (idEquipeMecânica) references Veículo(idVeículo),
    constraint fk_Equipe_Mecânicos foreign key (idEquipeMecânica) references Mecânicos(idMecânico)
);



