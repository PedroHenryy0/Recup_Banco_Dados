
CREATE TABLE alunos (
alunos_id INT PRIMARY KEY,
alunoname TEXT,
idade INT);

CREATE TABLE disciplinas (
disciplinas_id INT PRIMARY KEY,
matematica TEXT,
historia TEXT,
musica TEXT
);

CREATE TABLE alunoFS (
alunoFS_id INT PRIMARY KEY,
alunonome TEXT,
idade INT
);

CREATE TABLE matricula (
matricula_id INT PRIMARY KEY,
alunos_id INT, -- fk
disciplinas_id INT, -- fk
alunoFS_id INT, -- fk
FOREIGN KEY (alunos_id) REFERENCES alunos (alunos_id),
FOREIGN KEY(disciplinas_id) REFERENCES disciplinas (disciplinas_id),
FOREIGN KEY (alunoFS_id) REFERENCES alunoFS (alunoFS_id)
);

CREATE TABLE professor (
professor_id INT PRIMARY KEY,
profenome TEXT
);

CREATE TABLE turma (
turma_id INT PRIMARY KEY,
turma INT,
horario TIME,
matricula_id INT, -- fk
professor_id INT, -- fk
FOREIGN KEY (matricula_id) REFERENCES matricula (matricula_id),
FOREIGN KEY (professor_id) REFERENCES professor (professor_id)
);


