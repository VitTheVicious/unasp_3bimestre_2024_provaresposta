create database if not exists prova_p1;
use prova_p1;

create table if not exists funcionarios(
	id_funcionario int primary key,
	nome_funcionario varchar(100) not null,
    cargo varchar(50),
    salario int
);

create table if not exists funcionarios_projetos(
	id_projeto int primary key,
    id_funcionario int not null,
    FOREIGN key(id_funcionario) references funcionarios(id_funcionario),
    data_inicio date,
    data_fim date
);

