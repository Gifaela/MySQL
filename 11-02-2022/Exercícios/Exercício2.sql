create database db_produtos;

use db_produtos;

create table db_produtos(
id bigint auto_increment,
produto varchar(255),
marca varchar(255),
cor varchar(255),
quantidade int,
preco decimal(8,2),
primary key (id));

select * from db_produtos;

insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Calculadora Científica","HP","Preto",7, 150);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Notebook","DELL","Preto",5, 2700.15);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Celular","Samsung","Azul",3, 1857.13);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Impressora","Epson","Braca",6, 432.20);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Câmera","Canon","Preto",2, 1542.15);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Pendrive","SanDisk","Vermelho",9, 35.50);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Mause","Rgb","Preto",3, 56.99);
insert into db_produtos (produto,marca,cor,quantidade,preco) values ("Teclado","HyperX","Preto",1, 534);

select * from db_produtos where preco > 500;
select * from db_produtos where preco < 500;

update db_produtos set quantidade = 4 where id = 4;