/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida,
 onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar
 com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar
com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta
 atividade.*/
 
 create database db_cursoDaMinhaVida;
 
 use db_cursoDaMinhaVida;
 
 create table tb_categoria(
 id bigint auto_increment,
tipo varchar(40) not null,
disponivel boolean not null,
 primary key (id)
 );
 
insert into tb_categoria(tipo, disponivel) values ("TI" , true);
insert into tb_categoria(tipo, disponivel) values ("Mecanica" , true);
insert into tb_categoria(tipo, disponivel) values ("Estética" , true);
insert into tb_categoria(tipo, disponivel) values ("Turismo" , true);
insert into tb_categoria(tipo, disponivel) values ("Administração" , true);


create table tb_produto(
id bigint auto_increment,
nome varchar (40),
info varchar(250),
valor decimal,
localidade varchar(255),
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria(id)
);

insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("Speedcursos", "informatica basica e avançada, espelhos e box ", 600," SP",1);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("speedbyte", " manutenção de hadwares", 750, "Guarulhos",1);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("Esteticamais", "atendimento clinico", 300, "Maua",3);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("Tuor", "Consultoria em Turismo e Hotelaria", 450, "Diadema",4);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("Admin", "Coordenação de Equipes", 650," Jundía",5);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("Autome", "Mecânica Geral Aplicada", 250, "Guarulhos",2);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("GeralCursos", "cursos Gerais", 420, "Bauru",1);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("TCurso ", "INformatica e administração ", 780, " Osasco",1);
insert into tb_produto(nome, info, valor, localidade, tipo_id) values ("Estécurso  ", "Biossegurança", 500, "Cotia",3);

select*from tb_produto where valor > 400;
select*from tb_produto where valor  between 250 and 400;
select *from tb_produto;
select*from tb_produto where nome like "%i%";
select * from tb_produto where tipo_id = 5;

select tb_produto.nome, tb_produto.info, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.tipo_id order by valor;
