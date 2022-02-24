create database db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255),
arma varchar(255),
primary key(id)
);
insert into tb_classes(nome, habilidade, arma)
values("Feiticeiro", "Bola de fogo", "Cajado");
insert into tb_classes(nome, habilidade, arma)
values("Arqueiro", "Chuva de flechas", "Arco e flecha");
insert into tb_classes(nome, habilidade, arma)
values("Druida", " Gelo e cura", "Livro");
insert into tb_classes(nome, habilidade, arma)
values("Guerreiro", "Excalibur", "Espada");
insert into tb_classes(nome, habilidade, arma)
values("Curandeiro", "Resurreição", "Gaze");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null, 
nivel int,
ataque int, 

classe_id bigint, 
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens ( nome, nível, ataque, defesa, classe_id)
values("Minseok", 100, 300,2000, 1);
insert into tb_personagens ( nome, nível, ataque, defesa, classe_id)
values("Thor", 250, 100,1500, 5);
insert into tb_personagens ( nome, nível, ataque, defesa, classe_id)
values("Groot", 400, 520,1800, 3);
insert into tb_personagens ( nome, nível, ataque, defesa, classe_id)
values("CAP", 550, 650,1300, 2);
insert into tb_personagens ( nome, nível, ataque, defesa, classe_id)
values("Bazinga", 300, 900,2500, 1);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000; 
select * from tb_personagens where defesa > 1000 and defesa < 2000;
select * from tb_personagens where defesa between 1000 and 2000; 
select * from tb_personagens where nome like "%c%"; 
select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 2;