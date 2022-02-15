create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id_cat bigint auto_increment not null,
nivel varchar(255) not null,
modelo enum ('Presencial', 'EAD', 'Híbrido') not null,
primary key (id_cat));

insert into tb_categoria (nivel, modelo) values ("Extra curricular", 'EAD');
insert into tb_categoria (nivel, modelo) values ("Técnlogo", 'Presencial');
insert into tb_categoria (nivel, modelo) values ("Graduação", 'Presencial');
insert into tb_categoria (nivel, modelo) values ("Graduação", 'EAD');
insert into tb_categoria (nivel, modelo) values ("Pós-Graduação", 'Híbrido');

select * from tb_categoria;

create table tb_curso(
id_cur bigint auto_increment not null,
nome varchar(255) not null,
duracao varchar (255),
instituicao varchar (255),
campus varchar (255),
preco decimal(8,2),
fk_cat bigint not null,
primary key (id_cur),
foreign key (fk_cat) references tb_categoria(id_cat));

insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Java", "80 horas", "Alura", null, 430.00, 1);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("POO", "30 hosas", "Udemy", null, 37.16, 1);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Administração", "4 anos", "FMU", "Liberdade", 1217.18, 3);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Gestão de TI", "2 anos", "USP Campi", "Bauru", null, 5);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Programador Front-End", "2 anos" , "Senac", "Santana", 745.98, 2);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Infemagem", "2 anos", "Etec", "Mandaqui", null, 2);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Ciências da Computação", "4 anos", "UNIP", "Vila Guilherme", 570.29, 4);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Medicina", "6 anos", "UNICID", "Pinheiros", 10493.12, 3);
insert into tb_curso (nome, duracao, instituicao, campus, preco, fk_cat) values ("Gestão de Produtos", "2 anos", "PucSP", "Santana", 2300.23, 5);

select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome like "J%";

select * from tb_curso inner join tb_categoria on tb_curso.fk_cat = tb_categoria.id_cat;

select * from tb_curso inner join tb_categoria on tb_curso.fk_cat = tb_categoria.id_cat 
where tb_categoria.nivel = "Graduação";
