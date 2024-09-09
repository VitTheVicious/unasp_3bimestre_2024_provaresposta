use prova_p1;

insert into funcionarios(id_funcionario, nome_funcionario, cargo, salario) values (1, "João Silva", "Desenvolvedor", 5500);
insert into funcionarios(id_funcionario, nome_funcionario, cargo, salario) values (2, "Maria Oliveira", "Analista", 6000);
insert into funcionarios(id_funcionario, nome_funcionario, cargo, salario) values (3, "Carlos Pereira", "Gerente de Projetos", 7500);
insert into funcionarios(id_funcionario, nome_funcionario, cargo, salario) values (4, "Lucas Almeida", "Consultor de TI", 6700);
insert into funcionarios(id_funcionario, nome_funcionario, cargo, salario) values (5, "Ana Costa", "Designer", 4800);

insert into funcionarios_projetos(id_projeto, id_funcionario, data_inicio, data_fim) values (1, 1, '2024-01-10', '2024-06-30');
insert into funcionarios_projetos(id_projeto, id_funcionario, data_inicio, data_fim) values (2, 2, '2024-02-10', '2024-07-31');
insert into funcionarios_projetos(id_projeto, id_funcionario, data_inicio, data_fim) values (3, 3, '2024-03-15', '2024-09-15');
insert into funcionarios_projetos(id_projeto, id_funcionario, data_inicio, data_fim) values (4, 4, '2024-05-01', '2024-11-30');
insert into funcionarios_projetos(id_projeto, id_funcionario, data_inicio, data_fim) values (5, 5, '2024-04-20', '2024-10-20');

select funcionarios.nome_funcionario, funcionarios_projetos.data_inicio, funcionarios_projetos.data_fim
from funcionarios
inner join funcionarios_projetos on funcionarios.id_funcionario = funcionarios_projetos.id_funcionario;

select funcionarios.nome_funcionario, funcionarios_projetos.data_inicio, funcionarios_projetos.data_fim
from funcionarios
inner join funcionarios_projetos on funcionarios.id_funcionario = funcionarios_projetos.id_funcionario
where funcionarios_projetos.data_inicio > '2024-03-01';