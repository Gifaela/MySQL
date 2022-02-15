create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id_cat bigint auto_increment,
categoria varchar (255),
preteleira varchar (255),
organico enum ('Sim','Não'),
primary key (id_cat)
);

insert into tb_categoria (categoria, preteleira, organico) values ("Frutas", 1, 'Sim');
insert into tb_categoria (categoria, preteleira, organico) values ("Frutas", 3, 'Não');
insert into tb_categoria (categoria, preteleira, organico) values ("Verdura", 2, 'Sim');
insert into tb_categoria (categoria, preteleira, organico) values ("Verdura", 6, 'Não');
insert into tb_categoria (categoria, preteleira, organico) values ("Legumes", 5, 'Sim');
insert into tb_categoria (categoria, preteleira, organico) values ("Legumes", 4, 'Não');

select*from tb_categoria;

create table tb_produto(
id_produto bigint auto_increment,
alimento varchar(255) not null,
estoque int, 
estado enum('Fresco', 'Congelado', 'Xepa'),
valor dec (10,2) not null,
fk_cat bigint,
primary key (id_produto),
foreign key (fk_cat) references tb_categoria(id_cat));

select * from tb_produto;

insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Melancia", 52, 'Fresco', 23.50, 2); -- Fru
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Alface", 10, 'Fresco', 1.30, 3); -- ver
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Banana", 120, 'Xepa', 0.99, 1); -- Fru
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Ervilha", 5, 'Congelado', 4.70 ,6); -- leg
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Brócolis", 50, 'Congelado', 5.40, 4); -- ver
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Cenoura", 60, 'Xepa', 1.40, 5); -- leg
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Coco", 35, 'Fresco', 5.90, 1); -- Fru
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Couve Manteiga", 13, 'Congelado', 2.15, 3); -- ver
insert into tb_produto (alimento,estoque,estado,valor,fk_cat) 
values ("Mandioquinha", 20, 'Xepa', 3.30, 6);

select * from tb_produto where valor > 5;

select * from tb_produto where valor between 0.30 and 6;

select * from tb_produto where alimento like "c%";

select * from tb_produto inner join tb_categoria on tb_produto.fk_cat = tb_categoria.id_cat;

select * from tb_produto inner join tb_categoria on tb_produto.fk_cat = tb_categoria.id_cat
where tb_categoria.id_cat = 3; -- Verdura	2	organico