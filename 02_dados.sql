-- Dados fictícios para demonstração.
-- Execute em um banco recém-criado para evitar duplicação de registros.
PRAGMA foreign_keys = ON;

INSERT INTO Aluno (nome) VALUES
('Ana Souza'),
('Bruno Lima'),
('Carla Mendes');

INSERT INTO Curso (nome_curso) VALUES
('Lógica de Programação'),
('Banco de Dados');

INSERT INTO Professor (nome) VALUES
('Mariana Costa'),
('Rafael Alves');

INSERT INTO Modulo (nome_modulo, id_curso) VALUES
('Introdução à Lógica', 1),
('Estruturas Condicionais', 1),
('Fundamentos de SQL', 2);

INSERT INTO Aula (nome_aula, id_modulo, id_professor) VALUES
('Primeiros passos', 1, 1),
('Variáveis e tipos', 1, 1),
('Comandos condicionais', 2, 2),
('Introdução ao SELECT', 3, 2);

INSERT INTO Progresso_Aluno (id_aluno, id_aula, data_conclusao) VALUES
(1, 1, '2026-10-01'),
(1, 2, '2026-10-03'),
(2, 1, '2026-10-04'),
(3, 4, '2026-10-05');
