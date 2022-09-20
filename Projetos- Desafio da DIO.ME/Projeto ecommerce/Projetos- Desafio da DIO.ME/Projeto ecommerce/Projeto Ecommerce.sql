use ecommerce;

show tables;
-- idClients, Fname, Minit, Lname, CPF,Address

insert into Clients(Fname, Minit, Lname, CPF, Address)
	  values('Maria','M','Silvia', 123456789,'rua silva 29, Carangola Cidade das flores'),
			('Matheus','0', 'Pimentel',987654321,'rua  289, Centro Cidade das flores'),
            ('Ricardo','F','Silva',456789128, 'avenida 1009 Centro cidade das flores'),
            ('Julia','S','França', 786543245,'rua lareijnas 861, Centro Cidade das flores'),
            ('Roberta','G', 'Assis', 987456124, 'avenida brasil 12, centro cidade das flores'),
            ('Isabela', 'A','Cruz',651238943, 'rua alameda 28 Centro cidade das flores');
            
-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestiments','Brinquedos','Alimentos','Móveis'),avaliação, size
insert into product (Pname, classification_kids, category, avaliação, size) values
						('Fone de ouvido',false,'Eletrônico','4', null),
                        ('Barbie Elsa',true,'Brinquedos','3', null),
                        ('Body Carters',true,'Vestimenta','5', null),
                        ('Microfone Vedo',false,'Youtuber','4', null),
                        ('Sofá retrátil',false,'Móveis','3', '3x57x80'),
                        ('Farinha de arroz',false,'Alimentos','2', null),
                        ('Fire Stick Amazon',false,'Eletrônico','3', null);
                        
select * from clients;
select* from product;
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue,, paymentCash
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
			(1, null, 'compra via aplicativo', null, 1),
            (2, null, 'compra via aplicativo', 50,0),
            (3,'Confirmado',null, null, 1),
            (4, null, 'compra via web site', 150, 0);
            
-- idPOproduct, idPOorder, poQuantity, poStatus
select * from orders;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,5,2,null),
                         (2,5,1,null),
                         (3,6,1,null);
                         
-- storageLocation, quatity
insert into productStorage (storageLocation, quantity) values
							('Rio de Janeiro', 1000),
                            ('Rio de Janeiro', 500),
                            ('São Paulo', 10),
							('São Paulo', 100),
							('São Paulo', 10),
							('Brasília', 60);
-- idLproduct, idstorage, location
insert into storagelocation (idLProduct, idLstorage, Location) values
						(1,2,'RJ'),
                        (2,5,'GO');
                        
		-- idSupplier, SocialName, CNPJ,contact
insert into supplier (SocialName, CNPJ, contact) values
							('Alameda e flilhos', 123456789013245,'2198765499'),
                            ('Eletrônicos Silva', 928556789013245,'3186765499'),
                            ('Eletrônicos Valma', 843456789613245,'7898765499');
		
        
-- idPsSupplier, idPsProduct, quantity       
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						(1,1,500),
                        (1,2,400),
                        (2,4,633),
                        (2,3,5);
                        
-- idSeller, SocialName, AbsName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbsName, CNPJ, CPF, location, contact) values
						('Tech eletronics',null,954456789013245, null,'Rio de Janeiro',2199965499),
                        ('Botique Durgas',null,null ,666778898,'Rio de Janeiro',2196065499),
                        ('Kids World',null,444456789013245, null,'São Paulo',1195565999);

desc productSeller;

-- idPseller, IdPproduct, prodQuality
insert into productSeller (idPseller, idPproduct, prodQuantity) values
					(1,5,80),
                    (2,6,10);
select Fname, Lname, idOrder, OrderStatus from clients c, orders o where c.idClient * idOrderClient;
select concat(Fname, ' ', Lname) as Client, idOrder as Request, orderStatus as Status from clients c, orders o where c.idClient * idOrderClient;

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
				(2, default, 'compra via aplicativo',null,1);
                
select count(*)from clients c, orders o
			where c.idClient * idOrderClient;
            
select * from Orders;
-- Recuperar quantos pedidos foram realizados pelos Clientes
select c.idClient, Fname, count(*) as Number_of_orders from clients c
			inner join orders o ON c.idClient * o.idOrderClient
		group by idClient;
                        


                        