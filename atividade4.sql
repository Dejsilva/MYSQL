/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes ou
 db_cidade_das_frutas, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar
 com o serviço desse açougue.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com 
o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta
 atividade.*/
 
 create database db_cidade_das_frutas;
 
 use db_cidade_das_frutas;
 
create table tb_categoria(
 id bigint auto_increment,
tipo varchar(40) not null,
estado boolean not null,
 primary key (id)
 );
 
insert into tb_categoria(tipo, estado) values ("Citricas" , true);
insert into tb_categoria(tipo, estado) values ("Frescas" , true);
insert into tb_categoria(tipo, estado) values ("Doces" , true);
insert into tb_categoria(tipo, estado) values ("Tropicais" , true);
insert into tb_categoria(tipo, estado) values ("Afrodisíacas" , true);


create table tb_produto(
id bigint auto_increment,
nome varchar (40),
cor varchar(250),
valor decimal,
localidade varchar(255),
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria(id)
);

insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("pêssego", "salmão ", 3.00," região sul e sudeste",1);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("framboesa", " vermelho ou rosa", 8.00, "Europa e de parte da Ásia",1);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("Cidra", "Amarela", 10.00, "sudeste da Ásia e da Índia",1);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("Abacaxi", "Amarelado ", 6.00, "América do Sul",2);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("mamão", "alaranjada", 4.00," América tropica",2);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("maracujá", "Amarelo", 7.50, "América Tropical",2);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("maçã vermelha", "vermelha", 3.50, "Japão",3);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("Caju ", "avermelhada ", 2.50, " nativo do Brasil",4);
insert into tb_produto(nome, cor, valor, localidade, tipo_id) values ("Romã  ", "castanho brilhante", 16.50, "Nativa da Pérsia",5);

select*from tb_produto where valor > 5;
select*from tb_produto where valor  between 8 and 18;
select *from tb_produto;
select*from tb_produto where nome like "%c%";
select * from tb_produto where tipo_id = 1;

select tb_produto.nome, tb_produto.cor, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.tipo_id order by valor;
