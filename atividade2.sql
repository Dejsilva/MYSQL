/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal,
 onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar
 com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar
 com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta
 atividade.*/

 
 create table tb_categoria(
 id bigint auto_increment,
 produto varchar(40) not null,
 entrega boolean not null,
 primary key (id)
 );
 
insert into tb_categoria(produto, entrega) values ("Pizza" , true);
insert into tb_categoria(produto, entrega) values ("Esfiha" , true);
insert into tb_categoria(produto, entrega) values ("Beirute" , true);
insert into tb_categoria(produto, entrega) values ("Lanches" , true);
insert into tb_categoria(produto, entrega) values ("Brotos" , true);


create table tb_pizza(
id bigint auto_increment,
sabor varchar (40),
ingredientes varchar(250),
valor decimal,
pedacos int,
tipo bigint,
primary key (id),
foreign key (tipo) references tb_categoria(id)
);

insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Mussarela", "mussarela, tomate e azeitonas", 8, 25,1);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Calabresa", "calabresa, cebola e azeitonas", 4, 18,5);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Napolitana", "mussarela, tomate,parmessão e azeitonas", 8, 33,1);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Portuguesa", "presunto, mussarela , ervilha, ovo e azeitonas", 8, 33,1);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Peito de Peru", "peito de peru,mussarela, catupiry, chedder,ovo,alface e tomate", 4, 26,3);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("X-burguer", "Pão,hamburguer, maionese e mussarela", 1, 5,4);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Calabresa", "calabresa,mussarela, catupiry, chedder,ovo,alface e tomate", 4, 23,3);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Frango1", "Frango, catupiry e azeitonas", 1, 3,2);
insert into tb_pizza(sabor, ingredientes, pedacos, valor, tipo) values ("Bauru ", "presunto,mussarela , tomate e azeitonas", 4, 20,5);

select*from tb_pizza where valor > 25;
select*from tb_pizza where valor  between 29 and 50;
select *from tb_pizza;
select*from tb_pizza where sabor like "%c%";
select * from tb_pizza where tipo = 1;

select tb_pizza.sabor, tb_pizza.valor, tb_categoria.produto
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.tipo order by valor;
