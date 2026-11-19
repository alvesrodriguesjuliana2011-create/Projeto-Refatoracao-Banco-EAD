-- Consultas para conferir os dados e os relacionamentos.
PRAGMA foreign_keys = ON;

-- 1. Progresso registrado por aluno.
SELECT id_progresso, id_aluno, id_aula, data_conclusao
FROM Progresso_Aluno
ORDER BY id_aluno, data_conclusao;

-- 2. Consulta consolidada do painel do aluno.
SELECT
    al.nome AS aluno,
    cu.nome_curso AS curso,
    mo.nome_modulo AS modulo,
    au.nome_aula AS aula,
    pr.nome AS professor,
    pa.data_conclusao
FROM Progresso_Aluno AS pa
JOIN Aluno AS al ON al.id_aluno = pa.id_aluno
JOIN Aula AS au ON au.id_aula = pa.id_aula
JOIN Modulo AS mo ON mo.id_modulo = au.id_modulo
JOIN Curso AS cu ON cu.id_curso = mo.id_curso
JOIN Professor AS pr ON pr.id_professor = au.id_professor
ORDER BY al.nome, cu.nome_curso, mo.nome_modulo, pa.data_conclusao;

-- 3. Verificação de integridade referencial (resultado esperado: nenhum registro).
PRAGMA foreign_key_check;

-- 4. Plano de consulta para observar o uso de índices.
EXPLAIN QUERY PLAN
SELECT id_progresso, data_conclusao
FROM Progresso_Aluno
WHERE id_aluno = 1;
