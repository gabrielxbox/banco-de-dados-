create database prova;

use prova;

create table produtos(
	id int(11) not null auto_increment primary key,
	nome varchar(45) not null,
	valor_normal double not null,
    valor_desconto double not null
);

 
create table ingredientes(
	id int(11) not null auto_increment primary key,
	nome varchar(45) not null
);

create table compras(
	id int(11) not null auto_increment primary key,
	marca varchar(80) null,
	valor double not null,
	quantidade int(3) not null,
	data date not null
);

create table loja(
	id int(11) not null auto_increment primary key,
	quantidade int(3) not null,
	data date not null,
	idproduto int(11) not null,
	foreign key (idproduto) references produtos(id)
);

create table vendas(
	id int(11) not null auto_increment primary key,
	quantidade int(3) not null,
	data date not null,
	idloja int(11) not null,
	foreign key (idloja) references loja(id)
);

create table ingredientes_da_receita(
	porcao double not null,
	idingrediente int(11) not null,
	idproduto int(11) not null,
	foreign key (idingrediente) references ingredientes(id),
	foreign key (idproduto) references produtos(id)
);

create table estoque(
	id int(11) not null auto_increment primary key,
	quantidade int(3) not null,
	idcompra int(11) not null,
	idingrediente int(11) not null,
	foreign key (idcompra) references compras(id),
	foreign key (idingrediente) references ingredientes(id)
);

create table perdas_produtos(
	id int(11) not null auto_increment primary key,
	quantidade int(3) not null,
	idloja int(11) not null,
	foreign key (idloja) references loja(id)
);

create table perdas_ingredientes(
	id int(11) not null auto_increment primary key,
	quantidade int(3) not null,
	idestoque int(11) not null,
	foreign key (idestoque) references estoque(id)
);

// trigger  before antes do codigo after antes do codigo

select *from produtos;

 
create trigger tr_valor before insert on produtos for each row 
  set new.valor_desconto = (new.valor_normal * 0.90);

insert into produtos(id,nome,valor) values('10',"Geladinho de love",10);

insert into produtos(nome,valor) values("Geladinho de Morango",2);
insert into produtos(nome,valor) values("Geladinho de Chocolate",2);
insert into produtos(nome,valor) values("Geladinho de Amendoin",2);
insert into produtos(nome,valor) values("Picolé de Morango",3);
insert into produtos(nome,valor) values("Picolé de Chocolate",3);
insert into produtos(nome,valor) values("Picolé de Amendoin",3);
insert into produtos(nome,valor) values("Sorvetinho de Morango",4);
insert into produtos(nome,valor) values("Sorvetinho de Chocolate",4);
insert into produtos(nome,valor) values("Sorvetinho de Amendoin",4);

insert into ingredientes(nome) values("Nesquik Morango");
insert into ingredientes(nome) values("Chocolate");
insert into ingredientes(nome) values("Amendoin");
insert into ingredientes(nome) values("Leite");
insert into ingredientes(nome) values("Leite Condensado");
insert into ingredientes(nome) values("Creme de Leite");


insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.2,1,1);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.2,1,1);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,4,1);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,5,1);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,6,1);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.25,2,2);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,4,2);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,5,2);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,6,2);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(1,3,3);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,4,3);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,5,3);
insert into ingredientes_da_receita(porcao,idingrediente,idproduto) values(0.10,6,3);

select * from loja;
select * from produtos;



insert into loja (id,quantidade,data, idproduto) values ('2','30','2018-05-10','2');
insert into loja (id,quantidade,data, idproduto)values('3','35','2018-05-10','3');
insert into loja (id,quantidade,data, idproduto)values('4','10','2018-01-25','4');
insert into loja (id,quantidade,data, idproduto)values('5','38','2018-03-02','5');
insert into loja (id,quantidade,data, idproduto)values('5','30','2018-07-30','5');
insert into loja (id,quantidade,data, idproduto)values('6','33','2018-09-18','6');
insert into loja (id,quantidade,data, idproduto)values('7','37','2018-12-20','7');
insert into loja (id,quantidade,data, idproduto)values('8','31','2018-09-19','8');
insert into loja (id,quantidade,data, idproduto)values('9','05','2018-05-10','9');

select *from vendas;

insert into vendas (id,quantidade,data,idloja)values('1','5','2018-05-15','1');
insert into vendas (id,quantidade,data,idloja)values('2','10','2018-05-30','2');
insert into vendas (id,quantidade,data,idloja)values('3','8','2018-05-15','3');
insert into vendas (id,quantidade,data,idloja)values('4','5','2018-05-30','4');
insert into vendas (id,quantidade,data,idloja)values('5','22','2018-05-12','5');
insert into vendas (id,quantidade,data,idloja)values('6','12','2018-05-02','6');
insert into vendas (id,quantidade,data,idloja)values('7','07','2019-01-05','7');
insert into vendas (id,quantidade,data,idloja)values('8','25','2018-05-25','8');
insert into vendas (id,quantidade,data,idloja)values('9','35','2018-06-15','9');


select * from perdas_produtos;


insert into perdas_produtos (id,quantidade,idloja)values('1','02','1');
insert into perdas_produtos (id,quantidade,idloja)values('2','01','2');
insert into perdas_produtos (id,quantidade,idloja)values('3','0','3');
insert into perdas_produtos (id,quantidade,idloja)values('4','0','4');
insert into perdas_produtos (id,quantidade,idloja)values('5','03','5');
insert into perdas_produtos (id,quantidade,idloja)values('6','04','6');
insert into perdas_produtos (id,quantidade,idloja)values('7','02','7');
insert into perdas_produtos (id,quantidade,idloja)values('8','04','8');
insert into perdas_produtos (id,quantidade,idloja)values('9','01','9');


select * from ingredientes;
select* from compras;


select * from estoque;


insert into estoque(id,quantidade,idcompra,idingrediente)values('1','50','1','1');
insert into estoque(id,quantidade,idcompra,idingrediente)values('2','55','2','2');
insert into estoque(id,quantidade,idcompra,idingrediente)values('3','56','3','3');
insert into estoque(id,quantidade,idcompra,idingrediente)values('4','52','4','4');
insert into estoque(id,quantidade,idcompra,idingrediente)values('5','53','5','5');
insert into estoque(id,quantidade,idcompra,idingrediente)values('6','51','6','6');
insert into estoque(id,quantidade,idcompra,idingrediente)values('7','58','7','7');
insert into estoque(id,quantidade,idcompra,idingrediente)values('8','59','8','8');
insert into estoque(id,quantidade,idcompra,idingrediente)values('9','54','9','9');



select * from compras;


insert into compras(id,marca,valor,quantidade,data)values('1','ltda ana','100','15','2018-05-10');
insert into compras(id,marca,valor,quantidade,data)values('2','ltda pedro','200','20','2018-05-10');
insert into compras(id,marca,valor,quantidade,data)values('3','ltda ana paula','150','13','2018-05-19');
insert into compras(id,marca,valor,quantidade,data)values('4','ltda issac','300','25','2018-06-15');


select * from perdas_ingredientes;


insert into perdas_ingredientes(id,quantidade,idestoque)values('1','3','1');
insert into perdas_ingredientes(id,quantidade,idestoque)values('2','5','2');

select *from produtos;




// nome dos ingredientes que teve percas em estoque

select   ingredientes.nome , perdas_ingredientes.quantidade from ingredientes, estoque, perdas_ingredientes 
 where ingredientes.id = estoque.idingrediente 
 and  estoque.id = perdas_ingredientes.id
 and perdas_ingredientes.quantidade   <  '20';
 
// a qui mostra a quantidade que tem na loja
select produtos.nome, loja.quantidade from produtos,loja where produtos.id = loja.idproduto
and loja.quantidade = '10';

// perca de produtos 
 select produtos.nome, loja.data, perdas_produtos.quantidade from produtos,loja,perdas_produtos where produtos.id = loja.idproduto
and loja.id = perdas_produtos.idloja 
and perdas_produtos.quantidade = '0';



select distinct produtos.nome, compras.quantidade  from produtos, ingredientes_da_receita, ingredientes,estoque ,compras
where produtos.id = ingredientes_da_receita.idproduto
and ingredientes_da_receita.idproduto = ingredientes.id
and ingredientes.id  = estoque.idingrediente
and estoque.idcompra = compras.id  
and compras.quantidade >='1' ;

// compra e quantidades do produto comprado

select distinct produtos.nome, compras.quantidade  from produtos, ingredientes_da_receita, ingredientes,estoque ,compras
where produtos.id = ingredientes_da_receita.idproduto
and ingredientes_da_receita.idproduto = ingredientes.id
and ingredientes.id = estoque.idingrediente
and estoque.idcompra = compras.id  
and compras.quantidade >='1' ;





select distinct produtos.nome, compras.quantidade  from produtos, ingredientes_da_receita, ingredientes,estoque ,compras
where produtos.id = ingredientes_da_receita.idproduto
and ingredientes_da_receita.idproduto = ingredientes.id
and ingredientes.id  = estoque.idingrediente
and estoque.idcompra = compras.id  
and compras.quantidade <='1' ;




// nomes dos ingredientes do produto 

select distinct produtos.nome, ingredientes.nome  from produtos, ingredientes_da_receita, ingredientes
where produtos.id = ingredientes_da_receita.idproduto
and ingredientes_da_receita.idproduto = ingredientes.id
and produtos.nome  = 'Geladinho de Morango' ;

as perdas dos ingredientes;

select distinct  ingredientes.nome, perdas_ingredientes.quantidade  from  ingredientes, estoque, perdas_ingredientes
where   ingredientes.id = estoque.idingrediente
and   estoque.id = perdas_ingredientes.idestoque
and perdas_ingredientes.quantidade >=  '1';


select * from perdas_ingredientes;