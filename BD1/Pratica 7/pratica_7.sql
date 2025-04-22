  -- 11 a
SELECT d.nome, f.nome
FROM disciplina d, faculdade f
WHERE d.fac_disc = f.sigla;
/* Banco de Dados I	Faculdade de Computação
Banco de Dados II	Faculdade de Computação
Algoritimos e Programação I	Faculdade de Computação
Algoritimos e Programação II	Faculdade de Computação
Programação Orientada a Objeto	Faculdade de Computação
Metodologia e Epistemologia Jurídica	Faculdade de Direito
Teoria do Direito	Faculdade de Direito
Teoria do Estado e Democracia	Faculdade de Direito
Filosofia do Direito	Faculdade de Direito
História do Direito	Faculdade de Direito
Análise de Dados I	Faculdade de Gestão e Negócios
Fundamentos de Administração	Faculdade de Gestão e Negócios
Faculdade de Gestão e Negócios	Faculdade de Gestão e Negócios
Dados e Informações Financeiras I	Faculdade de Gestão e Negócios
Comportamento Organizacional	Faculdade de Gestão e Negócios
Comportamento do Consumidor	Faculdade de Gestão e Negócios
Análise de Dados II	Faculdade de Gestão e Negócios
Análise de Dados III	Faculdade de Gestão e Negócios
Cálculo Diferencial e Integral 1	Faculdade de Matemática
Cálculo Diferencial e Integral 2	Faculdade de Matemática
Cálculo Diferencial e Integral 3	Faculdade de Matemática
Álgebra Linear	Faculdade de Matemática
Teoria dos Números	Faculdade de Matemática
Análise Real	Faculdade de Matemática
Saúde Coletiva I	Faculdade de Medicina
Saúde Coletiva II	Faculdade de Medicina
Saúde Coletiva III	Faculdade de Medicina
Saúde Coletiva IV	Faculdade de Medicina
Saúde Coletiva V	Faculdade de Medicina
Deontologia e Bioética	Faculdade de Medicina Veterinária*/


-- 11 b
SELECT d.nome, t.*
FROM disciplina d, turma t
WHERE d.codigo = t.cod_disc;
/* Saúde Coletiva I	1	PR	1	2025	80031101	2O	1
Saúde Coletiva II	2	PR	1	2025	80031201	2O	2
Saúde Coletiva III	3	PR	1	2025	80031301	2H	16
Saúde Coletiva IV	4	PR	1	2025	80031401	2H	16
Saúde Coletiva V	5	EX	1	2025	80031501	2H	16
Algoritimos e Programação II	25	PR	2	2019	FACOM114	1B	103
Algoritimos e Programação I	27	EX	1	2020	FACOM113	1B	102
Banco de Dados II	28	EX	2	2020	FACOM112	1B	102
Banco de Dados II	30	EX	1	2021	FACOM112	1B	200
Banco de Dados I	31	EX	2	2021	FACOM111	1B	2002
Anatomia Humana	191	EX	2	2024	I31106	8C	306
Biofísica Celular e de Sistemas	194	PR	2	2024	I31209	8C	309
Histologia Básica e de Sistemas	195	PR	2	2024	I31210	8C	321
Anatomia Humana	201	PR	1	2024	I31106	8C	308
Biossegurança	202	PR	1	2024	I31109	8C	125
Biologia Celular	203	PR	1	2024	I3108	2B	236
Cálculo Diferencial e Integral 1	222	EX	2	2024	FAMAT101	1F	302
Cálculo Diferencial e Integral 1	223	PR	2	2024	FAMAT101	1F	302
Cálculo Diferencial e Integral 2	224	PR	2	2024	FAMAT201	1F	102
Cálculo Diferencial e Integral 3	225	PR	2	2024	FAMAT203	1F	202
Álgebra Linear	226	PR	2	2024	FAMAT205	1F	302
Teoria dos Números	227	PR	2	2024	FAMAT523	1F	102
Análise Real	228	PR	2	2024	FAMAT634	1F	102
Análise Real	228	PR	2	2024	FAMAT634	1F	102
Metodologia e Epistemologia Jurídica	610	PR	1	2024	FADIR31103	3D	101
Metodologia e Epistemologia Jurídica	611	EX	1	2024	FADIR31103	3D	102
Teoria do Direito	612	PR	1	2024	FADIR31104	3D	101
Teoria do Estado e Democracia	613	PR	1	2024	FADIR31105	3D	102
História do Direito	614	PR	2	2024	FADIR31204	3D	103
Filosofia do Direito	615	PR	2	2024	FADIR31203	3D	103 */

-- 11 c
SELECT e.nome as aluno, p.nome as tutor 
FROM estudante e, professor p
WHERE e.tutor = p.id;
/* Caio Canedo Borges	Aídson Antônio de Paula
Guilherme Zanzoti de Sousa Barbosa	Aídson Antônio de Paula
Lucas Pinheiro Barbosa	Augusto Wohlgemuth Fleury Veloso da Silveira
Ianny Carolina Mendes Pereira	Augusto Wohlgemuth Fleury Veloso da Silveira
Matheus Gualter Silva Resende	Augusto Wohlgemuth Fleury Veloso da Silveira
João Vitor Souza Vilela	Elenice Maria Casartelli
Yasmin Pierazo Amaral	Camila Raineri
Frank Targa	Bruno Travençolo
Eduardo Lopes Valério	Elaine Faria
Ricky William	Daniel Abdala
Leonardo di Caprio Gonçalves de Oliveira	João Maratona
Jack Black da Silva	Bruno Travençolo
Fabricio	Abadia Gilda Buso Matoso
WendelL	Aércio Sebastião Borges
Ana	Amadeu Martins Carvalho
Lucas	Almir Fernando Fontes
Juliana	Alessandra Carla Ribeiro
Harry Styles	Disney Oliver Sívieri Júnior
Jessyca Teodoro	Bellisa de Freitas Barbosa
Paulo Daniel Forti da Fonseca	Adriana Cristina Cristianini
Pedro Henrique Lopes Duarte	Alessandra Montera Rotta
Marcelo Gabriel Santos	Ana Maria Donnard
Maria Eduarda Silva	Ana Luísa Neves Alvarenga Dias
Clovis de Barros	Alcino Eduardo Bonella
Eneas Carneiro	Alcino Eduardo Bonella
Lucas Henrique Ferreira	Carina Ubirajara de Faria
Rafael Augusto Mendes	Eliane da Silva Morgado
Joabe Guimarães	Aurélia Aparecida de Araújo Rodrigues
João Paulo Nunes	Camila Mariana Ruiz
Marcos Antônio da Silva	Vivian Duarte Couto Fernandes
João Roberto Cardini	Ananda Silva Singh De Carli
Felipe Sardene Duarte	Andrea Costa Van Herk Vasconcelos
Calipso Santos Joelma	André Francisco Alcântara Fagundes
Eduardo Santos Lima	Andrea Costa Van Herk Vasconcelos
Guilherme Costa Cunha	Adamo Ferreira Gomes do Monte
Isabela Carvalho Correia	Diego Merigue da Cunha
Leonor Sousa Pereira	Andrea Antunes Pereira
Tiago Ribeiro Barros	Altair Ramos Gomes Júnior
Emily Cardoso Souza	Andrea Antunes Pereira
Carla Correia Rocha	Liliana Sanz de la Torre
Rafaela Ribeiro Dias	João Carlos de Oliveira Guerra
Júlio Melo Ribeiro	Altair Ramos Gomes Júnior
Igor Silva Santos	João Carlos de Oliveira Guerra
Anna Alves Azevedo	Liliana Sanz de la Torre
Carlos Oliveira	Carlos José Cordeiro
Ana Costa	Flávia Cunha Rios Naves */

-- 11 d 
SELECT d.nome
FROM disciplina d, turma t
WHERE t.ano = 2025
AND t.semestre = 1
AND d.codigo = t.cod_disc;
/* Saúde Coletiva V
Deontologia e Bioética
Patologia Especial Veterinária
Saúde Coletiva I
Saúde Coletiva II
Saúde Coletiva III
Saúde Coletiva IV
Fundamentos de Anatomia Veterinária
Anatomia dos Animais Domésticos
Patologia Geral Veterinária */

-- 11 e 
SELECT d.nome, p.cod_pre
FROM  disciplina d, pre_requisito p
WHERE d.codigo = p.cod_disc
AND p.cod_pre IS NOT NULL;
/* Saúde Coletiva II	80031101
Saúde Coletiva III	80031201
Filosofia do Direito	FADIR31104
História do Direito	FADIR31104
Cálculo Diferencial e Integral 2	FAMAT101
Cálculo Diferencial e Integral 3	FAMAT201
Anatomia dos Animais Domésticos	FAMEV31103
Fundamentos de Anatomia Veterinária	FAMEV31505
Experimental de Circuitos Elétricos II	FEELT31201
Programação Procedimental	FEELT31603
Eletrônica de Potência	FEELT31605
Transmissão de Energia Elétrica	FEELT31605
Física Básica II	GFM001
Laboratório de Física Básica II	GFM002
Física Básica III	GFM007
Laboratório de Física Básica III	GFM008
Física Básica IV	GFM013
Eletromagnetismo I	GFM013
Laboratório de Física Moderna I	GFM019
Métodos da Física Teórica II	GFM047
Arte no Brasil	IARTE32204
Aquarela	IARTE39040
Prointer 2	IFILO31104
Lingua Francesa 1	ILEEL31217
Sistemática de Fanerógamas	INBIO31203
Metazoários III	INBIO31301
Fisiologia Vegetal	INBIO31303
Metazoários IV	INBIO31402
Ecologia Geral	INBIO31501 */

-- 11 f 
SELECT d.nome, p.cod_disc
FROM  disciplina d, pre_requisito p
WHERE d.codigo = p.cod_pre
AND p.cod_pre IS NOT NULL;
/* Saúde Coletiva I	80031201
Saúde Coletiva II	80031301
Teoria do Direito	FADIR31203
Teoria do Direito	FADIR31204
Cálculo Diferencial e Integral 1	FAMAT201
Cálculo Diferencial e Integral 2	FAMAT203
Fundamentos de Anatomia Veterinária	FAMEV31201
Patologia Especial Veterinária	FAMEV31103
Programação Procedimental	FEELT31404
Instalações Elétricas	FEELT31201
Máquinas Elétricas	FEELT31606
Máquinas Elétricas	FEELT31703
Física Básica I	GFM007
Laboratório de Física Básica I	GFM008
Física Básica II	GFM013
Laboratório de Física Básica II	GFM014
Física Básica III	GFM018
Física Básica III	GFM026
Laboratório de Física Básica IV	GFM025
Métodos da Física Teórica I	GFM064
Processos Graficos	IARTE32201
Tópicos Especiais em História, Teoria e Crítica da Arte	IARTE39010
Prointer 1	IFILO31205
Lingua Francesa 2	ILEEL31111
Sistemática de Criptógamas	INBIO31404
Metazoários II	INBIO31402
Anatomia Vegetal	INBIO31605
Metazoários III	INBIO31503
Ecologia de Populações	INBIO31405 */

-- 12 a 
SELECT  p.nome as professor, d.nome as disciplina
FROM disciplina d, professor p, ensina e, turma t
WHERE p.id = e.id_prof
AND e.id_turma = t.id
AND t.cod_disc = d.codigo; 

/* Abadia Gilda Buso Matoso	Saúde Coletiva I
Aércio Sebastião Borges	Saúde Coletiva II
Alessandra Carla Ribeiro	Saúde Coletiva III
Almir Fernando Fontes	Saúde Coletiva IV
Amadeu Martins Carvalho	Saúde Coletiva V
Bellisa de Freitas Barbosa	Algoritimos e Programação II
Disney Oliver Sívieri Júnior	Algoritimos e Programação II
Ana Paula Coelho Balbi	Algoritimos e Programação II
Cláudio Vieira da Sulva	Algoritimos e Programação I
Claudemir Kuhn Faccioli	Algoritimos e Programação I
Disney Oliver Sívieri Júnior	Algoritimos e Programação I
Alessandro Alves Santana	Cálculo Diferencial e Integral 1
Cesar Guilherme De Almeida	Cálculo Diferencial e Integral 1
Aurélia Aparecida de Araújo Rodrigues	Cálculo Diferencial e Integral 2
Arlindo José de Souza Junior	Cálculo Diferencial e Integral 3
Camila Mariana Ruiz	Álgebra Linear
Alexandre Garrido da Silva	Metodologia e Epistemologia Jurídica
Carlos José Cordeiro	Metodologia e Epistemologia Jurídica
Beatriz Correa Camargo	Teoria do Direito
Flávia Cunha Rios Naves	Teoria do Estado e Democracia
Keila Pacheco Ferreira	História do Direito
Aídson Antônio de Paula	Experimental de Circuitos Elétricos II
Eliane da Silva Morgado	Deontologia e Bioética
Carina Ubirajara de Faria	Fundamentos de Anatomia Veterinária
Camila Raineri	Patologia Geral Veterinária
Ana Luísa Neves Alvarenga Dias	Patologia Especial Veterinária
Elenice Maria Casartelli	Anatomia dos Animais Domésticos
Alcino Eduardo Bonella	Prointer 1
Jairo Dias Carvalho	Filosofia Politica
Rafael Cordeiro Silva	Filosofia Politica */

-- 12 b 
SELECT  p.nome as professor, d.nome as disciplina
FROM disciplina d, professor p, ensina e, turma t
WHERE p.id = e.id_prof
AND e.id_turma = t.id
AND t.cod_disc = d.codigo
AND t.ano = 2025
AND t.semestre = 1;

/* Amadeu Martins Carvalho	Saúde Coletiva V
Eliane da Silva Morgado	Deontologia e Bioética
Ana Luísa Neves Alvarenga Dias	Patologia Especial Veterinária
Abadia Gilda Buso Matoso	Saúde Coletiva I
Aércio Sebastião Borges	Saúde Coletiva II
Alessandra Carla Ribeiro	Saúde Coletiva III
Almir Fernando Fontes	Saúde Coletiva IV
Carina Ubirajara de Faria	Fundamentos de Anatomia Veterinária
Elenice Maria Casartelli	Anatomia dos Animais Domésticos
Camila Raineri	Patologia Geral Veterinária */

-- 12 c 
SELECT d.nome
FROM disciplina d, turma t, sala s
WHERE d.codigo = t.cod_disc
AND t.predio_s = s.predio
AND t.n_sala = s.numero
AND s.capacidade > 10;

/* Algoritimos e Programação I
Banco de Dados II
Programação Procedimental
Introdução à Engenharia Elétrica
Algoritimos e Programação II
Instalações Elétricas
Eletromagnetismo
Banco de Dados II
Banco de Dados I
Fundamentos de Anatomia Veterinária
Patologia Especial Veterinária
Patologia Geral Veterinária
Deontologia e Bioética
Anatomia dos Animais Domésticos
Experimental de Circuitos Elétricos II
Cálculo Diferencial e Integral 2
Teoria dos Números
Análise Real
Fundamentos de Administração
Análise de Dados II
Cálculo Diferencial e Integral 3
Cálculo Diferencial e Integral 1
Cálculo Diferencial e Integral 1
Álgebra Linear
Estudos clanomessicos - Latim I
Estudos Classicos - Latim II
Estudo da Linguagem I
Teoria da Literatura I
Lingua Espanhola
Prointer 1 */

-- 12 d 
SELECT e.nome as aluno, f.nome as faculdade, p.nome as tutor
FROM estudante e, faculdade f, professor p
WHERE e.fac_est = f.sigla
AND e.tutor = p.id; 

/* Frank Targa	Faculdade de Computação	Bruno Travençolo
Eduardo Lopes Valério	Faculdade de Computação	Elaine Faria
Ricky William	Faculdade de Computação	Daniel Abdala
Leonardo di Caprio Gonçalves de Oliveira	Faculdade de Computação	João Maratona
Jack Black da Silva	Faculdade de Computação	Bruno Travençolo
Marcos Antônio da Silva	Faculdade de Computação	Vivian Duarte Couto Fernandes
João Roberto Cardini	Faculdade de Computação	Ananda Silva Singh De Carli
Felipe Sardene Duarte	Faculdade de Computação	Andrea Costa Van Herk Vasconcelos
Calipso Santos Joelma	Faculdade de Computação	André Francisco Alcântara Fagundes
Eduardo Santos Lima	Faculdade de Computação	Andrea Costa Van Herk Vasconcelos
Carlos Oliveira	Faculdade de Direito	Carlos José Cordeiro
Ana Costa	Faculdade de Direito	Flávia Cunha Rios Naves
Joabe Guimarães	Faculdade de Matemática	Aurélia Aparecida de Araújo Rodrigues
João Paulo Nunes	Faculdade de Matemática	Camila Mariana Ruiz
Fabricio	Faculdade de Medicina	Abadia Gilda Buso Matoso
WendelL	Faculdade de Medicina	Aércio Sebastião Borges
Ana	Faculdade de Medicina	Amadeu Martins Carvalho
Lucas	Faculdade de Medicina	Almir Fernando Fontes
Juliana	Faculdade de Medicina	Alessandra Carla Ribeiro
João Vitor Souza Vilela	Faculdade de Medicina Veterinária	Elenice Maria Casartelli
Yasmin Pierazo Amaral	Faculdade de Medicina Veterinária	Camila Raineri
Maria Eduarda Silva	Faculdade de Medicina Veterinária	Ana Luísa Neves Alvarenga Dias
Lucas Henrique Ferreira	Faculdade de Medicina Veterinária	Carina Ubirajara de Faria
Rafael Augusto Mendes	Faculdade de Medicina Veterinária	Eliane da Silva Morgado
Caio Canedo Borges	Faculdade de Engenharia Eletrica	Aídson Antônio de Paula
Guilherme Zanzoti de Sousa Barbosa	Faculdade de Engenharia Eletrica	Aídson Antônio de Paula
Lucas Pinheiro Barbosa	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Ianny Carolina Mendes Pereira	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Matheus Gualter Silva Resende	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Harry Styles	Instituto de Ciências Biomédicas	Disney Oliver Sívieri Júnior */

-- 13 a 
SELECT d.nome, f.nome
FROM disciplina d
JOIN faculdade f on d.fac_disc = f.sigla;
/* Banco de Dados I	Faculdade de Computação
Banco de Dados II	Faculdade de Computação
Algoritimos e Programação I	Faculdade de Computação
Algoritimos e Programação II	Faculdade de Computação
Programação Orientada a Objeto	Faculdade de Computação
Metodologia e Epistemologia Jurídica	Faculdade de Direito
Teoria do Direito	Faculdade de Direito
Teoria do Estado e Democracia	Faculdade de Direito
Filosofia do Direito	Faculdade de Direito
História do Direito	Faculdade de Direito
Análise de Dados I	Faculdade de Gestão e Negócios
Fundamentos de Administração	Faculdade de Gestão e Negócios
Faculdade de Gestão e Negócios	Faculdade de Gestão e Negócios
Dados e Informações Financeiras I	Faculdade de Gestão e Negócios
Comportamento Organizacional	Faculdade de Gestão e Negócios
Comportamento do Consumidor	Faculdade de Gestão e Negócios
Análise de Dados II	Faculdade de Gestão e Negócios
Análise de Dados III	Faculdade de Gestão e Negócios
Cálculo Diferencial e Integral 1	Faculdade de Matemática
Cálculo Diferencial e Integral 2	Faculdade de Matemática
Cálculo Diferencial e Integral 3	Faculdade de Matemática
Álgebra Linear	Faculdade de Matemática
Teoria dos Números	Faculdade de Matemática
Análise Real	Faculdade de Matemática
Saúde Coletiva I	Faculdade de Medicina
Saúde Coletiva II	Faculdade de Medicina
Saúde Coletiva III	Faculdade de Medicina
Saúde Coletiva IV	Faculdade de Medicina
Saúde Coletiva V	Faculdade de Medicina
Deontologia e Bioética	Faculdade de Medicina Veterinária */

-- 13 b 
SELECT d.nome, t.*
FROM disciplina d
JOIN turma t ON t.cod_disc = d.codigo;
/* Saúde Coletiva I	1	PR	1	2025	80031101	2O	1
Saúde Coletiva II	2	PR	1	2025	80031201	2O	2
Saúde Coletiva III	3	PR	1	2025	80031301	2H	16
Saúde Coletiva IV	4	PR	1	2025	80031401	2H	16
Saúde Coletiva V	5	EX	1	2025	80031501	2H	16
Algoritimos e Programação II	25	PR	2	2019	FACOM114	1B	103
Algoritimos e Programação I	27	EX	1	2020	FACOM113	1B	102
Banco de Dados II	28	EX	2	2020	FACOM112	1B	102
Banco de Dados II	30	EX	1	2021	FACOM112	1B	200
Banco de Dados I	31	EX	2	2021	FACOM111	1B	2002
Anatomia Humana	191	EX	2	2024	I31106	8C	306
Biofísica Celular e de Sistemas	194	PR	2	2024	I31209	8C	309
Histologia Básica e de Sistemas	195	PR	2	2024	I31210	8C	321
Anatomia Humana	201	PR	1	2024	I31106	8C	308
Biossegurança	202	PR	1	2024	I31109	8C	125
Biologia Celular	203	PR	1	2024	I3108	2B	236
Cálculo Diferencial e Integral 1	222	EX	2	2024	FAMAT101	1F	302
Cálculo Diferencial e Integral 1	223	PR	2	2024	FAMAT101	1F	302
Cálculo Diferencial e Integral 2	224	PR	2	2024	FAMAT201	1F	102
Cálculo Diferencial e Integral 3	225	PR	2	2024	FAMAT203	1F	202
Álgebra Linear	226	PR	2	2024	FAMAT205	1F	302
Teoria dos Números	227	PR	2	2024	FAMAT523	1F	102
Análise Real	228	PR	2	2024	FAMAT634	1F	102
Metodologia e Epistemologia Jurídica	610	PR	1	2024	FADIR31103	3D	101
Metodologia e Epistemologia Jurídica	611	EX	1	2024	FADIR31103	3D	102
Teoria do Direito	612	PR	1	2024	FADIR31104	3D	101
Teoria do Estado e Democracia	613	PR	1	2024	FADIR31105	3D	102
História do Direito	614	PR	2	2024	FADIR31204	3D	103
Filosofia do Direito	615	PR	2	2024	FADIR31203	3D	103
Experimental de Circuitos Elétricos II	1100	PR	2	2024	FEELT31404	1E	1 */

-- 13 c
SELECT e.nome AS aluno, p.nome AS tutor
FROM estudante e
JOIN professor p ON e.tutor = p.id;

/* Caio Canedo Borges	Aídson Antônio de Paula
Guilherme Zanzoti de Sousa Barbosa	Aídson Antônio de Paula
Lucas Pinheiro Barbosa	Augusto Wohlgemuth Fleury Veloso da Silveira
Ianny Carolina Mendes Pereira	Augusto Wohlgemuth Fleury Veloso da Silveira
Matheus Gualter Silva Resende	Augusto Wohlgemuth Fleury Veloso da Silveira
João Vitor Souza Vilela	Elenice Maria Casartelli
Yasmin Pierazo Amaral	Camila Raineri
Frank Targa	Bruno Travençolo
Eduardo Lopes Valério	Elaine Faria
Ricky William	Daniel Abdala
Leonardo di Caprio Gonçalves de Oliveira	João Maratona
Jack Black da Silva	Bruno Travençolo
Fabricio	Abadia Gilda Buso Matoso
WendelL	Aércio Sebastião Borges
Ana	Amadeu Martins Carvalho
Lucas	Almir Fernando Fontes
Juliana	Alessandra Carla Ribeiro
Harry Styles	Disney Oliver Sívieri Júnior
Jessyca Teodoro	Bellisa de Freitas Barbosa
Paulo Daniel Forti da Fonseca	Adriana Cristina Cristianini
Pedro Henrique Lopes Duarte	Alessandra Montera Rotta
Marcelo Gabriel Santos	Ana Maria Donnard
Maria Eduarda Silva	Ana Luísa Neves Alvarenga Dias
Clovis de Barros	Alcino Eduardo Bonella
Eneas Carneiro	Alcino Eduardo Bonella
Lucas Henrique Ferreira	Carina Ubirajara de Faria
Rafael Augusto Mendes	Eliane da Silva Morgado
Joabe Guimarães	Aurélia Aparecida de Araújo Rodrigues
João Paulo Nunes	Camila Mariana Ruiz
Marcos Antônio da Silva	Vivian Duarte Couto Fernandes */

-- 13 d 
SELECT d.nome
FROM disciplina d
JOIN turma t ON t.cod_disc = d.codigo
WHERE t.ano = 2025
AND t.semestre = 1;
/* Saúde Coletiva V
Deontologia e Bioética
Patologia Especial Veterinária
Saúde Coletiva I
Saúde Coletiva II
Saúde Coletiva III
Saúde Coletiva IV
Fundamentos de Anatomia Veterinária
Anatomia dos Animais Domésticos
Patologia Geral Veterinária */

-- 13 e 
SELECT d.nome, p.cod_pre
FROM disciplina d
JOIN pre_requisito p ON p.cod_disc = d.codigo;
/* Saúde Coletiva II	80031101
Saúde Coletiva III	80031201
Filosofia do Direito	FADIR31104
História do Direito	FADIR31104
Cálculo Diferencial e Integral 2	FAMAT101
Cálculo Diferencial e Integral 3	FAMAT201
Anatomia dos Animais Domésticos	FAMEV31103
Fundamentos de Anatomia Veterinária	FAMEV31505
Experimental de Circuitos Elétricos II	FEELT31201
Programação Procedimental	FEELT31603
Eletrônica de Potência	FEELT31605
Transmissão de Energia Elétrica	FEELT31605
Física Básica II	GFM001
Laboratório de Física Básica II	GFM002
Física Básica III	GFM007
Laboratório de Física Básica III	GFM008
Física Básica IV	GFM013
Eletromagnetismo I	GFM013
Laboratório de Física Moderna I	GFM019
Métodos da Física Teórica II	GFM047
Arte no Brasil	IARTE32204
Aquarela	IARTE39040
Prointer 2	IFILO31104
Lingua Francesa 1	ILEEL31217
Sistemática de Fanerógamas	INBIO31203
Metazoários III	INBIO31301
Fisiologia Vegetal	INBIO31303
Metazoários IV	INBIO31402
Ecologia Geral	INBIO31501 */

-- 13 f 
SELECT d.nome, p.cod_disc
FROM disciplina d
JOIN pre_requisito p ON p.cod_pre = d.codigo;

/* Saúde Coletiva I	80031201
Saúde Coletiva II	80031301
Teoria do Direito	FADIR31203
Teoria do Direito	FADIR31204
Cálculo Diferencial e Integral 1	FAMAT201
Cálculo Diferencial e Integral 2	FAMAT203
Fundamentos de Anatomia Veterinária	FAMEV31201
Patologia Especial Veterinária	FAMEV31103
Programação Procedimental	FEELT31404
Instalações Elétricas	FEELT31201
Máquinas Elétricas	FEELT31606
Máquinas Elétricas	FEELT31703
Física Básica I	GFM007
Laboratório de Física Básica I	GFM008
Física Básica II	GFM013
Laboratório de Física Básica II	GFM014
Física Básica III	GFM018
Física Básica III	GFM026
Laboratório de Física Básica IV	GFM025
Métodos da Física Teórica I	GFM064
Processos Graficos	IARTE32201
Tópicos Especiais em História, Teoria e Crítica da Arte	IARTE39010
Prointer 1	IFILO31205
Lingua Francesa 2	ILEEL31111
Sistemática de Criptógamas	INBIO31404
Metazoários II	INBIO31402
Anatomia Vegetal	INBIO31605
Metazoários III	INBIO31503
Ecologia de Populações	INBIO31405 */

-- 14 a 
SELECT p.nome, d.nome
FROM professor p 
JOIN ensina e ON p.id = e.id_prof
JOIN turma t ON e.id_turma = t.id
JOIN disciplina d ON t.cod_disc = d.codigo;
/* Abadia Gilda Buso Matoso	Saúde Coletiva I
Aércio Sebastião Borges	Saúde Coletiva II
Alessandra Carla Ribeiro	Saúde Coletiva III
Almir Fernando Fontes	Saúde Coletiva IV
Amadeu Martins Carvalho	Saúde Coletiva V
Bellisa de Freitas Barbosa	Algoritimos e Programação II
Disney Oliver Sívieri Júnior	Algoritimos e Programação II
Ana Paula Coelho Balbi	Algoritimos e Programação II
Cláudio Vieira da Sulva	Algoritimos e Programação I
Claudemir Kuhn Faccioli	Algoritimos e Programação I
Disney Oliver Sívieri Júnior	Algoritimos e Programação I
Alessandro Alves Santana	Cálculo Diferencial e Integral 1
Cesar Guilherme De Almeida	Cálculo Diferencial e Integral 1
Aurélia Aparecida de Araújo Rodrigues	Cálculo Diferencial e Integral 2
Arlindo José de Souza Junior	Cálculo Diferencial e Integral 3
Camila Mariana Ruiz	Álgebra Linear
Alexandre Garrido da Silva	Metodologia e Epistemologia Jurídica
Carlos José Cordeiro	Metodologia e Epistemologia Jurídica
Beatriz Correa Camargo	Teoria do Direito
Flávia Cunha Rios Naves	Teoria do Estado e Democracia
Keila Pacheco Ferreira	História do Direito
Aídson Antônio de Paula	Experimental de Circuitos Elétricos II
Eliane da Silva Morgado	Deontologia e Bioética
Carina Ubirajara de Faria	Fundamentos de Anatomia Veterinária
Camila Raineri	Patologia Geral Veterinária
Ana Luísa Neves Alvarenga Dias	Patologia Especial Veterinária
Elenice Maria Casartelli	Anatomia dos Animais Domésticos
Alcino Eduardo Bonella	Prointer 1
Jairo Dias Carvalho	Filosofia Politica
Rafael Cordeiro Silva	Filosofia Politica */

-- 14 b 
SELECT p.nome, d.nome
FROM professor p 
JOIN ensina e ON p.id = e.id_prof
JOIN turma t ON e.id_turma = t.id
JOIN disciplina d ON t.cod_disc = d.codigo
WHERE t.ano = 2025
AND t.semestre = 1;

/* Amadeu Martins Carvalho	Saúde Coletiva V
Eliane da Silva Morgado	Deontologia e Bioética
Ana Luísa Neves Alvarenga Dias	Patologia Especial Veterinária
Abadia Gilda Buso Matoso	Saúde Coletiva I
Aércio Sebastião Borges	Saúde Coletiva II
Alessandra Carla Ribeiro	Saúde Coletiva III
Almir Fernando Fontes	Saúde Coletiva IV
Carina Ubirajara de Faria	Fundamentos de Anatomia Veterinária
Elenice Maria Casartelli	Anatomia dos Animais Domésticos
Camila Raineri	Patologia Geral Veterinária */

-- 14 c 
SELECT d.nome
FROM disciplina d
JOIN turma t ON t.cod_disc = d.codigo
JOIN sala s ON t.predio_s = s.predio
AND t.n_sala = s.numero
WHERE s.capacidade > 10;

/* Algoritimos e Programação I
Banco de Dados II
Programação Procedimental
Introdução à Engenharia Elétrica
Algoritimos e Programação II
Instalações Elétricas
Eletromagnetismo
Banco de Dados II
Banco de Dados I
Fundamentos de Anatomia Veterinária
Patologia Especial Veterinária
Patologia Geral Veterinária
Deontologia e Bioética
Anatomia dos Animais Domésticos
Experimental de Circuitos Elétricos II
Cálculo Diferencial e Integral 2
Teoria dos Números
Análise Real
Fundamentos de Administração
Análise de Dados II
Cálculo Diferencial e Integral 3
Cálculo Diferencial e Integral 1
Cálculo Diferencial e Integral 1
Álgebra Linear
Estudos clanomessicos - Latim I
Estudos Classicos - Latim II
Estudo da Linguagem I
Teoria da Literatura I
Lingua Espanhola
Prointer 1 */

-- 14 d 
SELECT e.nome as aluno, f.nome as faculdade, p.nome as tutor
FROM estudante e
JOIN professor p ON e.tutor = p.id
JOIN faculdade f ON p.fac_prof = f.sigla;

/* Caio Canedo Borges	Faculdade de Engenharia Eletrica	Aídson Antônio de Paula
Guilherme Zanzoti de Sousa Barbosa	Faculdade de Engenharia Eletrica	Aídson Antônio de Paula
Lucas Pinheiro Barbosa	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Ianny Carolina Mendes Pereira	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Matheus Gualter Silva Resende	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
João Vitor Souza Vilela	Faculdade de Medicina Veterinária	Elenice Maria Casartelli
Yasmin Pierazo Amaral	Faculdade de Medicina Veterinária	Camila Raineri
Frank Targa	Faculdade de Computação	Bruno Travençolo
Eduardo Lopes Valério	Faculdade de Computação	Elaine Faria
Ricky William	Faculdade de Computação	Daniel Abdala
Leonardo di Caprio Gonçalves de Oliveira	Faculdade de Computação	João Maratona
Jack Black da Silva	Faculdade de Computação	Bruno Travençolo
Fabricio	Faculdade de Medicina	Abadia Gilda Buso Matoso
WendelL	Faculdade de Medicina	Aércio Sebastião Borges
Ana	Faculdade de Medicina	Amadeu Martins Carvalho
Lucas	Faculdade de Medicina	Almir Fernando Fontes
Juliana	Faculdade de Medicina	Alessandra Carla Ribeiro
Harry Styles	Instituto de Ciências Biomédicas	Disney Oliver Sívieri Júnior
Jessyca Teodoro	Instituto de Ciências Biomédicas	Bellisa de Freitas Barbosa
Paulo Daniel Forti da Fonseca	Instituto de Letras e Linguisticas	Adriana Cristina Cristianini
Pedro Henrique Lopes Duarte	Instituto de Letras e Linguisticas	Alessandra Montera Rotta
Marcelo Gabriel Santos	Instituto de Letras e Linguisticas	Ana Maria Donnard
Maria Eduarda Silva	Faculdade de Medicina Veterinária	Ana Luísa Neves Alvarenga Dias
Clovis de Barros	Instituto de Filosofia	Alcino Eduardo Bonella
Eneas Carneiro	Instituto de Filosofia	Alcino Eduardo Bonella
Lucas Henrique Ferreira	Faculdade de Medicina Veterinária	Carina Ubirajara de Faria
Rafael Augusto Mendes	Faculdade de Medicina Veterinária	Eliane da Silva Morgado
Joabe Guimarães	Faculdade de Matemática	Aurélia Aparecida de Araújo Rodrigues
João Paulo Nunes	Faculdade de Matemática	Camila Mariana Ruiz
Marcos Antônio da Silva	Faculdade de Gestão e Negócios	Vivian Duarte Couto Fernandes */

-- 14 e 

SELECT *
FROM turma t
JOIN sala s ON t.predio_s = s.predio
AND t.n_sala = s.numero;

/*1	PR	1	2025	80031101	2O	1	2O	1	60
2	PR	1	2025	80031201	2O	2	2O	2	65
3	PR	1	2025	80031301	2H	16	2H	16	75
4	PR	1	2025	80031401	2H	16	2H	16	75
5	EX	1	2025	80031501	2H	16	2H	16	75
25	PR	2	2019	FACOM114	1B	103	1B	103	75
27	EX	1	2020	FACOM113	1B	102	1B	102	80
28	EX	2	2020	FACOM112	1B	102	1B	102	80
30	EX	1	2021	FACOM112	1B	200	1B	200	60
31	EX	2	2021	FACOM111	1B	2002	1B	2002	90
191	EX	2	2024	I31106	8C	306	8C	306	55
194	PR	2	2024	I31209	8C	309	8C	309	70
195	PR	2	2024	I31210	8C	321	8C	321	85
201	PR	1	2024	I31106	8C	308	8C	308	80
202	PR	1	2024	I31109	8C	125	8C	125	90
203	PR	1	2024	I3108	2B	236	2B	236	60
222	EX	2	2024	FAMAT101	1F	302	1F	302	90
223	PR	2	2024	FAMAT101	1F	302	1F	302	90
224	PR	2	2024	FAMAT201	1F	102	1F	102	60
225	PR	2	2024	FAMAT203	1F	202	1F	202	75
226	PR	2	2024	FAMAT205	1F	302	1F	302	90
227	PR	2	2024	FAMAT523	1F	102	1F	102	60
228	PR	2	2024	FAMAT634	1F	102	1F	102	60
610	PR	1	2024	FADIR31103	3D	101	3D	101	55
611	EX	1	2024	FADIR31103	3D	102	3D	102	70
612	PR	1	2024	FADIR31104	3D	101	3D	101	55
613	PR	1	2024	FADIR31105	3D	102	3D	102	70
614	PR	2	2024	FADIR31204	3D	103	3D	103	85
615	PR	2	2024	FADIR31203	3D	103	3D	103	85
1100	PR	2	2024	FEELT31404	1E	1	1E	1	60 */

-- 14 f 
ALTER TABLE professor ADD COLUMN datanasc DATE;
UPDATE professor
SET datanasc = DATE_ADD('1960-01-01', INTERVAL FLOOR(RAND() * 11323) DAY); -- insere uma data de nascimento aletoria entre 1960 e 1990 (11323 é o numero de dias entre essas duas datas)
SELECT p.nome AS Professor, p.datanasc, TIMESTAMPDIFF(YEAR, p.datanasc, CURDATE()) as idade, e.nome as estudante, e.datanasc
FROM estudante e
JOIN professor p  ON TIMESTAMPDIFF(YEAR, p.datanasc, CURDATE()) = TIMESTAMPDIFF(YEAR, e.datanasc, CURDATE()) ;
/*
Elaine Faria	1990-04-23	34	Lucas	1990-11-30
Luciano Coutinho Gomes	1987-11-10	37	Leonor Sousa Pereira	1987-07-10
Ana Luísa Neves Alvarenga Dias	1990-11-04	34	Lucas	1990-11-30
Alexander Gaiotto Miyoshi	1988-01-19	37	Leonor Sousa Pereira	1987-07-10
Ariádine Cristine de Almeida	1990-08-23	34	Lucas	1990-11-30
Diana Salles Sampaio	1988-04-03	37	Leonor Sousa Pereira	1987-07-10
Marcelo de Oliveira Gonzaga	1983-12-15	41	WendelL	1983-06-21
Paulo Eugenio Alves Macedo de Oliveira	1988-02-04	37	Leonor Sousa Pereira	1987-07-10
Viviane Rodrigues Alves de Moraes	1984-02-02	41	WendelL	1983-06-21
Carmen Lucia Hernandes Agustini	1983-06-07	41	WendelL	1983-06-21
Aurélia Aparecida de Araújo Rodrigues	1988-03-10	37	Leonor Sousa Pereira	1987-07-10
Alonso Sepúlveda Castellanos	1990-06-02	34	Lucas	1990-11-30
José Roberto Tozoni	1983-07-27	41	WendelL	1983-06-21
Mauricio Foschini	1983-07-29	41	WendelL	1983-06-21 */

-- 14 g
SELECT p.nome AS professor, TIMESTAMPDIFF(YEAR, p.datanasc, CURDATE()) AS prof_idade, e.nome AS estudante, TIMESTAMPDIFF(YEAR, e.datanasc, CURDATE()) AS est_idade
FROM professor p
JOIN estudante e 
ON TIMESTAMPDIFF(YEAR, p.datanasc, CURDATE()) <> TIMESTAMPDIFF(YEAR, e.datanasc, CURDATE())
/* Bruno Travençolo	38	Paulo Daniel Forti da Fonseca	19
Bruno Travençolo	38	Jessyca Teodoro	22
Bruno Travençolo	38	Aghata Nunes	23
Bruno Travençolo	38	Rodrigo Souza	21
Bruno Travençolo	38	Harry Styles	31
Bruno Travençolo	38	Oliver Rossini	21
Bruno Travençolo	38	Juliana	29
Bruno Travençolo	38	Lucas	34
Bruno Travençolo	38	Ana	27
Bruno Travençolo	38	WendelL	41
Bruno Travençolo	38	Fabricio	27
Bruno Travençolo	38	Jack Black da Silva	20
Bruno Travençolo	38	Leonardo di Caprio Gonçalves de Oliveira	25
Bruno Travençolo	38	Ricky William	74
Bruno Travençolo	38	Eduardo Lopes Valério	20
Bruno Travençolo	38	Frank Targa	20
Bruno Travençolo	38	Yasmin Pierazo Amaral	22
Bruno Travençolo	38	João Vitor Souza Vilela	22
Bruno Travençolo	38	Matheus Gualter Silva Resende	29
Bruno Travençolo	38	Ianny Carolina Mendes Pereira	29
Bruno Travençolo	38	Lucas Pinheiro Barbosa	29
Bruno Travençolo	38	Guilherme Zanzoti de Sousa Barbosa	29
Bruno Travençolo	38	Caio Canedo Borges	29
Daniel Abdala	55	Juliana Almeida	18
Daniel Abdala	55	Pedro Santos	21
Daniel Abdala	55	Ana Costa	19
Daniel Abdala	55	Carlos Oliveira	20
Daniel Abdala	55	Mariana Silva	19
Daniel Abdala	55	Anna Alves Azevedo	24
Daniel Abdala	55	Igor Silva Santos	33 */

-- 15 a 
SELECT d.nome AS nome_disciplina, dp.nome AS nome_prereq
FROM disciplina d
JOIN pre_requisito pr ON d.codigo = pr.cod_disc
JOIN disciplina dp ON pr.cod_pre = dp.codigo;
/* Saúde Coletiva II	Saúde Coletiva I
Saúde Coletiva III	Saúde Coletiva II
Filosofia do Direito	Teoria do Direito
História do Direito	Teoria do Direito
Cálculo Diferencial e Integral 2	Cálculo Diferencial e Integral 1
Cálculo Diferencial e Integral 3	Cálculo Diferencial e Integral 2
Anatomia dos Animais Domésticos	Fundamentos de Anatomia Veterinária
Fundamentos de Anatomia Veterinária	Patologia Especial Veterinária
Experimental de Circuitos Elétricos II	Programação Procedimental
Programação Procedimental	Instalações Elétricas
Eletrônica de Potência	Máquinas Elétricas
Transmissão de Energia Elétrica	Máquinas Elétricas
Física Básica II	Física Básica I
Laboratório de Física Básica II	Laboratório de Física Básica I
Física Básica III	Física Básica II
Laboratório de Física Básica III	Laboratório de Física Básica II
Física Básica IV	Física Básica III
Eletromagnetismo I	Física Básica III
Laboratório de Física Moderna I	Laboratório de Física Básica IV
Métodos da Física Teórica II	Métodos da Física Teórica I
Arte no Brasil	Processos Graficos
Aquarela	Tópicos Especiais em História, Teoria e Crítica da Arte
Prointer 2	Prointer 1
Lingua Francesa 1	Lingua Francesa 2
Sistemática de Fanerógamas	Sistemática de Criptógamas
Metazoários III	Metazoários II
Fisiologia Vegetal	Anatomia Vegetal
Metazoários IV	Metazoários III
Ecologia Geral	Ecologia de Populações */

-- 15 b 

SELECT d.nome
FROM disciplina d
JOIN pre_requisito pr ON d.codigo = pr.cod_disc
JOIN disciplina pd ON pr.cod_pre = pd.codigo
WHERE (d.ch /4) > (pd.ch /4);

/* Anatomia dos Animais Domésticos
Programação Procedimental
Laboratório de Física Básica III
Arte no Brasil
Fisiologia Vegetal */

-- 15 c 
SELECT DISTINCT d.nome 
FROM disciplina d
JOIN pre_requisito pr ON d.codigo = pr.cod_disc
JOIN disciplina pd ON pr.cod_pre = pd.codigo
WHERE d.fac_disc <> pd.fac_disc;

INSERT INTO disciplina VALUES (9999, 'Arquitetura e Oganização de Computadores', 'FACOM', 90),
(9998, 'Sistemas Digitais', 'FEELT', 90); 
INSERT INTO pre_requisito VALUES (9999, 9998);

-- Arquitetura e Oganização de Computadores

-- 15 d 
SELECT e.nome AS Aluno, f.nome AS Faculdade, p.nome AS Tutor
FROM estudante e
JOIN faculdade f ON e.fac_est = f.sigla
JOIN professor p ON e.tutor = p.id;
/*Frank Targa	Faculdade de Computação	Bruno Travençolo
Eduardo Lopes Valério	Faculdade de Computação	Elaine Faria
Ricky William	Faculdade de Computação	Daniel Abdala
Leonardo di Caprio Gonçalves de Oliveira	Faculdade de Computação	João Maratona
Jack Black da Silva	Faculdade de Computação	Bruno Travençolo
Marcos Antônio da Silva	Faculdade de Computação	Vivian Duarte Couto Fernandes
João Roberto Cardini	Faculdade de Computação	Ananda Silva Singh De Carli
Felipe Sardene Duarte	Faculdade de Computação	Andrea Costa Van Herk Vasconcelos
Calipso Santos Joelma	Faculdade de Computação	André Francisco Alcântara Fagundes
Eduardo Santos Lima	Faculdade de Computação	Andrea Costa Van Herk Vasconcelos
Carlos Oliveira	Faculdade de Direito	Carlos José Cordeiro
Ana Costa	Faculdade de Direito	Flávia Cunha Rios Naves
Joabe Guimarães	Faculdade de Matemática	Aurélia Aparecida de Araújo Rodrigues
João Paulo Nunes	Faculdade de Matemática	Camila Mariana Ruiz
Fabricio	Faculdade de Medicina	Abadia Gilda Buso Matoso
WendelL	Faculdade de Medicina	Aércio Sebastião Borges
Ana	Faculdade de Medicina	Amadeu Martins Carvalho
Lucas	Faculdade de Medicina	Almir Fernando Fontes
Juliana	Faculdade de Medicina	Alessandra Carla Ribeiro
João Vitor Souza Vilela	Faculdade de Medicina Veterinária	Elenice Maria Casartelli
Yasmin Pierazo Amaral	Faculdade de Medicina Veterinária	Camila Raineri
Maria Eduarda Silva	Faculdade de Medicina Veterinária	Ana Luísa Neves Alvarenga Dias
Lucas Henrique Ferreira	Faculdade de Medicina Veterinária	Carina Ubirajara de Faria
Rafael Augusto Mendes	Faculdade de Medicina Veterinária	Eliane da Silva Morgado
Caio Canedo Borges	Faculdade de Engenharia Eletrica	Aídson Antônio de Paula
Guilherme Zanzoti de Sousa Barbosa	Faculdade de Engenharia Eletrica	Aídson Antônio de Paula
Lucas Pinheiro Barbosa	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Ianny Carolina Mendes Pereira	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Matheus Gualter Silva Resende	Faculdade de Engenharia Eletrica	Augusto Wohlgemuth Fleury Veloso da Silveira
Harry Styles	Instituto de Ciências Biomédicas	Disney Oliver Sívieri Júnior
Jessyca Teodoro	Instituto de Ciências Biomédicas	Bellisa de Freitas Barbosa
Clovis de Barros	Instituto de Filosofia	Alcino Eduardo Bonella
Eneas Carneiro	Instituto de Filosofia	Alcino Eduardo Bonella*/

-- 15 e
SELECT DISTINCT e.nome AS estudante
FROM estudante e
JOIN faculdade f_aluno ON e.fac_est = f_aluno.sigla
JOIN professor p ON e.tutor = p.id
JOIN faculdade f_prof ON p.fac_prof = f_prof.sigla
WHERE f_aluno.sigla<> f_prof.sigla;

/* Marcos Antônio da Silva
João Roberto Cardini
Felipe Sardene Duarte
Calipso Santos Joelma
Eduardo Santos Lima*/


-- 15 f 
SELECT DISTINCT e.nome 
FROM estudante e
JOIN frequenta f ON e.id = f.id_est
JOIN turma t ON f.id_turma = t.id
JOIN disciplina d ON t.cod_disc = d.codigo
WHERE e.fac_est <> d.fac_disc;

INSERT INTO estudante VALUES (99999, 'Joao da Silva de Jesus', '1990-11-30','FAMED', 78,  '804'),
(99998, 'Maria da Silva Joana','1995-04-15',  'FEELT',  85.0,  '1100');

INSERT INTO frequenta VALUES (99999, 1411, NULL),
(99998, 1413, NULL);

/*Joao da Silva de Jesus
Maria da Silva Joana*/


-- 15 e 
SELECT e.nome AS Estudante, d.nome AS Disciplina
FROM estudante e
JOIN frequenta f ON e.id = f.id_est
JOIN turma t ON f.id_turma = t.id
JOIN disciplina d ON t.cod_disc = d.codigo;

/*Fabricio	Saúde Coletiva I
WendelL	Saúde Coletiva I
Juliana	Saúde Coletiva I
Ana	Saúde Coletiva II
Lucas	Saúde Coletiva III
Frank Targa	Algoritimos e Programação II
Eduardo Lopes Valério	Algoritimos e Programação I
Leonardo di Caprio Gonçalves de Oliveira	Banco de Dados II
Jack Black da Silva	Banco de Dados I
Lucas Silva Figueiredo	Cálculo Diferencial e Integral 1
Maurício Braga	Cálculo Diferencial e Integral 1
João Paulo Nunes	Cálculo Diferencial e Integral 2
Joabe Guimarães	Cálculo Diferencial e Integral 3
Pedro Lucas Oliveira Borges	Álgebra Linear
Mariana Silva	Metodologia e Epistemologia Jurídica
Carlos Oliveira	Metodologia e Epistemologia Jurídica
Ana Costa	Teoria do Direito
Pedro Santos	Teoria do Estado e Democracia
Juliana Almeida	História do Direito
Caio Canedo Borges	Experimental de Circuitos Elétricos II
Guilherme Zanzoti de Sousa Barbosa	Programação Procedimental
Lucas Pinheiro Barbosa	Instalações Elétricas
Guilherme Zanzoti de Sousa Barbosa	Introdução à Engenharia Elétrica
Ianny Carolina Mendes Pereira	Introdução à Engenharia Elétrica
Lucas Pinheiro Barbosa	Eletromagnetismo
Matheus Gualter Silva Resende	Eletrônica de Potência
Ianny Carolina Mendes Pereira	Transmissão de Energia Elétrica
Matheus Gualter Silva Resende	Transmissão de Energia Elétrica
Rafael Augusto Mendes	Deontologia e Bioética
Maria Eduarda Silva	Fundamentos de Anatomia Veterinária
João Vitor Souza Vilela	Patologia Geral Veterinária
Yasmin Pierazo Amaral	Patologia Especial Veterinária
Lucas Henrique Ferreira	Anatomia dos Animais Domésticos */

-- 16 a

SELECT d.nome
FROM disciplina d
WHERE d.codigo NOT IN (SELECT cod_disc FROM pre_requisito);
/* Saúde Coletiva I
Saúde Coletiva IV
Saúde Coletiva V
Sistemas Digitais
Banco de Dados I
Banco de Dados II
Algoritimos e Programação I
Algoritimos e Programação II
Programação Orientada a Objeto
Metodologia e Epistemologia Jurídica
Teoria do Direito
Teoria do Estado e Democracia
Análise de Dados I
Fundamentos de Administração
Faculdade de Gestão e Negócios
Dados e Informações Financeiras I
Comportamento Organizacional
Comportamento do Consumidor
Análise de Dados II
Análise de Dados III
Cálculo Diferencial e Integral 1
Álgebra Linear
Teoria dos Números
Análise Real
Deontologia e Bioética
Patologia Geral Veterinária
Patologia Especial Veterinária
programação script 
Introdução à Engenharia Elétrica
Circuitos Elétricos I
Experimental de Circuitos Elétricos I
Eletromagnetismo
Instalações Elétricas
Máquinas Elétricas
Física Básica I
Laboratório de Física Básica I
Laboratório de Física Básica IV
Física Moderna
Termodinâmica
Eletromagnetismo II
Métodos da Física Teórica I
Tópicos de Física Contemporânea
Biologia Celular
Anatomia Humana
Biossegurança
Biofísica Celular e de Sistemas
Histologia Básica e de Sistemas
Processos Graficos
Topicos especiais em fotografia
Tópicos Especiais em História, Teoria e Crítica da Arte
Prointer 1
Filosofia Politica
Estudo da Linguagem I
Teoria da Literatura I
Estudos clanomessicos - Latim I
Lingua Espanhola */

-- 16 b

SELECT d.nome
FROM disciplina d
WHERE d.codigo IN (SELECT cod_pre FROM pre_requisito);
/* Saúde Coletiva I
Saúde Coletiva II
Sistemas Digitais
Teoria do Direito
Cálculo Diferencial e Integral 1
Cálculo Diferencial e Integral 2
Fundamentos de Anatomia Veterinária
Patologia Especial Veterinária
Programação Procedimental
Instalações Elétricas
Máquinas Elétricas
Física Básica I
Laboratório de Física Básica I
Física Básica II
Laboratório de Física Básica II
Física Básica III
Laboratório de Física Básica IV
Métodos da Física Teórica I
Processos Graficos
Tópicos Especiais em História, Teoria e Crítica da Arte
Prointer 1
Lingua Francesa 2
Sistemática de Criptógamas
Metazoários II
Anatomia Vegetal
Metazoários III
Ecologia de Populações */

-- 16 c
SELECT d.nome
FROM disciplina d
WHERE d.codigo NOT IN (SELECT cod_pre FROM pre_requisito);
/*Saúde Coletiva III
Saúde Coletiva IV
Saúde Coletiva V
Arquitetura e Oganização de Computadores
Banco de Dados I
Banco de Dados II
Algoritimos e Programação I
Algoritimos e Programação II
Programação Orientada a Objeto
Metodologia e Epistemologia Jurídica
Teoria do Estado e Democracia
Filosofia do Direito
História do Direito
Análise de Dados I
Fundamentos de Administração
Faculdade de Gestão e Negócios
Dados e Informações Financeiras I
Comportamento Organizacional
Comportamento do Consumidor
Análise de Dados II
Análise de Dados III
Cálculo Diferencial e Integral 3
Álgebra Linear
Teoria dos Números
Análise Real
Deontologia e Bioética
Anatomia dos Animais Domésticos
Patologia Geral Veterinária
programação script 
Introdução à Engenharia Elétrica
Circuitos Elétricos I
Experimental de Circuitos Elétricos I
Experimental de Circuitos Elétricos II
Eletromagnetismo
Eletrônica de Potência
Transmissão de Energia Elétrica
Laboratório de Física Básica III
Física Básica IV
Física Moderna
Laboratório de Física Moderna I
Eletromagnetismo I
Termodinâmica
Eletromagnetismo II
Tópicos de Física Contemporânea
Métodos da Física Teórica II
Biologia Celular */

-- 16 d 
SELECT e.nome
FROM estudante e 
WHERE e.id NOT IN (SELECT id_est FROM frequenta);
/* Ricky William
Oliver Rossini
Harry Styles
Rodrigo Souza
Aghata Nunes
Jessyca Teodoro
Marcos Antônio da Silva
João Roberto Cardini
Felipe Sardene Duarte
Calipso Santos Joelma
Eduardo Santos Lima
Guilherme Costa Cunha
Isabela Carvalho Correia
Leonor Sousa Pereira
Tiago Ribeiro Barros
Emily Cardoso Souza
Carla Correia Rocha
Rafaela Ribeiro Dias
Júlio Melo Ribeiro
Igor Silva Santos
Anna Alves Azevedo */

-- 16 e
SELECT DISTINCT t.predio_s, t.n_sala
FROM turma t
WHERE(t.predio_s, t.n_sala) NOT IN (SELECT predio_s, n_sala FROM turma JOIN horario_aula ON id = id_turma);

/* 1BCG	101
1BCG	102
1BCG	103
1F	202
1F	302
2B	236
2H	16
2O	1
2O	2
3M	1630
3M	1631
3M	1632
8C	125
8C	306
8C	308
8C	309
8C	321 */

-- 16 f

SELECT nome, admissao
FROM professor
WHERE id NOT IN (SELECT id_prof FROM ensina);
/* Bruno Travençolo	1998-01-01
Daniel Abdala	1998-01-01
Elaine Faria	1998-01-01
João Maratona	1998-01-01
José Henrique	1998-01-01
Augusto Wohlgemuth Fleury Veloso da Silveira	1984-03-21
Bárbara Morais Gianesini	1984-03-21
Carlos Eduardo Tavares	1984-03-21
Lorenço Santos Vasconcelos	1984-03-21
Luciano Coutinho Gomes	1984-03-21
Luiz Carlos Gomes de Freitas	1984-03-21
Jose Rubens Macedo Junior	1984-03-21
Alan Nilo da Costa	2018-02-27
Ana Elizabeth Iannini Custódio	2008-10-30
Ana Sílvia Franco Pinheiro Moreira	2010-07-08
André Nemésio de Barros Pereira	2010-08-03
Andre Rosalvo Terra Nascimento	2007-01-09
Ariádine Cristine de Almeida	2013-01-02
Cassiano Aimberê Dorneles Welker	2016-06-07
Celine de Melo	2005-08-05
Daniela Franco Carvalho	2008-09-26
Danilo Marques	2023-05-16
Denis Coelho Oliveira	2011-02-17
Diana Salles Sampaio	2013-10-01
Fátima Aparecida Arcanjo	2024-11-19
Fernanda Helena Nogueira-Ferreira	2006-08-07
Flávio Popazoglo	2009-07-24
Francielle Amâncio Pereira	2009-03-04
Giuliano Buzá Jacobucci	2005-08-05
Helena Maura Torezan Silingardi	2009-08-07
Heraldo Luis de Vasconcelos	2002-05-10
Jeamylle Nilin Gonçalves	2019-02-28
Jimi Naoki Nakajima	1992-01-01 */

-- 16 g 
SELECT nome, admissao
FROM professor
WHERE id NOT IN 
(SELECT e.id_prof 
FROM ensina e 
JOIN turma t ON e.id_turma = t.id 
WHERE t.ano = 2025 AND t.semestre = 1);

/*Bruno Travençolo	1998-01-01
Daniel Abdala	1998-01-01
Elaine Faria	1998-01-01
João Maratona	1998-01-01
José Henrique	1998-01-01
Aídson Antônio de Paula	1984-03-21
Augusto Wohlgemuth Fleury Veloso da Silveira	1984-03-21
Bárbara Morais Gianesini	1984-03-21
Carlos Eduardo Tavares	1984-03-21
Lorenço Santos Vasconcelos	1984-03-21
Luciano Coutinho Gomes	1984-03-21
Luiz Carlos Gomes de Freitas	1984-03-21
Jose Rubens Macedo Junior	1984-03-21
Cláudio Vieira da Sulva	2008-10-30
Bellisa de Freitas Barbosa	2012-10-11
Claudemir Kuhn Faccioli	2016-01-26
Disney Oliver Sívieri Júnior	2019-01-01
Alcino Eduardo Bonella	2016-03-04
Jairo Dias Carvalho	2003-02-05
Rafael Cordeiro Silva	1993-02-07
Humberto Aparecido de Oliveira Guido	1997-03-10
Fillipa Carneiro Silveira	2016-03-20
Alexander Gaiotto Miyoshi	2009-10-02
Alexandre José Molina	2008-10-06 */

-- 16 h
SELECT t.id
FROM turma t
WHERE t.id NOT IN 
(SELECT ha.id_turma
FROM horario_aula ha);

/* 1301
1303
1302
1300
1304
224
227
228
225
222
223
226
203
3
4
5
1
2
615
1610
1613
1611
1614
1612
202
191
201
194
195 */

-- 16 i 
SELECT *
FROM horario h
WHERE h.id_hora NOT IN 
(SELECT ha.id_hora
FROM horario_aula ha);

/* l	18:10:00	19:00:00
n	19:50:00	20:40:00
o	20:50:00	21:40:00 */

-- 17 a 
SELECT COUNT(*) AS NumeroDeEstudantes
FROM estudante;
-- 67

-- 17 b 
SELECT DISTINCT COUNT(*) AS NumeroDeMatriculas
FROM frequenta;
-- 50

-- 17 c 
SELECT *
FROM estudante, frequenta;

/* 1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	99999	1411	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	99998	1413	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	609	614	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	608	613	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	607	612	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	606	611	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	605	610	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	204	224	28
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	203	225	19
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	202	223	22
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	201	226	12
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	200	222	30
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1609	1614	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1608	1613	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1607	1612	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1606	1611	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1605	1610	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	15987VET369	1300	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	14231VET157	1304	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1409	1414	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1408	1413	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1407	1412	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1406	1411	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1405	1410	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	13045VET002	1301	 */

-- 17 d
SELECT COUNT(*) AS NumeroTuplas
FROM frequenta, estudante;
-- o resultado foi 3350, pois o produto carteziano retorna o produto do número de tuplas de frequenta com o de estudante
-- como também pode ser mostrado no select a seguir
SELECT 67 * 50 as RESULT;


-- 17 e 
SELECT *
FROM estudante
CROSS JOIN frequenta;

/* 1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	99999	1411	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	99998	1413	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	609	614	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	608	613	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	607	612	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	606	611	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	605	610	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	204	224	28
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	203	225	19
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	202	223	22
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	201	226	12
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	200	222	30
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1609	1614	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1608	1613	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1607	1612	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1606	1611	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1605	1610	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	15987VET369	1300	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	14231VET157	1304	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1409	1414	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1408	1413	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1407	1412	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1406	1411	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1405	1410	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	13045VET002	1301	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311IL1912	1917	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311IL1911	1916	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311IL1910	1915	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311IL1909	1914	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311IL1908	1913	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311FAMED5	1	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311FAMED4	3	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311FAMED3	2	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311FAMED2	1	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12311FAMED1	1	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12221bsi218	31	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12221bsi217	30	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12221bsi215	27	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12221bsi214	25	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12211VET285	1303	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	12121VET231	1302	
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1104	1108	75
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1104	1107	75
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1103	1108	75
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1103	1104	75
1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100	1102	1105	75 */

-- 17 f 
SELECT *
FROM estudante, frequenta, disciplina, turma;

-- 21527100 row(s) returned	0.172 sec / 24.391 sec
