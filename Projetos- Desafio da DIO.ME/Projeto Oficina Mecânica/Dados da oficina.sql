use Oficina_mecânica;
show tables;

desc clients;
-- IdClient( Fname, Minit, Lname, Bdate, Adress, CPF)
insert into clients( Fname, Minit, Lname, Bdate, Adress, CPF)
					values('Erik','M','Santos','1996-03-12', 'Santo Antonio 585 Flores','00155554432'),
                    ('Harry','A','Elinge','1986-11-18', 'Santo Antonio 8 Flores.C','99556554432'),
                    ('Fernanda','R','Lary','1985-07-06','Santo Antonio 10 Flores k','97543214432'),
                    ('Rodrigo','A','Silva','1979-11-10', 'Santo Antonio 9 Flores L','97532554432');
                    

		
select * from clients;

insert into Mecânicos (Fname, Minit, Lname, Bdate, Address, RG, CPF, Sex, Salary, Especialidade)
						values('Nathalia','O','Leonard','1986-09-17', 'Antonio 29','algo678','55555555555','F','1950.00','Freios'),
                        ('Marco','M','Santos','1996-03-12', 'SAntonio 50','algo598','00987654321','M','1901.50','Direção'),
                        ('Oliver','S','Leonar','1983-02-02', 'SAntonio 49','algo999','98765432100','M','2200.00','Hidráulica'),
                        ('Enandes','M','Silveia','1996-03-12', 'SAntonio 79','algo923','12345678990','M','2500.00','Motor');

insert into Veículo (NºPlaca, Modelo)
						values('BBAAAAA','Chevrolet'),
							('123AAAA','Fiat'),
                            ('456AAAA','BMW'),
                            ('786AAAA','Nissan Sentra');

insert into OrderService(idOrderClient, orderStatus, NúmeroPedido, Descrição, DataEmissão, DataConclusão,paymentCash)
					values('1','finalizado','01','Motor com defeito', '2022-09-15','2022-09-18');
						  ('2','2','Em processamento','02','Hidraulica', '2022-09-22','2022-09-27'),
                          ('3','3','Confirmado','03','Freios','2022-09-24','2022-10-08');

desc OrderService;
select * from clients order by idClient,Fname asc;
select * from Mecânicos order by Fname asc;
select * from Veículo order by idClient asc;
