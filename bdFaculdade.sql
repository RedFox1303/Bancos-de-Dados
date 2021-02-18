CREATE DATABASE faculdade;
use faculdade;

create table aluno (
	ra char(8) primary key,
	nome varchar (100),
    email varchar (100),
    telefone varchar (25)
);

select * from aluno;

insert into aluno (ra, nome, telefone) values 
('01211999', 'Vivian Silva', '11989895656'),
('01211045', 'Gabriel Prisco', '(11)98587-4536'),
('01211057', 'Henrique Danzo Baria', '(11)98158-2705'),
('01211063', 'Jhonatan Harissa', '(11)97961-5045');

select * from aluno where nome like '_a%';
select * from aluno where nome like '%e %';
-- esse metodo (padrão)
select * from aluno where nome != 'Jhonatan Harissa';
-- ou esse (mas não é padrão)
select * from aluno where nome <> 'Jhonatan Harissa';

-- ordenação
select * from aluno order by nome;

-- updates!!!
update aluno set email = 'danzobiss@gmail.com' where ra = '01211057';
update aluno set nome = 'Stanley Harissa' where ra = '01211063';
update aluno set telefone = '(11)98989-5656' where ra = '01211999';


	
create table aula (
	idAula int primary key auto_increment,
    nomeAula varchar(75),
    tipo char(10),
    check (tipo = 'on-line' or tipo = 'hibrida' or tipo = 'presencial'),
    dtAula date,
    mensagem varchar (100)
);

insert into aula values 
	(null, 'apresentação da disciplina e primeiros conceitos', 'on-line', '2021-02-04', 'Conhecendo banco de dados'),
    (null, 'Continuação de conceitos e primeiros comandos SQL', 'on-line', '2021-02-11', 'O primeiro comando a gente nunca esquece'),
    (null, 'Permissões do usuário e comandos gerais', 'presencial', '2021-02-18', 'Sejam Bem-vindos!');
    
select * from aula;
