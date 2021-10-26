/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem,
 onde o sistema trabalhará com as informações dos produtos desta empresa
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com 
o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com
 o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e 
compartilhe esta atividade.
*/
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
sintomas varchar (40) not null,
disponivel boolean not null,
primary key (id)
);

insert into tb_categoria(sintomas,disponivel) values ("Dor de cabeça",true);
insert into tb_categoria(sintomas,disponivel) values ("Dor de estomago",true);
insert into tb_categoria(sintomas,disponivel) values ("Dores no musculares",true);
insert into tb_categoria(sintomas,disponivel) values ("Cólicas",true);
insert into tb_categoria(sintomas,disponivel) values ("Azia",true);

create table tb_produto(
id bigint auto_increment,
remedio varchar (40) not null,
tipo varchar (40) not null,
comprimidos int,
valor decimal,
sintomas_id bigint,
primary key (id),
foreign key (sintomas_id) references tb_categoria(id)
);

insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Dipirona", "Genericos", 12 , 5.00, 1);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Paracetamol", "Genericos", 14 , 4.00, 1);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Buscopan", "Original", 6 , 8.00, 2);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Dorial", "Original", 6 , 13.00, 3);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Eno", "Genericos", 3 , 3.00, 5);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Advil", "Genericos", 6 , 14.00, 4);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Biofenac", "Original", 16 , 26.00, 3);
insert into tb_produto(remedio, tipo, comprimidos, valor, sintomas_id) values ("Estomazil", "Genericos", 6, 15.00, 5);


select * from tb_produto;
select *from tb_produto where valor > 12;
select*from tb_produto where valor  between 12 and 28;
select*from tb_produto where remedio like "%b%";

select tb_produto.remedio, tb_produto.tipo, tb_produto.valor, tb_categoria.sintomas 
from tb_produto inner join tb_categoria
on tb_categoria.id  = tb_produto.sintomas_id











