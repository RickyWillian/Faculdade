CREATE DATABASE universidade;
CREATE SCHEMA universidade;

SET search_path TO universidade;

CREATE TABLE faculdade (
    sigla VARCHAR(15) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    predio VARCHAR(15) NOT NULL,
    orcamento FLOAT,
    CONSTRAINT facpk PRIMARY KEY (sigla)
);

CREATE TABLE disciplina (
    codigo INT NOT NULL, 
    nome VARCHAR(10) NOT NULL,
    fac_disc VARCHAR(15) NOT NULL,
    creditos DOUBLE,
    CONSTRAINT discpk PRIMARY KEY (codigo),
    CONSTRAINT facfk FOREIGN KEY (fac_disc) REFERENCES faculdade(sigla)
);

CREATE TABLE pre_requisito (
    disciplina INT NOT NULL,
    pre_req INT,
    CONSTRAINT prpk PRIMARY KEY (disciplina, pre_req),
    CONSTRAINT discfk FOREIGN KEY (disciplina) REFERENCES disciplina(codigo),
    CONSTRAINT prfk FOREIGN KEY (pre_req) REFERENCES disciplina(codigo)
);

CREATE TABLE professor (
    id INT NOT NULL,
    nome VARCHAR(50),
    fac_prof VARCHAR(15),
    salario FLOAT,
    CONSTRAINT profpk PRIMARY KEY (id),
    CONSTRAINT facprofk FOREIGN KEY (fac_prof) REFERENCES faculdade(sigla)
);

CREATE TABLE estudante (
    id INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    datanasc DATE,
    fac_est VARCHAR(15), 
    cra FLOAT,
    tutor INT, 
    CONSTRAINT estpk PRIMARY KEY (id),
    CONSTRAINT facestfk FOREIGN KEY (fac_est) REFERENCES faculdade(sigla),
    CONSTRAINT tutfk FOREIGN KEY (tutor) REFERENCES professor(id)
);

CREATE TABLE sala (
    predio VARCHAR(5) NOT NULL,
    numero INT NOT NULL,
    capacidade INT,
    CONSTRAINT salapk PRIMARY KEY (predio, numero)
);

CREATE TABLE turma (
    id INT NOT NULL, 
    turma VARCHAR(10),
    semestre VARCHAR(2),
    ano INT,
    cod_disc INT,
    predio_s VARCHAR(5),
    n_sala INT,
    CONSTRAINT turpk PRIMARY KEY (id),
    CONSTRAINT codisc FOREIGN KEY (cod_disc) REFERENCES disciplina(codigo),
    CONSTRAINT locfk FOREIGN KEY (predio_s, n_sala) REFERENCES sala(predio, numero)
);

CREATE TABLE ensina (
    id_prof INT NOT NULL, 
    id_turma INT NOT NULL, 
    CONSTRAINT ensipk PRIMARY KEY (id_prof, id_turma),
    CONSTRAINT idproffk FOREIGN KEY (id_prof) REFERENCES professor(id),
    CONSTRAINT idtufk FOREIGN KEY (id_turma) REFERENCES turma(id)
);
 
CREATE TABLE frequenta (
    id_est INT NOT NULL, 
    id_turma INT NOT NULL,
    nota FLOAT,
    CONSTRAINT freqpk PRIMARY KEY (id_est, id_turma),
    CONSTRAINT idestfk FOREIGN KEY (id_est) REFERENCES estudante(id),
    CONSTRAINT idturfk FOREIGN KEY (id_turma) REFERENCES turma(id)
);

CREATE TABLE horario_aula (
    id_sem INT NOT NULL,
    id_hora INT NOT NULL,
    id_turma INT NOT NULL,
    CONSTRAINT hapk PRIMARY KEY (id_sem, id_hora, id_turma),
    CONSTRAINT idsemfk FOREIGN KEY (id_sem) REFERENCES semana(id_sem),
    CONSTRAINT idhorafk FOREIGN KEY (id_hora) REFERENCES horario(id_hora),
    CONSTRAINT idturfk FOREIGN KEY (id_turma) REFERENCES turma(id)
);

CREATE TABLE semana (
    id_sem INT NOT NULL,
    descricao VARCHAR(100),
    CONSTRAINT sempk PRIMARY KEY (id_sem)
);

CREATE TABLE horario (
    id_hora INT NOT NULL,
    hora_inicio TIME, 
    hora_fim TIME,
    CONSTRAINT hrpk PRIMARY KEY (id_hora)
);



--Removendo as restrições 

SET search_path TO universidade;

-- Removendo FK
ALTER TABLE disciplina DROP CONSTRAINT facfk;
ALTER TABLE pre_requisito DROP CONSTRAINT discfk;
ALTER TABLE pre_requisito DROP CONSTRAINT prfk;
ALTER TABLE professor DROP CONSTRAINT facprofk;
ALTER TABLE estudante DROP CONSTRAINT facestfk;
ALTER TABLE estudante DROP CONSTRAINT tutfk;
ALTER TABLE turma DROP CONSTRAINT codisc;
ALTER TABLE turma DROP CONSTRAINT locfk;
ALTER TABLE ensina DROP CONSTRAINT idproffk;
ALTER TABLE ensina DROP CONSTRAINT idtufk;
ALTER TABLE frequenta DROP CONSTRAINT idestfk;
ALTER TABLE frequenta DROP CONSTRAINT idturfk;
ALTER TABLE horario_aula DROP CONSTRAINT idsemfk;
ALTER TABLE horario_aula DROP CONSTRAINT idhorafk;
ALTER TABLE horario_aula DROP CONSTRAINT idturfk;

-- Removendo PK
ALTER TABLE faculdade DROP CONSTRAINT facpk;
ALTER TABLE disciplina DROP CONSTRAINT discpk;
ALTER TABLE pre_requisito DROP CONSTRAINT prpk;
ALTER TABLE professor DROP CONSTRAINT profpk;
ALTER TABLE estudante DROP CONSTRAINT estpk;
ALTER TABLE sala DROP CONSTRAINT salapk;
ALTER TABLE turma DROP CONSTRAINT turpk;
ALTER TABLE ensina DROP CONSTRAINT ensipk;
ALTER TABLE frequenta DROP CONSTRAINT freqpk;
ALTER TABLE horario_aula DROP CONSTRAINT hapk;
ALTER TABLE semana DROP CONSTRAINT sempk;
ALTER TABLE horario DROP CONSTRAINT hrpk;


-- Add as restrições 

SET search_path TO universidade;

-- add  pk
ALTER TABLE faculdade ADD CONSTRAINT facpk PRIMARY KEY (sigla);
ALTER TABLE disciplina ADD CONSTRAINT discpk PRIMARY KEY (codigo);
ALTER TABLE pre_requisito ADD CONSTRAINT prpk PRIMARY KEY (disciplina, pre_req);
ALTER TABLE professor ADD CONSTRAINT profpk PRIMARY KEY (id);
ALTER TABLE estudante ADD CONSTRAINT estpk PRIMARY KEY (id);
ALTER TABLE sala ADD CONSTRAINT salapk PRIMARY KEY (predio, numero);
ALTER TABLE turma ADD CONSTRAINT turpk PRIMARY KEY (id);
ALTER TABLE ensina ADD CONSTRAINT ensipk PRIMARY KEY (id_prof, id_turma);
ALTER TABLE frequenta ADD CONSTRAINT freqpk PRIMARY KEY (id_est, id_turma);
ALTER TABLE horario_aula ADD CONSTRAINT hapk PRIMARY KEY (id_sem, id_hora, id_turma);
ALTER TABLE semana ADD CONSTRAINT sempk PRIMARY KEY (id_sem);
ALTER TABLE horario ADD CONSTRAINT hrpk PRIMARY KEY (id_hora);

-- add fk
ALTER TABLE disciplina ADD CONSTRAINT facfk FOREIGN KEY (fac_disc) REFERENCES faculdade(sigla);
ALTER TABLE pre_requisito ADD CONSTRAINT discfk FOREIGN KEY (disciplina) REFERENCES disciplina(codigo);
ALTER TABLE pre_requisito ADD CONSTRAINT prfk FOREIGN KEY (pre_req) REFERENCES disciplina(codigo);
ALTER TABLE professor ADD CONSTRAINT facprofk FOREIGN KEY (fac_prof) REFERENCES faculdade(sigla);
ALTER TABLE estudante ADD CONSTRAINT facestfk FOREIGN KEY (fac_est) REFERENCES faculdade(sigla);
ALTER TABLE estudante ADD CONSTRAINT tutfk FOREIGN KEY (tutor) REFERENCES professor(id);
ALTER TABLE turma ADD CONSTRAINT codisc FOREIGN KEY (cod_disc) REFERENCES disciplina(codigo);
ALTER TABLE turma ADD CONSTRAINT locfk FOREIGN KEY (predio_s, n_sala) REFERENCES sala(predio, numero);
ALTER TABLE ensina ADD CONSTRAINT idproffk FOREIGN KEY (id_prof) REFERENCES professor(id);
ALTER TABLE ensina ADD CONSTRAINT idtufk FOREIGN KEY (id_turma) REFERENCES turma(id);
ALTER TABLE frequenta ADD CONSTRAINT idestfk FOREIGN KEY (id_est) REFERENCES estudante(id);
ALTER TABLE frequenta ADD CONSTRAINT idturfk FOREIGN KEY (id_turma) REFERENCES turma(id);
ALTER TABLE horario_aula ADD CONSTRAINT idsemfk FOREIGN KEY (id_sem) REFERENCES semana(id_sem);
ALTER TABLE horario_aula ADD CONSTRAINT idhorafk FOREIGN KEY (id_hora) REFERENCES horario(id_hora);
ALTER TABLE horario_aula ADD CONSTRAINT idturfk FOREIGN KEY (id_turma) REFERENCES turma(id);

-- após rodar o script (e) todas as restrições foram removidas
-- ao tentar violar uma restrição apos a remoção delas o banco aceita dados invalidos, como:
-- INSERT INTO disciplina (codigo, nome, fac_disc, creditos)
-- VALUES (101, 'Matematica', 'FAKE_FAC', 4);
-- pois FAKE_FAC não existe em fac_disc
-- ao tentar adicionar as restrições novamente a chave estrangeira facfk retorna erro:
-- ERROR: insert or update on table "disciplina" violates foreign key constraint "facfk"