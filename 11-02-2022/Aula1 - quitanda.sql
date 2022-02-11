-- Criara o banco de dados db_quitanda
create database db_quitanda;

use db_quitanda; -- 

-- ciando tabela
create table tb_produtos(-- preciso definir dentro do parenteses os atributos
id bigint auto_increment, -- identificação(chave primária)/ auto_increment vai definir o ID que será cadastrado
nome varchar(255) not null, -- obriga a digitar o nome do produto
quantidade int,
preco decimal,
primary key (id) -- definindo a chave primária 
);

insert into tb_produtos (nome, quantidade,preco) 
values ("Maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade,preco) 
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade,preco) 
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade,preco) 
values ("Melancia", 3, 10.00);
insert into tb_produtos (nome, quantidade,preco) 
values ("Cebola", 100, 1.50);

select * from tb_produtos; -- ver toda a tabela
select nome from tb_produtos; -- ver somente a coluna de nome
select nome, preco from tb_produtos; -- ver coluna de nome e preço
select * from tb_produtos where preco > 1.99; -- ver preço mair que 1.99
select * from tb_produtos where preco > 1.99 or nome = "Banana"; -- ver preço maoir que 1.99 ou com o nome "Banana"

update tb_produtos set preco = 1.99 where id = 1; -- alterar o preco para 1.99

delete from tb_produtos where id = 7; -- apagar dados

set SQL_SAFE_UPDATES  = 1;  -- desabilita o where // 0 desliga - 1 liga 

update tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preco decimal(8,2); -- 000000.00// definir casas decimais - altera estrutura

alter table tb_produtos add descricao varchar(255); -- adicionando atributo (coluna)

alter table tb_produtos drop descricao; -- excluir coluna



