create database db_funcionarios;

use db_funcionarios;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cpf int,
registro int,
cargo varchar(255),
salario decimal,
primary key (id));

alter table tb_funcionarios modify salario decimal (8,2);
alter table tb_funcionarios modify cpf varchar(255);


select * from tb_funcionarios;

insert into tb_funcionarios (nome,cpf,registro,cargo,salario) values ("Juliana","12345678910",123,"Administração",1800.37);
insert into tb_funcionarios (nome,cpf,registro,cargo,salario) values ("Rodrigo","18264307129",593,"Marketing",2500.62);
insert into tb_funcionarios (nome,cpf,registro,cargo,salario) values ("Camila","73925402519",346,"Serviços gerais",1500.18);
insert into tb_funcionarios (nome,cpf,registro,cargo,salario) values ("Gabriela","103549168012",408,"Secretária",2030.70);
insert into tb_funcionarios (nome,cpf,registro,cargo,salario) values ("Giulia","70824960793",415,"Deve Junior",3600.20);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set cargo = "Gerente de Marketing" where id = 2;  