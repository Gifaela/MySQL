create database db_estudantes;

use db_estudantes;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
ra decimal,
idade int,
serie varchar(255),
nota decimal(4,2),
primary key(id));

select * from tb_estudantes;

insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Carolina",2353,15,"1°Médio",8.75);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Gustavo",1037,12,"7°Fundamental",9.10);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Carlos",3057,17,"3°Médio",5.00);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Isabella",8353,10,"5°Fundamental",6.30);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Ana",6407,16,"3°Médio",10);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Bruno",6925,8,"3°Fundamental",7.50);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Lucas",9324,16,"2°Médio",4.20);
insert into tb_estudantes(nome,ra,idade,serie,nota) values ("Jéssica",9264,9,"8°Fundamental",8);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set idade = 17 where id = 5;