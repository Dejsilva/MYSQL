create database db_mercado;
use db_mercado;

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(20),
marca varchar(20),
quantidade int,
valor decimal (8.2),

primary key (id)
); 

insert into tb_produto(nome, marca, quantidade, valor) values ("Maionese", "Maria", 12, 5.65);
insert into tb_produto(nome, marca, quantidade, valor) values ("Arroz", "Camil", 25, 18);
insert into tb_produto(nome, marca, quantidade, valor) values ("Feijão", "Camil", 0, 6.59);
insert into tb_produto(nome, marca, quantidade, valor) values ("Macarrão", "Adria", 3, 3.49);
insert into tb_produto(nome, marca, quantidade, valor) values ("Molho de tomate", "fugini", 36, 1.20);
insert into tb_produto(nome, marca, quantidade, valor) values ("Miojo", "Panco", 56, 1.50);
insert into tb_produto(nome, marca, quantidade, valor) values ("Leite ", "Qualita", 64, 4.65);
insert into tb_produto(nome, marca, quantidade, valor) values ("Leite condensado", "Moça", 0, 6);

select*from tb_produto;
select*from tb_produto where valor <12;
select*from tb_produto where valor >12;

update tb_produto set quantidade = 50  where id = 3;
