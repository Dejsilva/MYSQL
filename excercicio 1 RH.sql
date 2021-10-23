create database db_Rh;

use db_RH;

create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(250),
idade int not null,
salario decimal(8,2) not null,
cargo varchar(250),
primary key (id));


insert into tb_funcionarios(nome, idade, salario , cargo) values ("João",25,1800.00,"Ajudante");
insert into tb_funcionarios(nome, idade, salario , cargo) values ("Maria",28,2500,"Administadora");
insert into tb_funcionarios(nome, idade, salario , cargo) values ("Marcos",32,3500,"Instalador");
insert into tb_funcionarios(nome, idade, salario , cargo) values ("Lucas",22,1200,"Estagiario");
insert into tb_funcionarios(nome, idade, salario , cargo) values ("Marta",45,7000,"Supervisora");

select*from tb_funcionarios where salario > 2000 ;
select*from tb_funcionarios where salario < 2000 ;
select * from tb_funcionarios ;

update tb_funcionarios set salario = 3500 where id =2;