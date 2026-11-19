-- Exemplos de atualização de dados.
-- Os IDs 1 são os registros inseridos pelo arquivo 02_dados.sql.
UPDATE Aluno
SET nome = 'Ana Souza (Atualizado)'
WHERE id_aluno = 1;

UPDATE Curso
SET nome_curso = 'Lógica de Programação - Básico'
WHERE id_curso = 1;

-- Confira as alterações:
SELECT * FROM Aluno WHERE id_aluno = 1;
SELECT * FROM Curso WHERE id_curso = 1;
