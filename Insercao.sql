-- Inserção de dados e queries

use ecommerce;

show tables;

insert into Clients (Fname, Minit, Lname, CPF, Address)
		values('Maria', 'M', 'Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das Flores'),
			  ('Matheus', 'O', 'Pimentel', 987654321, 'rua almeida 289, Centro - Cidade das Flores'),
              ('Ricardo', 'F', 'Silva', 45678391, 'avenida almeida vinha 1009, Centro - Cidade das Flores'),
              ('Julia', 'S', 'França', 78921356, 'rua laranjeiras 69, Centro - Cidade das Flores'),
              ('Roberta', 'G', 'Assis', 32659813, 'rua almeida das flores 325, Centro - Cidade das Flores'),
              ('Isabela', 'M', 'Cruz', 98453245, 'rua almeida das flores 879, Centro - Cidade das Flores'),
              ('Diego', 'M', 'Souza', 524586524, 'rua do meio 235, Jardim Miami - Cidade das Flores');

insert into product(Pname, classification_kids, category, avaliação, size) values
			('fone de ouvido', false, 'Eletrônico', '4', null),
            ('Barbie Elsa', true, 'Brinquedos', '3', null),
            ('Body Carters', true, 'Vestimenta', '5', null),
            ('Microfone Vedo - Youtuber', false, 'Eletrônico', '4', null),
            ('Sofa-retratil', false, 'móveis', '3', '3x57x80'),
            ('Farinha de arroz', false, 'alimentos', '2', null),
            ('Fire stick Amazon', false, 'Eletrônico', '3', null);
            
select * from clients;
select * from product;

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
			(1, default, 'compra via aplicativo', null, 1),
            (2, default, 'compra via aplicativo', 50, 0),
            (3, 'Confirmado', null, null, 1),
            (4, default, 'compra via web site', 150, 0);

select * from orders;

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
			(1,5,2, null),
            (2,5,1, null),
            (1,6,1, null);
            
insert into productStorage (storageLocation, quantity) values
			('Rio de Janeiro', 1000),
            ('Rio de Janeito', 500),
            ('São Paulo', 10),
            ('São Paulo', 100),
            ('São Paulo', 10),
            ('Brasilia', 60);
            
insert into storageLocation (idLproduct, idLstorage, location) values
			(1,2,'RJ'),
            (2,6,'GO');
            
insert into supplier (SocialName, CNPJ, contact) values
			('Almeida e Filhos', 123265457898, '219658899'),
            ('Eletrônicos Silva', 654789854452, '654578981'),
            ('Eletrônicos Vilma', 654584551518, '789854545');           
select * from supplier;

insert into productSuplier (idPsSupplier, idPsProduct, quantity) values
			(1,1,500),
            (1,2,400),
            (2,4,633),
            (3,3,5),
            (2,5,10);

insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
			('Tech Eletronics', null, 1235478555789, null, 'Rio de Janeiro', 548574216),
            ('Botique Dunga', null, null, 568574125, 'Rio de Janeiro', 545852125),
            ('Kids World', null, 21355789657452, null, 'São Paulo', 1166588688);

insert into productSeller (idPseller, idPproduct, prodQuantity) values
			(1,6,80),
            (2,7,10);

select count(*) from clients;
select * from clients c, orders o where c.idClient = idOrderClient;
select concat(Fname,' ',Lname) as Client, idOrder as Request, orderStatus as Status from clients c, orders o where c.idClient = idOrderClient;
select count(*) from clients c, orders o
				where c.idClient = idOrderClient;

select * from supplier where SocialName = 'Almeida e Filhos';
select * from orders order by sendValue;
select concat(SocialName,' na cidade de ',location) as Client_and_city from seller;            