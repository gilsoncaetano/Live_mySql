show databases;
use agenda;
create table tbcontatos(
		id int primary key,
        Caetano varchar(50) not null,
        fone varchar (15) not null,
        email varchar (50)
);
show tables;
describe tbcontatos;
/********************** CRUD **********************/
-- create
insert into tbcontatos(id,caetano,fone,email)
values(1,'Bill Gates','1111-1111','bill@outlook.com');

-- read
select * from tbcontatos;
-- create
insert into tbcontatos(id,caetano,fone,email)
value(2,'Linus Torvalds','2222-2222','linus@gmail.com');

insert into tbcontatos(id,caetano,fone,email)
value(3,'Bruna Marquezine','3333-3333','bruninha@gmail.com');

insert into tbcontatos(id,caetano,fone)
value(4,'Bruce Dickinson','6666-6666');

insert into tbcontatos(id,caetano,fone,email)
value(5,'Tony Stark','5555-8888','ts@gmail.com');

-- read
select * from tbcontatos;

select * from tbcontatos where id = 2;
select * from tbcontatos where nome = 'Bill Gates';
select * from tbcontatos where nome like 'B%';
select * from tbcontatos;
select * from tbcontatos where nome like 'B%' ;
select * from tbcontatos order by nome asc;
select * from tbcontatos;

select * from tbcontatos where id = 2;
select * from tbcontatos where nome = 'Bill Gates';
select * from tbcontatos order by nome asc;

select nome,fone from tbcontatos;
select * from tbcontatos;
select * from tbcontatos where id = 2;
select * from tbcontatos where nome = 'Bill Gates';
select * from tbcontatos where nome like 'B%';
select * from tbcontatos order by nome asc;
select nome,fone from tbcontatos;
select nome as contato, fone as telefone from tbcontatos;
update tbcontatos set nome='Willian Gates' where id = 1;
update tbcontatos set email='ironmaidem@gmail.com' where id = 4;
update tbcontatos set fone='9999-1234', email='linus@tux.com' where id = 2;
select * from tbcontatos;
delete from tbcontatos where id = 5;
select * from tbcontatos;
select * from tbcontatos where id = 2;
select * from tbcontatos where nome = 'Bill Gates';
show databases;
-- read
select * from tbcontatos;
select * from tbcontatos;
select * from tbcontatos where id = 2;
select * from tbcontatos where caetano = 'Bill Gates';
select * from tbcontatos where caetano like 'B%';
select * from tbcontatos order by caetano asc;
select caetano,fone from tbcontatos;
select caetano as contato, fone as telefone from tbcontatos;
update tbcontatos set caetano='Willian Gates' where id = 1;
update tbcontatos set email='ironmaidem@gmail.com' where id = 4;
update tbcontatos set fone='9999-1234', email='linus@tux.com' where id = 2;
select * from tbcontatos;
delete from tbcontatos where id = 5;
select * from tbcontatos;
delete from tbcontatos where id = 5;
update tbcontatos set caetano='Willian Gates' where id = 1;
update tbcontatos set email='ironmaidem@gmail.com' where id = 4;
update tbcontatos set fone='9874-5612', email='linus@tux.com' where id = 2;
-- read
select * from tbcontatos;
update tbcontatos set fone='7946-3146' where id = 4;