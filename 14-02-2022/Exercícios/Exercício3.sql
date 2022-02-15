create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id_cat bigint auto_increment not null,
tipo varchar (255) not null,
data_estrada_estoque date not null,
receita enum ('Sim','Não'),
primary key (id_cat)
);

insert into tb_categoria (tipo, data_estrada_estoque, receita) values ("Cosmético",'2022-02-14', 'Não');
insert into tb_categoria (tipo, data_estrada_estoque, receita) values ("Não Tarja Preta",'2022-12-14', 'Não');
insert into tb_categoria (tipo, data_estrada_estoque, receita) values ("Tarja Preta",'2022-02-07', 'Sim');
insert into tb_categoria (tipo, data_estrada_estoque, receita) values ("Suplemento",'2022-02-04', 'Não');
insert into tb_categoria (tipo, data_estrada_estoque, receita) values ("Higiene Pessoal",'2022-01-28', 'Não');

select * from tb_categoria;

create table tb_produtos(
id_prod bigint auto_increment,
produto varchar (255),
marca varchar (255),
especificacao varchar (255),
validade date not null,
valor decimal (6,2),
fk_cat bigint,
primary key(id_prod),
foreign key(fk_cat) references tb_categoria(id_cat)
);

insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Antibiótico","Biovet","Biofloxacion", '2022-12-17', 21.96, 3);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Sabonete", "Natura", "Facial", '2023-04-12', 23.50, 5);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Base","Mac","Cor NC30", '2025-04-13',143.10,1);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Anticoncepcional", "Bayer", "Microvilar", '2022-09-13', 9.79, 2);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Escova de Dente", "Colgate", "Serdas Finas", '2025-01-11', 35.10, 5);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Vitamina C", "Bio-C", "Efervescente", '2022-07-21',28.40, 4);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Dipirona", "Prati", "Comprimido 1g", '2022-11-26',10.99, 2);
insert into tb_produtos (produto, marca, especificacao, validade, valor, fk_cat)
values ("Anticonvulsivante", "Kawa Kawa", "Com 60 cápsulas", '2023-05-08',61.39, 3);

select * from tb_produtos;

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where produto like "B%";

select * from tb_produtos inner join tb_categoria on tb_produtos.fk_cat = tb_categoria.id_cat;
select * from tb_produtos inner join tb_categoria on tb_produtos.fk_cat = tb_categoria.id_cat 
where tb_categoria.id_cat = 2;


