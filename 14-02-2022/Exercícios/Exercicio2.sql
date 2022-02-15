create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id_cat bigint auto_increment not null,
tamanho enum ('P','M','G'),
massa varchar (30),
borda_Recheada enum ('Sim','Não'),
primary key (id_cat));

insert into tb_categoria (tamanho, massa, borda_Recheada) values ('P', "Fino", 'Sim');
insert into tb_categoria (tamanho, massa, borda_Recheada) values ('M', "Crocante", 'Não');
insert into tb_categoria (tamanho, massa, borda_Recheada) values ('G', "Sem Glúten", 'Sim');
insert into tb_categoria (tamanho, massa, borda_Recheada) values ('P', "Farinha Integal", 'Sim');
insert into tb_categoria (tamanho, massa, borda_Recheada) values ('G', "Fofa",'Não');

select * from tb_categoria;

create table tb_pizza(
id_pizza bigint auto_increment,
sabor_Pizza varchar(20) not null,
sabor_Borda enum ('Catupiry','Cheddar'),
azeite enum ('Sim','Não'),
azeitona enum ('Sim','Não'),
preco decimal(4,2), 
fk_cat bigint not null,
primary key (id_pizza),
foreign key (fk_cat) references tb_categoria(id_cat)
);

insert into tb_pizza (sabor_Pizza, sabor_Borda, azeite, azeitona, preco, fk_cat)
values ("Portuguesa",'Catupiry','Sim','Sim', 39.90, 1);
insert into tb_pizza (sabor_Pizza, azeite, azeitona, preco, fk_cat)
values ("Quatro Queijos",'Sim','Sim', 27.30, 2);
insert into tb_pizza (sabor_Pizza, sabor_Borda, azeite, azeitona, preco, fk_cat)
values ("Calabresa",'Catupiry','Não','Sim', 25.90, 3);
insert into tb_pizza (sabor_Pizza, sabor_Borda, azeite, preco, fk_cat)
values ("Franco com Catupiry",'Catupiry','Sim', 49.99, 4);
insert into tb_pizza (sabor_Pizza, azeite, azeitona, preco, fk_cat)
values ("Marguerita",'Sim','Sim', 32.20, 5);
insert into tb_pizza (sabor_Pizza, azeite, azeitona, preco, fk_cat)
values ("Morango com Nutella",'Não','Não', 69.99, 2);
insert into tb_pizza (sabor_Pizza, sabor_Borda, azeite, azeitona, preco, fk_cat)
values ("Napolitana",'Catupiry','Sim','Não', 59.99, 1);
insert into tb_pizza (sabor_Pizza, azeite, azeitona, preco, fk_cat)
values ("Romeu e Julieta",'sim','Sim', 59.99, 5);
select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor_Pizza like "c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.fk_cat = tb_categoria.id_cat;

select * from tb_pizza inner join tb_categoria on tb_pizza.fk_cat = tb_categoria.id_cat where tb_pizza.azeite ='Não';

