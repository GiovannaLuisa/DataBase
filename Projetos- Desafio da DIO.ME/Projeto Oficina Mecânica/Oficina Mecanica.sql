create database Oficina_mecânica;
use Oficina_mecânica;
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
    constraint chk_salary_employee_ check (Salary> 1900.0)
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
alter table Clients add column idVeículoClient int;

create table Veículo (
	idVeículo int auto_increment primary key,
	NºPlaca char (7) not null,
	Modelo varchar(45),
	constraint fk_Veículo foreign key (idVeículo) references Clients(idClient)
);

create table Equipe_Mecânicos (
	idEquipeMecânica int auto_increment primary key,
	constraint fk_VEquipe_mecânicos foreign key (idEquipeMecânica) references Veículo(idVeículo),
    constraint fk_Equipe_Mecânicos foreign key (idEquipeMecânica) references Mecânicos(idMecânico)
);


create table Serviços (
idService int,
idTabela_referencia_MãoDeObra int,
Tipos_Serviços enum('Revisão periodica','concerto de veículo')not null,
Descrição varchar(45),
primary key(idService, idTabela_referencia_MãoDeObra)
);
alter table Serviços add column Peças_ int;
-- desc serviços;


create table OrderService(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum ('Confirmado','Em processamento','finalizado') default 'Em processamento',
	NúmeroPedido varchar(100),
    Descrição varchar(245),
	DataEmissão DATE,
	DataConclusão DATE,
    paymentCash bool default false,
    constraint fk_OrderClient foreign key (idOrderClient) references Clients(idClient),
	constraint fk_Order foreign key (idOrder) references Equipe_mecânicos(idEquipeMecânica)	
);



create table payments(
idClient int,
idPayment int,
type_payments enum('Cartão de Debito','Cartão Crédito','PIX'),
primary key(idClient, idPayment)
);

show tables