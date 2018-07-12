create database prova_final;
use prova_final;
create table empregado	(matricula 	integer not null,
	 		nome 		Varchar(30) not null,
	 		rua 		Varchar(30),
	 		bairro	 	Varchar(10),
	 		telefone 	Varchar(7),
	 		datanasc	date,
	 		dataadm		date,
	 		funcao		Varchar(30), 
	 		coddepart 	integer,
	 		matgerente	integer,
	 		salario	Float not null,
	 		comissao	DECIMAL(10,2) NOT NULL,
	 constraint pkempregadoX	primary key(matricula));

create table dependente (matricula 	integer not null,
			num		integer not null,
			nome 		Varchar(30) not null,
			sexo 		char(1),
			datanasc	date,
			parentesco 	Varchar(10),
	constraint  pkdependenteX primary key (matricula,num));
		 
create table departamento 	(cod 		integer not null,	
		 		nome	 	varchar(30) not null,
				localizacao 	varchar(20),
				matgerente 	integer,
				datainicioger	date,
	constraint pkdepartamentoX primary key(cod));

create table projeto 	(cod 		integer not null,
			nome 		Varchar(30) not null,
			situacao 	varchar(20),
			coddepart 	integer,
			constraint pkdprojetoX primary key (cod));

create table trabalhaem	(mat 	integer not null,
			codproj	int not null,
			papel 	Varchar(30),
			horas	integer,
			constraint pktrabalhaemX primary key(mat,codproj));

alter table empregado add constraint fkempdeptoX 
      foreign key (coddepart) references departamento(cod);
alter table empregado add constraint fkempempX 
      foreign key (matgerente) references empregado(matricula);
alter table dependente add constraint fkdependempX
      foreign key (matricula) references empregado(matricula);
alter table departamento add constraint fkdeptoempX 
      foreign key (matgerente) references empregado(matricula);
alter table projeto add constraint fkprojdeptoX 
      foreign key (coddepart) references departamento(cod);
alter table trabalhaem add constraint fktrabempX 
      foreign key (mat) references empregado(matricula);
alter table trabalhaem add constraint fktrabprojX 
      foreign key (codproj) references projeto(cod);
      
      
      
      
      




alter table empregado add constraint fkempdeptoX 
      foreign key (coddepart) references departamento(cod);
alter table empregado add constraint fkempempX 
      foreign key (matgerente) references empregado(matricula);
alter table dependente add constraint fkdependempX
      foreign key (matricula) references empregado(matricula);
alter table departamento add constraint fkdeptoempX 
      foreign key (matgerente) references empregado(matricula);
alter table projeto add constraint fkprojdeptoX 
      foreign key (coddepart) references departamento(cod);
alter table trabalhaem add constraint fktrabempX 
      foreign key (mat) references empregado(matricula);
alter table trabalhaem add constraint fktrabprojX 
      foreign key (codproj) references projeto(cod);
 
 update empregado set matgerente=116 where coddepart=1;
update empregado set matgerente=123 where coddepart=3;
update empregado set matgerente=140 where coddepart=4;
update empregado set matgerente=135 where coddepart=5;
update empregado set matgerente=133 where coddepart=6;
update empregado set matgerente=129 where coddepart=7;
update empregado set matgerente=126 where coddepart=8;
update empregado set matgerente=131 where coddepart=9;
update empregado set matgerente=142 where coddepart=10;
update empregado set matgerente=null  where matricula=116;
update empregado set matgerente=null  where matricula=123;
update empregado set matgerente=null  where matricula=140;
update empregado set matgerente=null  where matricula=135;
update empregado set matgerente=null  where matricula=133;
update empregado set matgerente=null  where matricula=129;
update empregado set matgerente=null  where matricula=126;
update empregado set matgerente=null  where matricula=131;
update empregado set matgerente=null  where matricula=142;
commit;

insert into  departamento values (1,'Administração','Predio 1',null,'01/10/1999');
insert into  departamento values (2,'Recursos Humanos','Predio 2',null,'01/10/1997');  
insert into  departamento values (3,'Informática','Predio 3',null,'02/08/1998');  
insert into  departamento values (4,'Manutenção','Predio 1',null,'01/11/2000');  
insert into  departamento values (5,'Produção','Predio 2',null,'01/12/2002');  
insert into  departamento values (6,'Compras','Predio 3',null,'01/10/2001');  
insert into  departamento values (7,'Expedição','Predio 1',null,'01/07/1999');  
insert into  departamento values (8,'Suprimentos','Predio 2',null,'01/06/1998');  
insert into  departamento values (9,'Financeiro','Predio 3',null,'01/05/2002');  
 insert into  departamento values (10,'Atendimento','Predio 1',null,'05/10/2000'); 
commit;
insert into empregado values (111,'Ana Santos','Rio Branco 10','Brotas','2345678','02/09/1970','01/10/1999','Administrador',1,null,2200.00,500.00);  
insert into empregado values (112,'Marcos Santos','Rio Preto 10','Brotas','2345678','02/09/1970','01/10/1999','Auxiliar',1,null,200.00,0.00);    
insert into empregado values (113,'João Santos','Rio Branco 10','Brotas','2345678','02/09/1970','01/10/1999','Auxiliar',1,null,300.00,0.00); 
insert into empregado values (114,'Alvaro Dias','Rio Preto 10','Brotas','2345678','02/09/1970','01/10/1999','Administrador',1,null,2000.00,500.00); 
insert into empregado values (115,'Mario Dias','Manuel Andrade 11','Brotas','2345678','02/09/1977','01/10/1999','Administrador',1,null,1200.00,500.00); 
insert into empregado values (116,'Antonio Sousa','Mouraria 15','Brotas','2345678','02/09/1971','01/10/1999','Gerente',1,null,3200.00,500.00); 
insert into empregado values (117,'Arnaldo Antunes','Tancredo Neves 5','Pituba','2345678','02/09/1978','01/10/1999','Analista',3,null,2500.00,500.00); 
insert into empregado values (118,'Mariza Monte','Tancredo Neves 4','Itaigara','2345678','02/09/1960','01/10/1999','Analista',3,null,2500.00,500.00); 
insert into empregado values (119,'Vanessa da Mata','ACM 13','Graça','2345678','02/09/1980','01/10/1966','Programador',3,null,1500.00,500.00); 
insert into empregado values (120,'Caetano Veloso','ACM 14','Barra','2345678','02/09/1980','01/10/1965','Programador',3,null,1500.00,500.00); 
insert into empregado values (121,'Gilberto Gil','Alberto Torres 20','Barra Av.','2345678','02/09/1963','01/10/1999','Programador',3,null,1200.00,3000.00); 
insert into empregado values (122,'Carlos Brown','Alfredo Rocha 10','Itapuan','2345678','02/09/1956','01/10/1999','DBA',3,null,3000.00,500.00); 
insert into empregado values (123,'Jorge Mautiner','Rio das Pedras 543','Itaigara','2345678','02/09/1954','01/10/1999','Gerente',3,null,3000.00,500.00); 
insert into empregado values (124,'Zé Cabaleiro','Rio Branco 10','Brotas','2345678','02/09/1980','01/10/1967','Recepcionista',10,null,200.00,500.00); 
insert into empregado values (125,'Adriana Calcanhoto','Rio Branco 10','Pituba','2345678','02/09/1980','01/10/1966','Recepcionista',10,null,200.00,500.00); 
insert into empregado values (126,'Milton Nascimento','Rio Branco 10','Barra','2345678','02/09/1980','01/10/1968','Gerente',8,null,2000.00,500.00); 
insert into empregado values (127,'Francisco Buarque','Rio Branco 10','Brotas','2345678','02/09/1985','01/10/1968','Contador',8,null,1000.00,500.00); 
insert into empregado values (128,'Marta Suplicy','Rio Branco 10','Canela','2345678','02/09/1990','01/10/1968','Administrador',7,null,1200.00,500.00); 
insert into empregado values (129,'Roseana Sarney','Rio Branco 10','Brotas','2345678','02/09/1986','01/10/1969','Gerente',7,null,1200.00,500.00); 
insert into empregado values (130,'Rosa Garotinho','Rio Branco 10','Barra','2345678','02/09/1970','01/10/1999','Administrador',9,null,1200.00,500.00); 
insert into empregado values (131,'Luis Inácio','Rio Branco 10','Barra','2345678','02/09/1962','01/10/1997','Gerente',9,null,1200.00,500.00); 
insert into empregado values (132,'Fernando Henrique','Rio Branco 10','Canela','2345678','02/09/1958','01/10/1996','Administrador',6,null,1200.00,500.00); 
insert into empregado values (133,'Lúcio Flávio','Rio Branco 10','Apipema','2345678','02/09/1958','01/10/1995','Gerente',6,null,1200.00,500.00); 
insert into empregado values (134,'Manuel Carlos','Rio Branco 10','Ondina','2345678','02/09/1959','01/10/2000','Administrador',5,null,1200.00,1000.00); 
insert into empregado values (135,'Daniela Cicarelli','Rio Branco 10','Brotas','2345678','02/09/1960','01/10/2001','Gerente',5,null,1200.00,500.00); 
insert into empregado values (136,'Malu Mader','Rio Branco 10','Ondina','2345678','02/09/1960','01/10/2003','Administrador',4,null,1200.00,500.00); 
insert into empregado values (137,'Drica Moraes','Rio Branco 10','Pituba','2345678','02/09/1960','01/10/2000','Administrador',4,null,1200.00,500.00); 
insert into empregado values (138,'Marta Rocha','Rio Branco 10','Itaigara','2345678','02/09/1966','01/10/1999','Administrador',4,null,1200.00,500.00); 
insert into empregado values (139,'Marcos Paulo','Rio Branco 10','Vilas','2345678','02/09/1965','01/10/1998','Engenheiro',4,null,2200.00,500.00); 
insert into empregado values (140,'Camila Pitanga','Rio Branco 10','Brotas','2345678','02/09/1965','01/10/1997','Gerente',4,null,2300.00,500.00); 
insert into empregado values (141,'Antonio Fagundes','Rio Branco 10','Brotas','2345678','02/09/1968','01/10/1998','Engenheiro',4,null,2100.00,500.00); 
insert into empregado values (142,'Marcio José','Rio Branco 20','Pituba','2345678','02/09/1980','01/10/1966','Gerente',10,null,1000.00,500.00);
commit;
update departamento set matgerente=116 where cod=1;
update departamento set matgerente=123 where cod=3;
update departamento set matgerente=140 where cod=4;
update departamento set matgerente=135 where cod=5;
update departamento set matgerente=133 where cod=6;
update departamento set matgerente=129 where cod=7;
update departamento set matgerente=126 where cod=8;
update departamento set matgerente=131 where cod=9;
update departamento set matgerente=142 where cod=10;
commit;
insert into projeto values (1,'Sistema Engenharia','concluído',3);
insert into projeto values (2,'Sistema de Pagamento','em andamento',3);
insert into projeto values (3,'Engenharia Reversa','em andamento',1);
insert into projeto values (4,'Manutenção Preventiva','concluído',4); 
insert into projeto values (5,'Manutenção Corretiva','em andamento',4);  
insert into projeto values (6,'Produção Produto 1','em andamento',5);       
insert into projeto values (7,'Produção Produto 2','em andamento',5);       
insert into projeto values (8,'Produção Produto 3','em andamento',5);  
commit;
insert into trabalhaem values (117,1,'Coordenador',100); 
insert into trabalhaem values (119,1,null,80); 
insert into trabalhaem values (120,1,null,90); 
insert into trabalhaem values (122,1,null,50); 
insert into trabalhaem values (123,1,null,70); 
insert into trabalhaem values (134,1,'Relator',50);   
insert into trabalhaem values (118,2,'Coordenador',100); 
insert into trabalhaem values (119,2,null,85); 
insert into trabalhaem values (120,2,null,100); 
insert into trabalhaem values (122,2,null,60); 
insert into trabalhaem values (123,2,null,100); 
insert into trabalhaem values (111,2,'Relator',60);
insert into trabalhaem values (111,3,'Coordenador',80); 
commit;
insert into trabalhaem values (112,3,null,60); 
insert into trabalhaem values (113,3,null,44); 
insert into trabalhaem values (114,3,null,52); 
insert into trabalhaem values (115,3,'Relator',60); 
insert into trabalhaem values (113,4,'Coordenador',40); 
insert into trabalhaem values (123,4,null,100); 
insert into trabalhaem values (136,4,'Relator',60);
insert into trabalhaem values (137,5,'Coordenador',40); 
insert into trabalhaem values (139,5,null,37); 
insert into trabalhaem values (140,5,null,80); 
insert into trabalhaem values (120,5,null,37); 
insert into trabalhaem values (122,5,null,80); 
insert into trabalhaem values (141,5,'Relator',60);
insert into trabalhaem values (134,6,'Coordenador',40); 
insert into trabalhaem values (135,6,null,37); 
insert into trabalhaem values (132,6,null,80); 
insert into trabalhaem values (133,6,null,37); 
insert into trabalhaem values (114,6,null,80); 
insert into trabalhaem values (115,6,'Relator',60);
commit;
insert into dependente values (111,01,'Ana Maria','F','05/06/2001','filhos'); 
insert into dependente values (111,02,'Jorge Luis','M','06/07/2002','filhos');  
insert into dependente values (123,01,'Antonio Carlos','M','05/06/1930','pais');  
insert into dependente values (123,02,'Marcos Antonio','F','05/06/1940','pais');  
insert into dependente values (125,01,'Danilo Luis','M','05/06/2000','filhos');  
insert into dependente values (141,01,'Carlos Alberto','M','05/06/2001','filhos');  
insert into dependente values (117,01,'Maria Eugenia','F','05/06/2002','filhos');  
insert into dependente values (118,01,'Maria Francisca','F','05/06/2003','netos');  
insert into dependente values (118,02,'Maria Eduarda','F','05/06/2003','netos');  
insert into dependente values (118,03,'Maria Carolina','F','05/06/2003','netos');  
commit; 

























































SELECT NOME ,SALARIO FROM EMPREGADO WHERE 
SALARIO > '3000';


SELECT NOME, SALARIO FROM EMPREGADO WHERE CODDEPART = '2' 
AND SALARIO > 2000;

SELECT NOME,MATRICULA FROM DEPENDENTE ;


SELECT NOME,MATRICULA, MATGERENTE ,FUNCAO FROM EMPREGADO ;

SELECT NOME, FUNCAO FROM EMPREGADO;


SELECT NOME, CODDEPART FROM EMPREGADO ;



SELECT NOME, RUA,BAIRRO FROM EMPREGADO;

SELECT MATRICULA, NOME, FUNCAO , FROM EMPREGADO;
SELECT NOME , FUNCAO FROM EMPREGADO WHERE FUNCAO = 'Analista';


SELECT NOME,SEXO FROM DEPENDENTE WHERE SEXO = 'F';

SELECT NOME , SEXO FROM DEPENDENTE , EMPREGADO  WHERE
DEPENDENTE.MATRICULA = EMPREGADO.MATRICULA
AND DEPENDENTE.SEXO = 'M';


SELECT NOME , SALARIO FROM EMPREGADO, DEPARTAMENTO WHERE
EMPREGADO.MATRICULA = DEPARTAMENTO.COD
AND EMPREGADO.FUNCAO = "Gerente";

//comando between tra  a faxa de numero igual 1< >5
select nome, salario from empregado where salario between 1400 and 1500; 

select nome, salario from empregado where salario between 100 and 200;

select nome ,salario from empregado where salario between 200 and 300;
select nome, salario from empregado where salario between 1000 and 1500;
select  nome,salario   from empregado where salario between 2000 and 3000;

//com not between ele nega os valores no estremos 

select nome ,salario from empregado where salario not between 500 and 1000; 
select nome, salario from empregado where salario not between 100 and 1000;

select nome , salario from empregado where salario not between 1000 and 3000;

select nome ,salario from empregado where salario not between 1000 and 3500;

select nome, salario from empregado where salario not between 1000 and 3000; 

select nome , matricula from empregado where coddepart between 1 and 4;

select nome,  matricula, coddepart from empregado where coddepart between 1 and 4;
// dentro da facha
select matricula, nome, salario from empregado where salario   between 1000 and 3000;

select matricula, nome, salario from empregado where salario  not between 1000 and 3000;

select nome , bairro from empregado where nome like 'Mar%';
//// faz uma busca selecionada com in 
select nome , matricula, bairro from empregado where matricula in (111,115,118);
select nome , matricula, bairro from empregado where matricula in (120,125,130);
select nome , matricula, bairro from empregado where matricula in (130,140,150,145);

/// e o comando not in fas uma busca diferente dos selecionado 

select nome ,matricula , bairro from empregado where matricula not in (111,115,118);
select nome, matricula, bairro  from empregado where matricula not in (20,125,130);

select nome , matricula , bairro from empregado where matricula not in (121,127,129);

comando  or quando tem 1 condiçao verdadeira 

select nome, funcao from empregado where funcao = 'Analise' or nome = 'Carlos Brown' ;

select nome, funcao from empregado where nome = 'Ana' or funcao = 'Informática';

//os sinas + - * \ tars as faixas de valores somando subritaindo 
select codproj, horas+100 from trabalhaem;
 tem que rever 
select departamento.nome ,departamento.nome, empregado.funcao from empregado, departamento where
departamento.cod = empregado.coddepart
and empregado.funcao =  null  'Gerente%' ;
select * from projeto;

select *  from departamento; 


select nome ,salario from empregado where salario between 1500 and 3000;

between between between between between between between between between between between between     

select nome, situacao from projeto ;

select * from departamento;

select projeto.nome, projeto.situacao, DEPARTAMENTO.LOCALIZACAO from  projeto , departamento 
where departamento.cod = projeto.CODDEPART
and projeto.SITUACAO ='concluído' AND DEPARTAMENTO.LOCALIZACAO = 'Predio 3';

SELECT FUNCAO FROM EMPREGADO;

SELECT EMPREGADO.NOME, EMPREGADO.FUNCAO,DEPARTAMENTO.LOCALIZACAO FROM EMPREGADO,DEPARTAMENTO 
WHERE EMPREGADO.CODDEPART = DEPARTAMENTO.COD 
AND  EMPREGADO.FUNCAO = 'Administrador'
AND DEPARTAMENTO.LOCALIZACAO = 'Predio 1';

SELECT NOME FROM PROJETO WHERE NOME like'Engenharia%';

select nome from projeto;
select distinct salario,nome from empregado  ;

select nome, dataadm, salario from empregado where dataadm < '01/10/1998';

select EMPREGADO.nome , EMPREGADO.salario, DEPARTAMENTO.LOCALIZACAO from empregado , departamento
where EMPREGADO.CODDEPART = DEPARTAMENTO.COD
and DEPARTAMENTO.LOCALIZACAO = 'Predio 3';

AULA SQL 3 
// ORDENA OS NOME COM O COMANDO ORDER BY 
SELECT MATRICULA , NOME FROM EMPREGADO  ORDER BY NOME;

SELECT MATRICULA , NOME FROM EMPREGADO ORDER BY MATRICULA; 

SELECT MATRICULA , NOME FROM EMPREGADO ORDER BY NOME DESC;

SELECT MATRICULA , NOME FROM EMPREGADO ORDER BY MATRICULA DESC ;
// VOU FAZER COM ASC MAIS NAO É PRECISSO POR QUE ASC E DESCRECENTE 

SELECT MATRICULA , NOME FROM EMPREGADO ORDER BY MATRICULA ASC;

SELECT MATRICULA, NOME FROM EMPREGADO ORDER BY NOME ASC;


SELECT COUNT(NOME) FROM EMPREGADO; 

SELECT MAX(SALARIO) FROM EMPREGADO;

SELECT  MIN(SALARIO) FROM EMPREGADO;

SELECT SUM(SALARIO) FROM EMPREGADO;

SELECT AVG(SALARIO) FROM EMPREGADO;

SELECT COUNT(DISTINCT SALARIO)   FROM EMPREGADO; 

SELECT CODPROJ, AVG(HORAS) FROM TRABALHAEM GROUP BY CODPROJ;
// PARA MIM O HAVING É COMO UMA AGREGACAO COMO AND 
Select codproj, avg(horas) from Trabalhaem group bycodproj having avg(horas) > 30;



/// o comando inner join faz uma associação as comandos das 2 tabela que tem 1 e também na outra tabela  

SELECT empregado.nome, DEPARTAMENTO.LOCALIZACAO
FROM EMPREGADO INNER JOIN DEPARTAMENTO on empregado.coddepart = DEPARTAMENTO.COD;

//// left join  retorna tabela dolado direito <-

select empregado.nome , DEPARTAMENTO.LOCALIZACAO
from empregado left join departamento on empregado.coddepart = departamento.cod;

select empregado.nome , DEPARTAMENTO.MATGERENTE from empregado left join departamento
on empregado.coddepart = departamento.cod;

// agora com right join retorna  tabela do lado esquerdo ->

select empregado.nome , DEPARTAMENTO.LOCALIZACAO from empregado right join departamento
on empregado.coddepart = departamento.cod; 

select empregado.nome , DEPARTAMENTO.MATGERENTE from empregado right join departamento
on empregado.coddepart = departamento.cod;

trais as relasoes ente as tabelas trais as duais tabelas 

select empregado.nome , departamento.localizacao from empregado full join departamento
on empregado.coddepart = departamento.cod;

select empregado.nome , departamento.matgerente from empregado full join departamento
on empregado.coddepart = departamento.cod;
