create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id_cat bigint auto_increment not null,
    classificacao varchar(255),
    data_entrada_estoque date not null,
    entrega enum ('Sim', 'Não'),
    primary key (id_cat)
    );
    
insert into tb_categoria(classificacao, data_entrada_estoque, entrega) values 
("Material Hidráulico",'2021-01-01', 'Não'),
("Material Elétrico",'2021-01-01', 'Não'),
("Pisos e Revestimentos",'2021-01-01', 'Sim'),
("Argamassas",'2021-01-01', 'Sim'),
("Tijolos", '2021-01-01', 'Sim');

select * from tb_categoria;

create table tb_produto(
id_prod bigint auto_increment not null,
material varchar(255),
cor varchar(255),
estoque int,
fabricante varchar(255),
preco decimal (8,2),
fk_cat bigint,
primary key (id_prod),
foreign key(fk_cat) references tb_categoria(id_cat));


insert into tb_produto(material, cor, estoque, fabricante, preco, fk_cat)values
("Cano Esgoto", null, 120, "Fortlev",  85.90, 1),
("Torneira de Banheiro", "Preta fosca", 200, "Docol", 160.00, 1),
("Tomada", "Branca", 370, "Ilumi", 39.80, 2),
("Cimento", null, 5000, "Votoran", 32.66, 4),
("Tijolo Maciço", "Vermelho", 4000, "Spina Tijolos", 2.30, 5),
("Piso Madeira", null, 1207, "Artens", 15.10, 3),
("Piso Porcelanato", "Preto e Branco", 1469, "Artens", 14.26, 3),
("Areia", null, 3000, "Pedrasil", 3.89, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where material like "c%";

select * from tb_produto inner join tb_categoria on tb_produto.fk_cat = tb_categoria.id_cat;

select * from tb_produto inner join tb_categoria on tb_produto.fk_cat = tb_categoria.id_cat 
where tb_categoria.entrega = 'Sim';