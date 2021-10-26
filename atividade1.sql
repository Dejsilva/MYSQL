/*
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde,
 o sistema trabalhará com as informações dos personagens desse game. 
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga  exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço
 desse  game Online.
Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar
 com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
Faça um select  utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre  tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
servidor varchar(40) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_classe (servidor, ativo) values ("principal", true);
insert into tb_classe (servidor, ativo) values ("alternativo", true);
insert into tb_classe (servidor, ativo) values ("amador", true);
insert into tb_classe (servidor, ativo) values ("profissional", true);
insert into tb_classe (servidor, ativo) values ("pvp", true);

create table tb_personagem(
id bigint auto_increment,
nome varchar(40),
raca varchar(40),
sexo varchar(40),
arma varchar(40),
ataque int,
defesa int,
sala bigint,
primary key (id),
foreign key (sala) references tb_classe (id)
);

insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("Kratos" , "SemiDeus" , "Masculino" , "Leviatã",10000,5000,1);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("aloy" , "Humano" , "Feminino" ,"Arco",2300,1500,2);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("Ellie" , "Humano" , "Feminino", "Diversas",2000,1200,1);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("Atreus" , "SemiDeus" , "Masculino" ,"Arco",800,500, 3);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("Zeus" , "Deus" , "Masculino" ,"Raio", 12000,7000,1);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("Leon" , "Humano" , "Masculino" , "Pistola",800,400,4);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("ryu" , "Humano" , "Masculino" , "Punhos",4000,1500,5);
insert into tb_personagem(nome, raca, sexo, arma, ataque,defesa, sala) values ("Geralt" , "bruxo" , "Masculino" , "espada",5000,2000,1);

select*from tb_personagem where ataque > 2000;
select*from tb_personagem where defesa between 1000 and 2000;
select*from tb_personagem where nome like "K%" ;

select tb_personagem.id, tb_personagem.nome,tb_personagem.arma,tb_classe.servidor
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.sala order by id;

select*from tb_personagem  where arma = "Arco";
 