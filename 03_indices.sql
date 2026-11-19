-- Índices para apoiar consultas e relacionamentos frequentes.
-- As chaves primárias e a restrição UNIQUE já possuem índices próprios no SQLite.
CREATE INDEX IF NOT EXISTS idx_progresso_aluno_id
    ON Progresso_Aluno(id_aluno);

CREATE INDEX IF NOT EXISTS idx_progresso_aula_id
    ON Progresso_Aluno(id_aula);

CREATE INDEX IF NOT EXISTS idx_aula_modulo_id
    ON Aula(id_modulo);

CREATE INDEX IF NOT EXISTS idx_aula_professor_id
    ON Aula(id_professor);

CREATE INDEX IF NOT EXISTS idx_modulo_curso_id
    ON Modulo(id_curso);
