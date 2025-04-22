--1) Consultas simples usando SELECT 
    SELECT 2+2
		--r: 4

	SELECT 'A'
		--r: A

	SELECT 50 > 3
		--r: 1

	SELECT '11/10/2020'
		--r: 11/10/2020

	SELECT '11/10/2020' - '11/10/2030' -- é possível esse comando?
		--r: foi possivel e retornou 0 (executado no MySQL)
	
	
--2) Consultas simples usando SELECT e renomeando colunas
    	SELECT 2+2 AS soma
		--r: 4 (com o nome da tabela como 'soma')

	SELECT 'A' as letra
		--r: A (com o nome da tabela como 'letra')

	SELECT 50 > 3 as resultado
		--r: 1 (como o nome da tabela como 'resultado')

	SELECT '11/10/2020' as dia -- qual o tipo retornado?
		--r: 11/10/2020 (tipo varchar)
	


--3) Consultas usando SELECT * FROM usando uma tabela do banco
     --- (a) Listar todos os alunos da universidade
		--r: SELECT * FROM estudante;
				1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100
				1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	90	1100
				1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	90	1101
				1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	90	1101
				1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	90	1101
				12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
				12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
				12221bsi214	Frank Targa	2004-12-19	FACOM	68	1000
				12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	69	1002
				12221bsi216	Ricky William	1950-06-09	FACOM	72	1001
				12221bsi217	Leonardo di Caprio Gonçalves de Oliveira	2000-01-10	FACOM	45	1003
				12221bsi218	Jack Black da Silva	2005-02-27	FACOM	90	1000
				12311FAMED1	Fabricio	1997-10-22	FAMED	90	801
				12311FAMED2	WendelL	1983-06-21	FAMED	60	802
				12311FAMED3	Ana	1998-03-10	FAMED	92	805
				12311FAMED4	Lucas	1990-11-30	FAMED	78	804
				12311FAMED5	Juliana	1995-04-15	FAMED	85	803
				12311ICB145	Oliver Rossini	2004-02-15	ICBIM	95	
				12311ICB207	Harry Styles	1994-02-01	ICBIM	90	12345678900
				12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	83	NULL
				12311ICB267	Aghata Nunes	2001-11-16	ICBIM	85.7	NULL
				12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	90	12300456789
				12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	90	1903
				12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	85	1904
				12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	95	NULL
				12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	80	1905
				12311IL1912	Marcos Antonio	2001-02-07	ILEEL	87	NULL
				13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	68.73	1300
				1405	Adalberto Branch Filho	2002-09-10	IFILO	60	NULL
				1406	Cleiton Rasta Silva	2002-09-10	IFILO	61	NULL
			
     --- (b) Listar todos as salas cadastradas
		--r: SELECT * FROM sala;
				1A	1	90
				1A	2	85
				1A	3	70
				1A	4	80
				1A	5	50
				1A	6	60
				1A	7	65
				1A	8	70
				1A	9	80
				1B	102	80
				1B	103	75
				1B	110	40
				1B	112	40
				1B	200	60
				1B	2001	30
				1B	2002	90
				1BCG	101	70
				1BCG	102	70
				1BCG	103	70
				1E	1	60
				1F	102	60
				1F	112	55
				1F	202	75
				1F	302	90
				1G	1900	55
				1G	1901	70
				1G	1902	85
				1U	121	85
				2B	236	60
				2H	16	75
     --- (c) Listar todas as disciplinas
		--r:SELECT * FROM disciplina;
				80031101	Saúde Coletiva I	FAMED	150
				80031201	Saúde Coletiva II	FAMED	150
				80031301	Saúde Coletiva III	FAMED	150
				80031401	Saúde Coletiva IV	FAMED	60
				80031501	Saúde Coletiva V	FAMED	60
				FACOM111	Banco de Dados I	FACOM	64
				FACOM112	Banco de Dados II	FACOM	64
				FACOM113	Algoritimos e Programação I	FACOM	64
				FACOM114	Algoritimos e Programação II	FACOM	64
				FACOM115	Programação Orientada a Objeto	FACOM	64
				FADIR31103	Metodologia e Epistemologia Jurídica	FADIR	30
				FADIR31104	Teoria do Direito	FADIR	60
				FADIR31105	Teoria do Estado e Democracia	FADIR	60
				FADIR31203	Filosofia do Direito	FADIR	60
				FADIR31204	História do Direito	FADIR	30
				FAGEN32101	Análise de Dados I	FAGEN	60
				FAGEN32102	Fundamentos de Administração	FAGEN	60
				FAGEN32103	Faculdade de Gestão e Negócios	FAGEN	60
				FAGEN32202	Dados e Informações Financeiras I	FAGEN	60
				FAGEN32203	Comportamento Organizacional	FAGEN	60
				FAGEN32204	Comportamento do Consumidor	FAGEN	60
				FAGEN32406	Análise de Dados II	FAGEN	60
				FAGEN32505	Análise de Dados III	FAGEN	60
				FAMAT101	Cálculo Diferencial e Integral 1	FAMAT	90
				FAMAT201	Cálculo Diferencial e Integral 2	FAMAT	90
				FAMAT203	Cálculo Diferencial e Integral 3	FAMAT	90
				FAMAT205	Álgebra Linear	FAMAT	75
				FAMAT523	Teoria dos Números	FAMAT	60
				FAMAT634	Análise Real	FAMAT	60
				FAMEV31102	Deontologia e Bioética	FAMEV	30


--4) Consultas usando SELECT <coluna>  [, ...] FROM
	--- (a) Listar o nome e a data de nascimento de todos os alunos
		r:SELECT nome, datanasc FROM estudante;
			Caio Canedo Borges	1995-04-15
			Guilherme Zanzoti de Sousa Barbosa	1995-04-15
			Lucas Pinheiro Barbosa	1995-04-15
			Ianny Carolina Mendes Pereira	1995-04-15
			Matheus Gualter Silva Resende	1995-04-15
			João Vitor Souza Vilela	2003-01-07
			Yasmin Pierazo Amaral	2002-07-20
			Frank Targa	2004-12-19
			Eduardo Lopes Valério	2004-09-20
			Ricky William	1950-06-09
			Leonardo di Caprio Gonçalves de Oliveira	2000-01-10
			Jack Black da Silva	2005-02-27
			Fabricio	1997-10-22
			WendelL	1983-06-21
			Ana	1998-03-10
			Lucas	1990-11-30
			Juliana	1995-04-15
			Oliver Rossini	2004-02-15
			Harry Styles	1994-02-01
			Rodrigo Souza	2003-07-14
			Aghata Nunes	2001-11-16
			Jessyca Teodoro	2002-10-04
			Paulo Daniel Forti da Fonseca	2005-04-28
			Pedro Henrique Lopes Duarte	1998-10-14
			Joao Pedro Zaneti	2003-06-06
			Marcelo Gabriel Santos	2003-09-09
			Marcos Antonio	2001-02-07
			Maria Eduarda Silva	2001-03-15
			Adalberto Branch Filho	2002-09-10
			Cleiton Rasta Silva	2002-09-10


	--- (b) Listar o nome de todas as faculdades
		r: SELECT nome FROM faculdade;
			Faculdade de Computação
			Faculdade de Direito
			Faculdade de Gestão e Negócios
			Faculdade de Matemática
			Faculdade de Medicina
			Faculdade de Medicina Veterinária
			Faculdade de Engenharia Eletrica
			Instituto de Artes
			Instituto de Ciências Biomédicas
			Instituto de Filosofia
			Instituto de Letras e Linguisticas
			Instituto de Biologia
			Instituto de Física

	--- (c) Listar todas os horários iniciais disponíveis
		r: SELECT * FROM horario;
			a	07:10:00	08:00:00
			b	08:00:00	08:50:00
			c	08:50:00	09:40:00
			d	09:50:00	10:40:00
			e	10:40:00	11:30:00
			f	13:10:00	14:00:00
			g	14:00:00	14:50:00
			h	14:50:00	15:40:00
			i	16:00:00	16:50:00
			j	16:50:00	17:40:00
			k	17:40:00	18:30:00
			l	18:10:00	19:00:00
			m	19:00:00	19:50:00
			n	19:50:00	20:40:00
			o	20:50:00	21:40:00
			p	21:40:00	22:30:00
			q	11:30:00	12:20:00


--5) Consultas com SELECT <coluna> [, ...] AS <novo_nome> FROM
     --- (a) Listar todos os nomes das discicplinas e seus crédios, trocando, no resultado, o crédito
             --- por 'carga'.
			r: SELECT nome, ch as carga FROM disciplina;
				Saúde Coletiva I	150
				Saúde Coletiva II	150
				Saúde Coletiva III	150
				Saúde Coletiva IV	60
				Saúde Coletiva V	60
				Banco de Dados I	64
				Banco de Dados II	64
				Algoritimos e Programação I	64
				Algoritimos e Programação II	64
				Programação Orientada a Objeto	64
				Metodologia e Epistemologia Jurídica	30
				Teoria do Direito	60
				Teoria do Estado e Democracia	60
				Filosofia do Direito	60
				História do Direito	30
				Análise de Dados I	60
				Fundamentos de Administração	60
				Faculdade de Gestão e Negócios	60
				Dados e Informações Financeiras I	60
				Comportamento Organizacional	60
				Comportamento do Consumidor	60
				Análise de Dados II	60
				Análise de Dados III	60
				Cálculo Diferencial e Integral 1	90
				Cálculo Diferencial e Integral 2	90
				Cálculo Diferencial e Integral 3	90
				Álgebra Linear	75
				Teoria dos Números	60
				Análise Real	60
				Deontologia e Bioética	30

     --- (b) Supondo que 15 horas de aula corresponda a 1 crédito. Listar todos os nomes das discicplinas 
	         --- e seus créditos, trocando, no resultado, a carga_horaria  por 'crédito' 
			r: SELECT 	nome, ch/15 as credito FROM disciplina;
				Saúde Coletiva I	10.0000
				Saúde Coletiva II	10.0000
				Saúde Coletiva III	10.0000
				Saúde Coletiva IV	4.0000
				Saúde Coletiva V	4.0000
				Banco de Dados I	4.2667
				Banco de Dados II	4.2667
				Algoritimos e Programação I	4.2667
				Algoritimos e Programação II	4.2667
				Programação Orientada a Objeto	4.2667
				Metodologia e Epistemologia Jurídica	2.0000
				Teoria do Direito	4.0000
				Teoria do Estado e Democracia	4.0000
				Filosofia do Direito	4.0000
				História do Direito	2.0000
				Análise de Dados I	4.0000
				Fundamentos de Administração	4.0000
				Faculdade de Gestão e Negócios	4.0000
				Dados e Informações Financeiras I	4.0000
				Comportamento Organizacional	4.0000
				Comportamento do Consumidor	4.0000
				Análise de Dados II	4.0000
				Análise de Dados III	4.0000
				Cálculo Diferencial e Integral 1	6.0000
				Cálculo Diferencial e Integral 2	6.0000
				Cálculo Diferencial e Integral 3	6.0000
				Álgebra Linear	5.0000
				Teoria dos Números	4.0000
				Análise Real	4.0000
				Deontologia e Bioética	2.0000

     --- (c) Listar todas as faculdades, renomeando as colunas de saída como faculdade(cod,nome_faculdade,local,orcamento)
			r: SELECT sigla as cod, nome as nome_faculdade, predio as 'local' FROM faculdade;
				FACOM	Faculdade de Computação	1B
				FADIR	Faculdade de Direito	3D
				FAGEN	Faculdade de Gestão e Negócios	3Q
				FAMAT	Faculdade de Matemática	1F
				FAMED	Faculdade de Medicina	2U
				FAMEV	Faculdade de Medicina Veterinária	1CCG
				FEELT	Faculdade de Engenharia Eletrica	1E
				IARTE	Instituto de Artes	3E
				ICBIM	Instituto de Ciências Biomédicas	2B
				IFILO	Instituto de Filosofia	1U
				ILEEL	Instituto de Letras e Linguisticas	1G
				INBIO	Instituto de Biologia	1700A
				INFIS	Instituto de Física	1A

	 --- (d) Listar o nome e a idade em anos de todos os estudantes cadastradas no banco
			R: SELECT nome, FLOOR(DATEDIFF(NOW(),datanasc)/365) as idade from estudante;	
				Caio Canedo Borges	29
				Guilherme Zanzoti de Sousa Barbosa	29
				Lucas Pinheiro Barbosa	29
				Ianny Carolina Mendes Pereira	29
				Matheus Gualter Silva Resende	29
				João Vitor Souza Vilela	22
				Yasmin Pierazo Amaral	22
				Frank Targa	20
				Eduardo Lopes Valério	20
				Ricky William	74
				Leonardo di Caprio Gonçalves de Oliveira	25
				Jack Black da Silva	20
				Fabricio	27
				WendelL	41
				Ana	27
				Lucas	34
				Juliana	29
				Oliver Rossini	21
				Harry Styles	31
				Rodrigo Souza	21
				Aghata Nunes	23
				Jessyca Teodoro	22
				Paulo Daniel Forti da Fonseca	19
				Pedro Henrique Lopes Duarte	26
				Joao Pedro Zaneti	21
				Marcelo Gabriel Santos	21
				Marcos Antonio	24
				Maria Eduarda Silva	24
				Adalberto Branch Filho	22
				Cleiton Rasta Silva	22
	 
--6) Consultas com SELECT FROM WHERE - com uma condição de seleção
     --- (a) Listar todos as faculdade localizadas no predio '1F'
		r:SELECT * FROM faculdade WHERE predio =('1F');
			FAMAT	Faculdade de Matemática	1F	235579.00
     --- (b) Listar todas os alunos com CRA superior a 60
		r: SELECT * FROM estudante WHERE cra > 60;
			1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100
			1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	90	1100
			1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	90	1101
			1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	90	1101
			1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	90	1101
			12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
			12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
			12221bsi214	Frank Targa	2004-12-19	FACOM	68	1000
			12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	69	1002
			12221bsi216	Ricky William	1950-06-09	FACOM	72	1001
			12221bsi218	Jack Black da Silva	2005-02-27	FACOM	90	1000
			12311FAMED1	Fabricio	1997-10-22	FAMED	90	801
			12311FAMED3	Ana	1998-03-10	FAMED	92	805
			12311FAMED4	Lucas	1990-11-30	FAMED	78	804
			12311FAMED5	Juliana	1995-04-15	FAMED	85	803
			12311ICB145	Oliver Rossini	2004-02-15	ICBIM	95	
			12311ICB207	Harry Styles	1994-02-01	ICBIM	90	12345678900
			12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	83	
			12311ICB267	Aghata Nunes	2001-11-16	ICBIM	85.7	
			12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	90	12300456789
			12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	90	1903
			12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	85	1904
			12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	95	
			12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	80	1905
			12311IL1912	Marcos Antonio	2001-02-07	ILEEL	87	
			13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	68.73	1300
			1406	Cleiton Rasta Silva	2002-09-10	IFILO	61	
			1407	Clovis de Barros	2002-09-10	IFILO	99	1400
			1408	Olavo de Carvalho	2002-09-10	IFILO	78	
			1409	Eneas Carneiro	2002-09-10	IFILO	100	1400


     --- (c) Listar todas as turmas ofertadas neste semestre  
		r: SELECT *  FROM turma WHERE semestre = 1 AND ano = 2025;
			1	PR	1	2025	80031101	2O	1
			2	PR	1	2025	80031201	2O	2
			3	PR	1	2025	80031301	2H	16
			4	PR	1	2025	80031401	2H	16
			5	EX	1	2025	80031501	2H	16
			1300	EX	1	2025	FAMEV31102	1BCG	103
			1301	PR	1	2025	FAMEV31103	1BCG	101
			1302	PR	1	2025	FAMEV31405	1BCG	102
			1303	EX	1	2025	FAMEV31505	1BCG	101
			1304	PR	1	2025	FAMEV31201	1BCG	103
     --- (d) Mostre o aniversário (somente o dia e mês) de um dos integrantes do seu grupo (escolher um dos nomes)
		r: SELECT  EXTRACT(DAY FROM datanasc) as dia ,EXTRACT(MONTH FROM datanasc) as mes, nome FROM estudante WHERE nome =('Eduardo Lopes Valério');
			20	9	Eduardo Lopes Valério

     --- (e) Listar o nome de todas as disciplinas que começam com a letra “S”
		r:SELECT nome from disciplina where nome LIKE 'S%';
			Saúde Coletiva I
			Saúde Coletiva II
			Saúde Coletiva III
			Saúde Coletiva IV
			Saúde Coletiva V
			Sistemática Biológica
			Sistemática de Criptógamas
			Sistemática de Fanerógamas

     --- (f) Listar todos os estudantes que nasceram últimos 20 anos 
         ---    (essa consulta deve ser genérica – você não deve explicitar nenhuma data)
			r:SELECT * FROM estudante WHERE datanasc <= DATE_SUB(CURDATE(), INTERVAL 20 YEAR);
				1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100
				1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	90	1100
				1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	90	1101
				1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	90	1101
				1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	90	1101
				12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
				12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
				12221bsi214	Frank Targa	2004-12-19	FACOM	68	1000
				12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	69	1002
				12221bsi216	Ricky William	1950-06-09	FACOM	72	1001
				12221bsi217	Leonardo di Caprio Gonçalves de Oliveira	2000-01-10	FACOM	45	1003
				12221bsi218	Jack Black da Silva	2005-02-27	FACOM	90	1000
				12311FAMED1	Fabricio	1997-10-22	FAMED	90	801
				12311FAMED2	WendelL	1983-06-21	FAMED	60	802
				12311FAMED3	Ana	1998-03-10	FAMED	92	805
				12311FAMED4	Lucas	1990-11-30	FAMED	78	804
				12311FAMED5	Juliana	1995-04-15	FAMED	85	803
				12311ICB145	Oliver Rossini	2004-02-15	ICBIM	95	
				12311ICB207	Harry Styles	1994-02-01	ICBIM	90	12345678900
				12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	83	
				12311ICB267	Aghata Nunes	2001-11-16	ICBIM	85.7	
				12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	90	12300456789
				12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	85	1904
				12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	95	
				12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	80	1905
				12311IL1912	Marcos Antonio	2001-02-07	ILEEL	87	
				13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	68.73	1300
				1405	Adalberto Branch Filho	2002-09-10	IFILO	60	
				1406	Cleiton Rasta Silva	2002-09-10	IFILO	61	
				1407	Clovis de Barros	2002-09-10	IFILO	99	1400

     --- (g) Listar todos os estudantes que não possuem tutores
		r: SELECT * FROM estudante WHERE tutor IS NULL;
			12311ICB145	Oliver Rossini	2004-02-15	ICBIM	95	NULL
			12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	83	NULL
			12311ICB267	Aghata Nunes	2001-11-16	ICBIM	85.7	NULL
			12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	95	NULL
			12311IL1912	Marcos Antonio	2001-02-07	ILEEL	87	NULL
			1405	Adalberto Branch Filho	2002-09-10	IFILO	60	NULL
			1406	Cleiton Rasta Silva	2002-09-10	IFILO	61	NULL
			1408	Olavo de Carvalho	2002-09-10	IFILO	78	NULL
			1605	Pedro Henrique Rossetto Natal	2003-11-27	IARTE	90	NULL
			1606	Ygor Gaspar	2002-10-21	IARTE	90	NULL
			1607	Pedro Henrique Peixoto de Miranda	2000-09-02	IARTE	90	NULL
			1608	Clarice Da Silva	1999-08-23	IARTE	87	NULL
			1609	Jõao Pedro Xavier	2004-06-01	IARTE	68	NULL
			200	Lucas Silva Figueiredo	2004-09-09	FAMAT	85	NULL
			201	Pedro Lucas Oliveira Borges	2004-08-11	FAMAT	87	NULL
			202	Maurício Braga	2005-11-23	FAMAT	77	NULL
			605	Mariana Silva	2005-08-12	FADIR	8.7	NULL
			608	Pedro Santos	2003-07-19	FADIR	7.9	NULL
			609	Juliana Almeida	2007-01-14	FADIR	8.1	NULL

	 --- (h) Listar todos os estudantes que possuem tutores 
			r: SELECT * FROM estudante WHERE tutor IS NOT NULL;
				1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100
				1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	90	1100
				1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	90	1101
				1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	90	1101
				1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	90	1101
				12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
				12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
				12221bsi214	Frank Targa	2004-12-19	FACOM	68	1000
				12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	69	1002
				12221bsi216	Ricky William	1950-06-09	FACOM	72	1001
				12221bsi217	Leonardo di Caprio Gonçalves de Oliveira	2000-01-10	FACOM	45	1003
				12221bsi218	Jack Black da Silva	2005-02-27	FACOM	90	1000
				12311FAMED1	Fabricio	1997-10-22	FAMED	90	801
				12311FAMED2	WendelL	1983-06-21	FAMED	60	802
				12311FAMED3	Ana	1998-03-10	FAMED	92	805
				12311FAMED4	Lucas	1990-11-30	FAMED	78	804
				12311FAMED5	Juliana	1995-04-15	FAMED	85	803
				12311ICB207	Harry Styles	1994-02-01	ICBIM	90	12345678900
				12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	90	12300456789
				12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	90	1903
				12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	85	1904
				12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	80	1905
				13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	68.73	1300
				1407	Clovis de Barros	2002-09-10	IFILO	99	1400
				1409	Eneas Carneiro	2002-09-10	IFILO	100	1400
				14231VET157	Lucas Henrique Ferreira	2002-09-10	FAMEV	32.45	1302
				15987VET369	Rafael Augusto Mendes	2000-12-05	FAMEV	78.62	1304
				203	Joabe Guimarães	2004-05-22	FAMAT	92	278
				204	João Paulo Nunes	2005-12-22	FAMAT	62	212
				2105	Marcos Antônio da Silva	2000-05-17	FACOM	55	2100
         --- (i) Listar as turmas ministradas de 2000 até hoje. 
			r:SELECT * FROM turma WHERE ano >= 2000;
				615	PR	2	2024	FADIR31203	3D	103
				1100	PR	2	2024	FEELT31404	1E	1
				1102	EX	2	2024	FEELT31201	1B	102
				1103	EX	2	2024	FEELT31603	1B	110
				1104	EX	2	2024	FEELT31110	1B	102
				1105	PR	2	2024	FEELT31405	1B	112
				1106	PR	2	2024	FEELT31605	5R	207
				1107	PR	2	2024	FEELT31606	5R	202
				1108	EX	2	2024	FEELT31703	5R	300
				1300	EX	1	2025	FAMEV31102	1BCG	103
				1301	PR	1	2025	FAMEV31103	1BCG	101
				1302	PR	1	2025	FAMEV31405	1BCG	102
				1303	EX	1	2025	FAMEV31505	1BCG	101
				1304	PR	1	2025	FAMEV31201	1BCG	103
				1410	PR	2	2024	IFILO31104	1U	121
				1411	PR	2	2024	IFILO31202	5O-A	215
				1412	EX	2	2024	IFILO31202	5O-A	200
				1413	PR	1	2024	ILEEL31111	5O-A	215
				1414	PR	1	2024	IFILO31205	1U	121
				1610	PR	2	2021	IARTE39039	3M	1630
				1611	EX	1	2020	IARTE39040	3M	1631
				1612	PR	2	2022	IARTE32201	3M	1632
				1613	EX	1	2019	IARTE32204	3M	1630
				1614	PR	2	2021	IARTE39010	3M	1631
				1913	EX	1	2021	ILEEL31109	1G	1900
				1914	PR	2	2021	ILEEL31105	1G	1901
				1915	PR	2	2022	ILEEL31122	1G	1902
				1916	EX	1	2023	ILEEL31107	1G	1901
				1917	PR	2	2023	ILEEL31210	1G	1900
				2110	EX	1	2023	FAGEN32102	1F	102
				2111	PR	1	2021	FAGEN32103	5R	110
				2112	PR	4	2022	FAGEN32406	1F	112
				2113	EX	2	2021	FAGEN32203	5R	214
				2114	PR	2	2020	FAGEN32505	5R	216
				2115	PR	1	2021	FAGEN32101	5R	214


	 --- (j) Mostrar os estudantes (nome /datanasc) que nasceram entre 1985 e 1995. Utilizar BETWEEN
			r:SELECT nome, datanasc FROM estudante WHERE datanasc BETWEEN  '1985-01-01' AND '1995-01-01';
				Lucas	1990-11-30
				Harry Styles	1994-02-01
				Guilherme Costa Cunha	1993-12-26
				Isabela Carvalho Correia	1994-03-07
				Leonor Sousa Pereira	1987-07-10
				Júlio Melo Ribeiro	1991-07-29
				Igor Silva Santos	1991-11-10
	 --- (k) Mostrar, em ordem alfabética, os nomes dos professores entre “Carlos” e “Maria”. Utilizar BETWEEN
			r:SELECT nome FROM professor WHERE nome BETWEEN  'Carlos' AND 'Maria' ORDER BY nome;
				Carlos Eduardo Tavares
				Carlos José Cordeiro
				Carmen Lucia Hernandes Agustini
				Cassiano Aimberê Dorneles Welker
				Celine de Melo
				Cesar Guilherme De Almeida
				Clarissa Monteiro Borges
				Claudemir Kuhn Faccioli
				Cláudio Vieira da Sulva
				Cristiano Alves Guarany
				Daiane Damasceno Borges
				Daniel Abdala
				Daniela Franco Carvalho
				Daniele Alves Dias
				Danilo Marques
				Débora Coimbra
				Denis Coelho Oliveira
				Deuzely Cordeiro do Prado
				Diana Salles Sampaio
				Diego Merigue da Cunha
				Disney Oliver Sívieri Júnior
				Djalmir Nestor Messias
				Edson Vernek
				Elaine Faria
				Elenice Maria Casartelli
				Eliane da Silva Morgado
				Erick Piovesan
				Fabricio Macedo de Souza
				Fátima Aparecida Arcanjo
				Fernanda Helena Nogueira-Ferreira
				Fillipa Carneiro Silveira
				Física Licenciatura
				Flávia Cunha Rios Naves
				Flávio Popazoglo
				Francielle Amâncio Pereira
				George Balster Martins
				Gerson Ferreira Junior
				Giuliano Buzá Jacobucci
				Gustavo Foresto Brito de Almeida
				Helena Maura Torezan Silingardi
				Heraldo Luis de Vasconcelos
				Humberto Aparecido de Oliveira Guido
				Jader de Souza Cabral
				Jairo Dias Carvalho
				Jeamylle Nilin Gonçalves
				Jimi Naoki Nakajima
				João Carlos de Oliveira Guerra
				João Maratona
				Jose Candido Xavier
				José de los Santos Guerra
				José Henrique
				José Maria Villas Bôas
				José Roberto Tozoni
				Jose Rubens Macedo Junior
				Juliana Marzinek
				Karen Christina Ferreira Neves
				Keila Pacheco Ferreira
				Kleber Del Claro
				Liliana Sanz de la Torre
				Lorenço Santos Vasconcelos
				Lucia de Fátima Dinelli Estevinho
				Luciano Coutinho Gomes
				Lucio Pereira Neves
				Luiz Carlos Gomes de Freitas
				Marcel Novaes
				Marcelo de Oliveira Gonzaga
				Marco Aurélio Boselli


	 --- (l) Mostrar os nomes das disciplinas das seguintes faculdades: FADIR, FAMAT, FEMEC. 
	     ---   Não utilizar o operador OR. Utilizar somente um SELECT.
			r: SELECT nome FROM disciplina WHERE fac_disc IN ('FADIR', 'FAMAT', 'FEMEC');
				Metodologia e Epistemologia Jurídica
				Teoria do Direito
				Teoria do Estado e Democracia
				Filosofia do Direito
				História do Direito
				Cálculo Diferencial e Integral 1
				Cálculo Diferencial e Integral 2
				Cálculo Diferencial e Integral 3
				Álgebra Linear
				Teoria dos Números
				Análise Real

	 --  (m) Mostrar se algum registro da tabela turma possui erro no cadastro 
	     ---  do semestre (ou seja, diferente de 1 ou 2)	 
			r:SELECT * FROM turma WHERE semestre <> 1  AND semestre <> 2;	
				2112	PR	4	2022	FAGEN32406	1F	112

	 
-- 7) Consultas com atualizações
	 --- (a) Altere para letras em maiúsculo os nomes de todas as disciplinas
		r:SELECT UPPER(nome) from disciplina;	
			SAÚDE COLETIVA I
			SAÚDE COLETIVA II
			SAÚDE COLETIVA III
			SAÚDE COLETIVA IV
			SAÚDE COLETIVA V
			BANCO DE DADOS I
			BANCO DE DADOS II
			ALGORITIMOS E PROGRAMAÇÃO I
			ALGORITIMOS E PROGRAMAÇÃO II
			PROGRAMAÇÃO ORIENTADA A OBJETO
			METODOLOGIA E EPISTEMOLOGIA JURÍDICA
			TEORIA DO DIREITO
			TEORIA DO ESTADO E DEMOCRACIA
			FILOSOFIA DO DIREITO
			HISTÓRIA DO DIREITO
			ANÁLISE DE DADOS I
			FUNDAMENTOS DE ADMINISTRAÇÃO
			FACULDADE DE GESTÃO E NEGÓCIOS
			DADOS E INFORMAÇÕES FINANCEIRAS I
			COMPORTAMENTO ORGANIZACIONAL
			COMPORTAMENTO DO CONSUMIDOR
			ANÁLISE DE DADOS II
			ANÁLISE DE DADOS III
			CÁLCULO DIFERENCIAL E INTEGRAL 1
			CÁLCULO DIFERENCIAL E INTEGRAL 2
			CÁLCULO DIFERENCIAL E INTEGRAL 3
			ÁLGEBRA LINEAR
			TEORIA DOS NÚMEROS
			ANÁLISE REAL
			DEONTOLOGIA E BIOÉTICA

         --- (b) Aumente o CRA de todos os alunos em 10%
			r:UPDATE estudante SET cra = cra * 1.1;
				65 row(s) affected Rows matched: 65  Changed: 65  Warnings: 0	0.016 sec
			  SELECT * from estudante;
				1100	Caio Canedo Borges	1995-04-15	FEELT	9.350.000.000.000.000	1100
				1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	9.900.000.000.000.000	1100
				1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	9.900.000.000.000.000	1101
				1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	9.900.000.000.000.000	1101
				1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	9.900.000.000.000.000	1101
				12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	11.000.000.000.000.000	1303
				12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	11.000.000.000.000.000	1301
				12221bsi214	Frank Targa	2004-12-19	FACOM	7.480.000.000.000.000	1000
				12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	75.9	1002
				12221bsi216	Ricky William	1950-06-09	FACOM	79.2	1001
				12221bsi217	Leonardo di Caprio Gonçalves de Oliveira	2000-01-10	FACOM	4.950.000.000.000.000	1003
				12221bsi218	Jack Black da Silva	2005-02-27	FACOM	9.900.000.000.000.000	1000
				12311FAMED1	Fabricio	1997-10-22	FAMED	9.900.000.000.000.000	801
				12311FAMED2	WendelL	1983-06-21	FAMED	66	802
				12311FAMED3	Ana	1998-03-10	FAMED	101.2	805
				12311FAMED4	Lucas	1990-11-30	FAMED	8.580.000.000.000.000	804
				12311FAMED5	Juliana	1995-04-15	FAMED	9.350.000.000.000.000	803
				12311ICB145	Oliver Rossini	2004-02-15	ICBIM	10.450.000.000.000.000	NULL
				12311ICB207	Harry Styles	1994-02-01	ICBIM	9.900.000.000.000.000	12345678900
				12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	9.130.000.000.000.000	NULL
				12311ICB267	Aghata Nunes	2001-11-16	ICBIM	9.427.000.000.000.000	NULL
				12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	9.900.000.000.000.000	12300456789
				12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	9.900.000.000.000.000	1903
				12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	9.350.000.000.000.000	1904
				12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	10.450.000.000.000.000	NULL
				12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	88	1905
				12311IL1912	Marcos Antonio	2001-02-07	ILEEL	95.7	NULL
				13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	7.560.300.000.000.000	1300
				1405	Adalberto Branch Filho	2002-09-10	IFILO	66	NULL
				1406	Cleiton Rasta Silva	2002-09-10	IFILO	6.710.000.000.000.000	NULL

	 --- (c) Passe para o valor 100 os CRAs que ficaram acima de 100
			r: UPDATE estudante SET cra = 100 WHERE cra > 100;
				9 row(s) affected Rows matched: 9  Changed: 9  Warnings: 0	0.016 sec
			   SELECT * from estudante;
				1100	Caio Canedo Borges	1995-04-15	FEELT	9.350.000.000.000.000	1100
				1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	9.900.000.000.000.000	1100
				1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	9.900.000.000.000.000	1101
				1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	9.900.000.000.000.000	1101
				1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	9.900.000.000.000.000	1101
				12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
				12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
				12221bsi214	Frank Targa	2004-12-19	FACOM	7.480.000.000.000.000	1000
				12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	75.9	1002
				12221bsi216	Ricky William	1950-06-09	FACOM	79.2	1001
				12221bsi217	Leonardo di Caprio Gonçalves de Oliveira	2000-01-10	FACOM	4.950.000.000.000.000	1003
				12221bsi218	Jack Black da Silva	2005-02-27	FACOM	9.900.000.000.000.000	1000
				12311FAMED1	Fabricio	1997-10-22	FAMED	9.900.000.000.000.000	801
				12311FAMED2	WendelL	1983-06-21	FAMED	66	802
				12311FAMED3	Ana	1998-03-10	FAMED	100	805
				12311FAMED4	Lucas	1990-11-30	FAMED	8.580.000.000.000.000	804
				12311FAMED5	Juliana	1995-04-15	FAMED	9.350.000.000.000.000	803
				12311ICB145	Oliver Rossini	2004-02-15	ICBIM	100	NULL
				12311ICB207	Harry Styles	1994-02-01	ICBIM	9.900.000.000.000.000	12345678900
				12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	9.130.000.000.000.000	NULL
				12311ICB267	Aghata Nunes	2001-11-16	ICBIM	9.427.000.000.000.000	NULL
				12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	9.900.000.000.000.000	12300456789
				12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	9.900.000.000.000.000	1903
				12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	9.350.000.000.000.000	1904
				12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	100	NULL
				12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	88	1905
				12311IL1912	Marcos Antonio	2001-02-07	ILEEL	95.7	NULL
				13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	7.560.300.000.000.000	1300
				1405	Adalberto Branch Filho	2002-09-10	IFILO	66	NULL
				1406	Cleiton Rasta Silva	2002-09-10	IFILO	6.710.000.000.000.000	NULL


	 --- (d) Não deixe que alunos com CRA menor que 80 façam iniciação científica
			r: UPDATE estudante SET tutor = NULL WHERE cra < 80;
				12 row(s) affected Rows matched: 18  Changed: 12  Warnings: 0	0.015 sec
			   SELECT * FROM estudante;
				1100	Caio Canedo Borges	1995-04-15	FEELT	9.350.000.000.000.000	1100
				1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	9.900.000.000.000.000	1100
				1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	9.900.000.000.000.000	1101
				1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	9.900.000.000.000.000	1101
				1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	9.900.000.000.000.000	1101
				12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
				12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
				12221bsi214	Frank Targa	2004-12-19	FACOM	7.480.000.000.000.000	NULL
				12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	75.9	NULL
				12221bsi216	Ricky William	1950-06-09	FACOM	79.2	NULL
				12221bsi217	Leonardo di Caprio Gonçalves de Oliveira	2000-01-10	FACOM	4.950.000.000.000.000	NULL
				12221bsi218	Jack Black da Silva	2005-02-27	FACOM	9.900.000.000.000.000	1000
				12311FAMED1	Fabricio	1997-10-22	FAMED	9.900.000.000.000.000	801
				12311FAMED2	WendelL	1983-06-21	FAMED	66	NULL
				12311FAMED3	Ana	1998-03-10	FAMED	100	805
				12311FAMED4	Lucas	1990-11-30	FAMED	8.580.000.000.000.000	804
				12311FAMED5	Juliana	1995-04-15	FAMED	9.350.000.000.000.000	803
				12311ICB145	Oliver Rossini	2004-02-15	ICBIM	100	NULL
				12311ICB207	Harry Styles	1994-02-01	ICBIM	9.900.000.000.000.000	12345678900
				12311ICB234	Rodrigo Souza	2003-07-14	ICBIM	9.130.000.000.000.000	NULL
				12311ICB267	Aghata Nunes	2001-11-16	ICBIM	9.427.000.000.000.000	NULL
				12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	9.900.000.000.000.000	12300456789
				12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	9.900.000.000.000.000	1903
				12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	9.350.000.000.000.000	1904
				12311IL1910	Joao Pedro Zaneti	2003-06-06	ILEEL	100	NULL
				12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	88	1905
				12311IL1912	Marcos Antonio	2001-02-07	ILEEL	95.7	NULL
				13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	7.560.300.000.000.000	NULL
				1405	Adalberto Branch Filho	2002-09-10	IFILO	66	NULL
				1406	Cleiton Rasta Silva	2002-09-10	IFILO	6.710.000.000.000.000	NULL

	 --- (e) Passe todos os professores e alunos da FACOM para a FAMAT
			r: UPDATE professor SET fac_prof =('FAMAT') where fac_prof =('FACOM');
				5 row(s) affected Rows matched: 5  Changed: 5  Warnings: 0	0.016 sec
			   SELECT * FROM professor WHERE fac_prof = ('FAMAT');	
				1000	Bruno Travençolo	FAMAT	1998-01-01
				1001	Daniel Abdala	FAMAT	1998-01-01
				1002	Elaine Faria	FAMAT	1998-01-01
				1003	João Maratona	FAMAT	1998-01-01
				1004	José Henrique	FAMAT	1998-01-01
				200	Alessandro Alves Santana	FAMAT	2006-11-06
				212	Camila Mariana Ruiz	FAMAT	2022-05-30
				231	Cesar Guilherme De Almeida	FAMAT	1993-03-22
				245	Arlindo José de Souza Junior	FAMAT	1993-03-22
				278	Aurélia Aparecida de Araújo Rodrigues	FAMAT	2006-07-31
				299	Alonso Sepúlveda Castellanos	FAMAT	2008-09-25
			
-- 8) Consultas com remoção. Em alguns casos será necessário mais de um comando para 
--       a ação de completar. Coloque todos os comando necessários e na ordem correta
	 --- (a) Remova todos as informação de pré-requisito que existem no banco.
		r:DROP TABLE pre_requisito; 
			0 row(s) affected	0.063 sec
		  SELECT * FROM pre_requisito;
			Error Code: 1146. Table 'universidade.pre_requisito' doesn't exist	0.000 sec

     --- (b) Remova as salas com capacidade inferior a 90 lugares. MOstrar o comando 
	      --- e indicar se ele foi executado corremente ou se ocorreu algum erro
			r: DELETE FROM sala WHERE capacidade < 90;
				Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`universidade`.`turma`, CONSTRAINT `fk_sala` FOREIGN KEY (`predio_s`, `n_sala`) REFERENCES `sala` (`predio`, `numero`))	0.015 sec

	 --- (c) Remova a faculdade FACOM. Se alguma informação ainda dependa da FACOM, 
	    ---    passá-la para FAMAT antes da remoção
			r: UPDATE disciplina SET fac_disc = ('FAMAT') WHERE fac_disc = ('FACOM');
				5 row(s) affected Rows matched: 5  Changed: 5  Warnings: 0	0.016 sec
			   UPDATE estudante SET fac_est =('FAMAT') WHERE fac_est = ('FACOM');	
				10 row(s) affected Rows matched: 10  Changed: 10  Warnings: 0	0.015 sec
			   DELETE FROM faculdade WHERE sigla = ('FACOM');	
				1 row(s) affected	0.016 sec

-- 9) Volte o banco ao estado original, antes das remoções e atualizações 
-- (basta executar o script inicial do banco novamente). Não precisa mostrar nada na resposta.
		ok
	 
-- 10) Consultas com SELECT FROM WHERE - com duas ou mais condições de seleção
     --- (a) Listar todos as faculdade localizadas no predio '1F' e com orçamento superior a R$ 5000,00
		r:SELECT * FROM faculdade WHERE predio = ('1F') and orcamento < 5000;
			(resultado vazio)
     --- (b) Listar todas os alunos com CRA superior a 60 e que estudam na faculdade 'FACOM'
		r: SELECT * FROM estudante WHERE cra > 60 and fac_est =('FACOM');
			12221bsi214	Frank Targa	2004-12-19	FACOM	68	1000
			12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	69	1002
			12221bsi216	Ricky William	1950-06-09	FACOM	72	1001
			12221bsi218	Jack Black da Silva	2005-02-27	FACOM	90	1000
			2106	João Roberto Cardini	2001-05-21	FACOM	65	2102
			2107	Felipe Sardene Duarte	2000-07-07	FACOM	85	2104
			2108	Calipso Santos Joelma	2002-06-26	FACOM	95	2103
			2109	Eduardo Santos Lima	2004-03-20	FACOM	75	2104

     --- (c) Listar todas as turmas ofertadas neste semestre  da disciplina de cógido <ESCOLHER>
		r: SELECT * FROM turma WHERE semestre = 1 AND ano = 2025 AND cod_disc =('FAMEV31505');
			1303	EX	1	2025	FAMEV31505	1BCG	101
     --- (d) Listar todos os nome e data de nascimento dos estudantes que possuem  tutores  e possuem CRA maior que 80
		r: SELECT nome, datanasc FROM estudante WHERE tutor IS NOT NULL AND cra >80;
			Caio Canedo Borges	1995-04-15
			Guilherme Zanzoti de Sousa Barbosa	1995-04-15
			Lucas Pinheiro Barbosa	1995-04-15
			Ianny Carolina Mendes Pereira	1995-04-15
			Matheus Gualter Silva Resende	1995-04-15
			João Vitor Souza Vilela	2003-01-07
			Yasmin Pierazo Amaral	2002-07-20
			Jack Black da Silva	2005-02-27
			Fabricio	1997-10-22
			Ana	1998-03-10
			Juliana	1995-04-15
			Harry Styles	1994-02-01
			Jessyca Teodoro	2002-10-04
			Paulo Daniel Forti da Fonseca	2005-04-28
			Pedro Henrique Lopes Duarte	1998-10-14
			Clovis de Barros	2002-09-10
			Eneas Carneiro	2002-09-10
			Joabe Guimarães	2004-05-22
			Felipe Sardene Duarte	2000-07-07
			Calipso Santos Joelma	2002-06-26
			Guilherme Costa Cunha	1993-12-26
			Isabela Carvalho Correia	1994-03-07
			Leonor Sousa Pereira	1987-07-10
			Tiago Ribeiro Barros	2003-04-13
			Emily Cardoso Souza	2004-05-02
			Carla Correia Rocha	2002-02-10
			Rafaela Ribeiro Dias	2005-06-24
			Júlio Melo Ribeiro	1991-07-29
			Igor Silva Santos	1991-11-10
			Anna Alves Azevedo	2001-02-06

     --- (e) Listar o código e nome de todas as disciplinas cujo códigos começam com 'GBC' e possuem 4 créditos.
		r: SELECT * FROM disciplina WHERE codigo LIKE 'GFM%' and (ch/15) > 4; -- Troquei GBC por GFM para que fosse retornado resultado.
			GFM001	Física Básica I	INFIS	90
			GFM007	Física Básica II	INFIS	90
			GFM013	Física Básica III	INFIS	90
			GFM014	Laboratório de Física Básica III	INFIS	90
			GFM019	Laboratório de Física Básica IV	INFIS	90
			GFM047	Métodos da Física Teórica I	INFIS	90

     --- (h) Listar todos os estudantes que não possuem possuem tutores mas que possuem CRA maior ou igual a 60
		r: SELECT * FROM estudante WHERE cra >= 60 AND tutor IS NOT NULL;
			1100	Caio Canedo Borges	1995-04-15	FEELT	85	1100
			1101	Guilherme Zanzoti de Sousa Barbosa	1995-04-15	FEELT	90	1100
			1102	Lucas Pinheiro Barbosa	1995-04-15	FEELT	90	1101
			1103	Ianny Carolina Mendes Pereira	1995-04-15	FEELT	90	1101
			1104	Matheus Gualter Silva Resende	1995-04-15	FEELT	90	1101
			12121VET231	João Vitor Souza Vilela	2003-01-07	FAMEV	100	1303
			12211VET285	Yasmin Pierazo Amaral	2002-07-20	FAMEV	100	1301
			12221bsi214	Frank Targa	2004-12-19	FACOM	68	1000
			12221bsi215	Eduardo Lopes Valério	2004-09-20	FACOM	69	1002
			12221bsi216	Ricky William	1950-06-09	FACOM	72	1001
			12221bsi218	Jack Black da Silva	2005-02-27	FACOM	90	1000
			12311FAMED1	Fabricio	1997-10-22	FAMED	90	801
			12311FAMED2	WendelL	1983-06-21	FAMED	60	802
			12311FAMED3	Ana	1998-03-10	FAMED	92	805
			12311FAMED4	Lucas	1990-11-30	FAMED	78	804
			12311FAMED5	Juliana	1995-04-15	FAMED	85	803
			12311ICB207	Harry Styles	1994-02-01	ICBIM	90	12345678900
			12311ICB352	Jessyca Teodoro	2002-10-04	ICBIM	90	12300456789
			12311IL1908	Paulo Daniel Forti da Fonseca	2005-04-28	ILEEL	90	1903
			12311IL1909	Pedro Henrique Lopes Duarte	1998-10-14	ILEEL	85	1904
			12311IL1911	Marcelo Gabriel Santos	2003-09-09	ILEEL	80	1905
			13045VET002	Maria Eduarda Silva	2001-03-15	FAMEV	68.73	1300
			1407	Clovis de Barros	2002-09-10	IFILO	99	1400
			1409	Eneas Carneiro	2002-09-10	IFILO	100	1400
			15987VET369	Rafael Augusto Mendes	2000-12-05	FAMEV	78.62	1304
			203	Joabe Guimarães	2004-05-22	FAMAT	92	278
			204	João Paulo Nunes	2005-12-22	FAMAT	62	212
			2106	João Roberto Cardini	2001-05-21	FACOM	65	2102
			2107	Felipe Sardene Duarte	2000-07-07	FACOM	85	2104
			2108	Calipso Santos Joelma	2002-06-26	FACOM	95	2103