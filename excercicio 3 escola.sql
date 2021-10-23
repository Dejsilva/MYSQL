use db_escola;

create table tb_alunos(id bigint(8) auto_increment,
nome varchar(40),
idade int,
serie int,
aprovado boolean,
nota decimal,
primary key(id)
);

insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Deivide",16,2,8,1);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Angelica",12,5 ,7,1);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Daphiny",11,4, 8,0);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Kamilly",7,2,5,0);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Stephany",9,3 ,6,0);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Yuri",10,4 ,8,1);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Willian",8,2,6,0);
insert into tb_alunos(nome,idade,serie,nota,aprovado) values ("Nicolas",7,1 ,9,1);

select*from tb_alunos where nota >= 7;
select*from tb_alunos where nota <= 7;

update tb_alunos set aprovado = 1 where id = 7;

select*from tb_alunos;

