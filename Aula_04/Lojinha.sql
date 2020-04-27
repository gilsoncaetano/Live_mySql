/*
Atividade 02 de Banco de dados 
da Lojinha
*/

create database lojinha;
use lojinha;

/*
 criação de tabela de clientes da Lojinha
*/

create table tbclientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    cpf varchar(15) not null
);

describe tbclientes;

-- Inseri cliente na lojinha
insert into tbclientes(nome,fone,cpf)
values('Beatriz Pinto','97956-8582','080.654.321-65');

insert into tbclientes(nome,fone,cpf)
values('Carlos Seza','95325-2365','056.369.258-14');

insert into tbclientes(nome,fone,cpf)
values('Neymar Junior','96582-6497','654.987.321.65');

insert into tbclientes(nome,fone,cpf)
values('Monica Assis','93216-6548','052.456.123-12');

insert into tbclientes(nome,fone,cpf)
values('Francisco','96582-1245','654.236.321.56');

select * from tbclientes;
 
 /*
 criação de tabela de Produtos que sera vendido na loja 
 */
 create table tbprodutos(
	idpro int primary key auto_increment,
    produto varchar(50) not null,
    Valor decimal(10.2),
    quantidade int not null,
    fabricante varchar(50) not null
);

/* para Altera adicionando uma coluna o comando.
alter table tbprodutos add column fabricante varchar(50) not null;
e para deleta a coluna e
alter table tbprodutos drop column fabricante;
*/ 

describe tbprodutos;
 /* 
  Criando Produto para tabela de Produtos
 */
insert into tbprodutos(produto,valor,quantidade)
values('Monitor LG 24',669.99,20);
insert into tbprodutos(produto,valor,quantidade)
values('Mouse Gamer',120,30,'psx');
insert into tbprodutos(produto,valor,quantidade)
values('Teclado Gamer',145,15);
insert into tbprodutos(produto,valor,quantidade,fabricante)
values('Teclado',160,01,'psx');
insert into tbprodutos(produto,valor,quantidade,fabricante)
values('Gabinete Gamer',230,02,'PSX');

-- fazer alteração de produto
update tbprodutos set fabricante='Samsung' where idpro=1;
update tbprodutos set fabricante='Psx' where idpro=2;
update tbprodutos set fabricante='Azus' where idpro=3;

select * from tbprodutos;

/* Criando uma tabela de associação entre Cliente e Produto (N:N) */
create table tbpedidos(
	idpedido int primary key auto_increment,
    datamat timestamp default current_timestamp,
    idcli int not null,
    idpro int not null,
    foreign key(idcli) references tbclientes(idcli),
	foreign key(idpro) references tbprodutos(idpro)
  );
  
  describe tbpedidos;
  
  -- Abaixo sta gerando pedido para um cliete.
  insert into tbpedidos (idcli,idpro)
  values (1,2);
  insert into tbpedidos (idcli,idpro)
  values (2,1);
  insert into tbpedidos (idcli,idpro)
  values (3,2);
  insert into tbpedidos (idcli,idpro)
  values (4,1);
  insert into tbpedidos (idcli,idpro)
  values (5,2);
  
  select * from tbpedidos;
  
  /* 
	junção tabela cliente e produto na tbpedido,
    com idcli e idpro.
*/
  -- Unindo todos os dados das tabelas
select * from tbpedidos
inner join tbclientes
on tbpedidos.idcli = tbclientes.idcli
inner join tbprodutos
on tbpedidos.idpro = tbprodutos.idpro;

-- ******** ---

select
PE.idpedido as Pedido,
datamat as 'Data e Hora',
N.nome as Cliente,
PR.produto as Compra,quantidade,fabricante,valor as Preço
from tbpedidos as PE
inner join tbclientes as N
on (PE.idcli = N.idcli)
inner join tbprodutos as PR
on (PE.idpro = PR.idpro);

select sum(valor) as Total from tbprodutos;

/*
	Codigo para delete tabela, lista e Adiciona colunas
--delete from tbpedidos where idpedido=2 
--drop table tbpedidos;
--alter table tbprodutos add column fabricante varchar(50) not null;
--alter table tbprodutos drop column fabricante;
  