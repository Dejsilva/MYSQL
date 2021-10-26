/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome
 db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
Siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar
 com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com
 o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta
 atividade.*/
 
 create database db_construindo_a_nossa_vida;
 
 use db_construindo_a_nossa_vida;
 
 create table tb_categoria(
 id bigint auto_increment,
tipo varchar(40) not null,
estado boolean not null,
 primary key (id)
 );
 
insert into tb_categoria(tipo, estado) values ("hidraulico" , true);
insert into tb_categoria(tipo, estado) values ("Pintura" , true);
insert into tb_categoria(tipo, estado) values ("Gesso" , true);
insert into tb_categoria(tipo, estado) values ("Vidro" , true);
insert into tb_categoria(tipo, estado) values ("Içamento" , true);


create table tb_produto(
id bigint auto_increment,
nome varchar (40),
trabalho varchar(250),
valor decimal,
localidade varchar(255),
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria(id)
);

insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("ViTrel", "sacada, espelhos e box ", 600," SP",4);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("Universovitreo", " espelho e box", 750, "Guarulhos",4);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("Gessomax", "acabamentos forros", 300, "Maua",3);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("Sógesso", "acabamentose molduras ", 450, "Diadema",3);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("içamax", "moveis, vidros", 650," Jundía",5);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("içaTudo", "Gerais", 250, "Guarulhos",5);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("Pintr", "Acabamento interior e exterior", 420, "Bauru",2);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("Encanamentog ", "desentupimento e instalação hidraulica ", 780, " Osasco",1);
insert into tb_produto(nome, trabalho, valor, localidade, tipo_id) values ("Encanatudo  ", "desentupimento", 500, "Cotia",1);

select*from tb_produto where valor > 400;
select*from tb_produto where valor  between 250 and 400;
select *from tb_produto;
select*from tb_produto where nome like "%c%";
select * from tb_produto where tipo_id =4;

select tb_produto.nome, tb_produto.trabalho, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.tipo_id order by valor;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
