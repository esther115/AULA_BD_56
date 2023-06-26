#Ativação do banco de dados 
use empresa_xpto;

#Selecionando a tabela departamentos
select*from departamentos;


#Inserindo departamentos na tabela 
insert into departamentos values(9, " Recursos Humanos" );
insert into departamentos values(10, " Marketing");
insert into departamentos values(11, "Produção");
insert into departamentos values(12, "Executivo");
insert into departamentos values(13," Gerente Financeiro");
insert into departamentos values(14, " Gerente de Marketing");
insert into departamentos values(15, " Gerente de Produção");

#Alteração da tabela funcionarios
#Adicionando a coluna id_departamentos como chave estrangeira 
#Fazendo referência à tabela departamentos 
alter table funcionarios
add column id_departamentos int,
add constraint fk_funcionarios_departamentos 
foreign key (id_departamentos) references departamentos(id);

#Selecionando a tabela funcionarios 
select*from funcionarios;

#Atualizando os funcionario com id 1 para o departamentos de financeiro
update funcionarios set id_departamentos=1 where id=1;

#Atualizando os funcionarios com id 3,4,5 para o departamento de vendas
update funcionarios set id_departamentos=2 where id=2 or id=3 or id=4 or id=5;

#Atualizando os funcionarios com id 6,7,8,9 para o departamento de TI
update funcionarios set id_departamentos=4 where id=6 or id=7 or id=8 or id=9;

#Atualizando os funcionarios com id 10,11,12,13 para o departamento juridico
update funcionarios set id_departamentos=5 where id=10 or id=11 or id=12 or id=13;

#Atualizando os funcionarios com id 14,15,16,17 parao o departamento de recursos humanos 
update funcionarios set id_departamentos=9 where id=14 or id=15 or id=16 or id=17;

#Selecionando o id do  funcionario com maior salario
select*from funcionarios  order by salario  desc;

#Atualizando o funcionario com id 937 para o departamento executivo
update funcionarios set id_departamentos=12 where id=937;

#Selecionando o id dos 4 primeiros funcionarios com maior salario
select id from funcionarios where salario order by salario desc limit 4;

#Atualizando o funcionario com id 869 para o departamento de gerente financeiro
update funcionarios set id_departamentos=13 where id=869;

#Atualizando o funcionario com id 577 para o departamento de gerente de produção
update funcionarios set id_departamentos=15 where id=577;

#Atualizando o funcionario com id 396 para o departamento de gerente de marketing
update funcionarios set id_departamentos=14 where id=396;

