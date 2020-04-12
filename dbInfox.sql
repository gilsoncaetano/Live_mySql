-- Comentários
-- a linha abaixo cria um bancode dados.alter
create database dbinfox;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha a baixo insere dados na tabela (CRUD)
-- create -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Gilson Caetano','2020-2020','gilsoncaetano','123456');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read -> select
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador','2020-2020','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates','2020-2020','billgates','123456');
select*from tbusuarios;
-- a linha abaixo modifica dados na tabela (CRUD)
-- update -> update
update tbusuarios set fone='3030-3030' where iduser=2;
-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;
select * from tbusuarios;
create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50),
cepcli varchar(15)
);
describe tbclientes;
insert into tbclientes(nomecli,endcli,fonecli,emailcli,cepcli)
values('Linus Torvalds','Rua Tux, 2015','6060-6060','linus@linus.com','07175-400');

select * from tbclientes;



