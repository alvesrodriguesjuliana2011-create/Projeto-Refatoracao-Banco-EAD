-- Projeto: Plataforma de Cursos Online (EAD)
-- Banco: SQLite
-- Execute este PRAGMA em cada conexão que utilizar o banco.
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS Aluno (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Curso (
    id_curso INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_curso TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Professor (
    id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Modulo (
    id_modulo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_modulo TEXT NOT NULL,
    id_curso INTEGER NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE IF NOT EXISTS Aula (
    id_aula INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_aula TEXT NOT NULL,
    id_modulo INTEGER NOT NULL,
    id_professor INTEGER NOT NULL,
    FOREIGN KEY (id_modulo) REFERENCES Modulo(id_modulo),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE IF NOT EXISTS Progresso_Aluno (
    id_progresso INTEGER PRIMARY KEY AUTOINCREMENT,
    id_aluno INTEGER NOT NULL,
    id_aula INTEGER NOT NULL,
    data_conclusao DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_aula) REFERENCES Aula(id_aula),
    UNIQUE (id_aluno, id_aula)
);
