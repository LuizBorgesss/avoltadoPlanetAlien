CREATE DATABASE avoltadoplanetaalien;
USE avoltadoplanetaalien;

CREATE TABLE verbo (
    id INT PRIMARY KEY auto_increment,
    nomeverbo VARCHAR(40),
    fk_bloom_id INT
);

truncate table verbo;
INSERT INTO verbo(nomeverbo) values ("Listar");
INSERT INTO verbo(nomeverbo) values ("Esquematizar");
INSERT INTO verbo(nomeverbo) values ("Utilizar");
INSERT INTO verbo(nomeverbo) values ("Resolver");
INSERT INTO verbo(nomeverbo) values ("Defender");
INSERT INTO verbo(nomeverbo) values ("Elaborar");
INSERT INTO verbo(nomeverbo) values ("Relembrar");
INSERT INTO verbo(nomeverbo) values ("Relacionar");
INSERT INTO verbo(nomeverbo) values ("Implementar");
INSERT INTO verbo(nomeverbo) values ("Categorizar");
INSERT INTO verbo(nomeverbo) values ("Delimitar");
INSERT INTO verbo(nomeverbo) values ("Desenhar");
INSERT INTO verbo(nomeverbo) values ("Listar"),("Reconhocer"),("Indentifcar"),("Localizar"),("Descrever"),("Citar"),("Esquematizar"),("Relacionar"),("Demosntar"),("Parafrasear"),("Assosiar"),("Utilizar"),("Modificar"),("Experimentar"),("Calcular"),("Classificar"),("Resolver"),("Categorizar"),("Comparar"),("Integrar"),("Investigar"),("Defender"),("Delimitar"),("Estimar"),("Selecionar"),("Justificar"),("Explicar"),("Elaborar"),("Desenhar"),("Produzir"),("Prototipar"),("Idear"),("Inventar");

update verbo SET nomeverbo = 'Jogar' WHERE id = 30;
DELETE FROM verbo WHERE id = 5;
SELECT * FROM verbo;

SELECT verbo.nomeverbo, bloom.nome
FROM verbo
INNER JOIN bloom ON verbo.id = bloom.id;

truncate table bloom;

CREATE TABLE bloom (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(40)
);

INSERT INTO bloom(nome) values("Memorizar");
INSERT INTO bloom(nome) values("Compreender");
INSERT INTO bloom(nome) values("Aplicar");
INSERT INTO bloom(nome) values("Analisar");
INSERT INTO bloom(nome) values("Avaliar");
INSERT INTO bloom(nome) values("Criar");

SELECT * FROM bloom;

CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(200)
);

INSERT INTO historia(titulo, descricao, final) values ("Planeta alien (A revolta do furão)", "No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.
Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.
Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens. A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres.", "Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus amigos");

SELECT * FROM historia;

CREATE TABLE competencia (
    id INT PRIMARY KEY auto_increment,
    descricao LONGTEXT,
    fk_verbo_id INT
);

SELECT verbo.nomeverbo, competencia.descricao
FROM verbo
INNER JOIN competencia ON verbo.id = competencia.id;

INSERT INTO competencia(descricao) values 
("Encontrar Tags (força nível 1)
a. O furão deve encontrar as principais “tags html” para matar um inimigo.");
INSERT INTO competencia(descricao) values 
("2. Defender “Selectores” (força nível 2)
a. O furão deve defender os principais 'seletores' do inimigo."); 
INSERT INTO competencia(descricao) values 
("3. Relacionar “Scripts” (força nível 3)
a. O furão deve relacionar 'Scripts' para adquirir mais poder.");
INSERT INTO competencia(descricao) values
("4. Listar “Exceptions” (força nível 4)
a. O furão deve listar 'exceptions' para adquirir mais conhecimento.");
INSERT INTO competencia(descricao) values
("5. Inventar “Conditions” (força nível 5)
a. O fruão deve inventar 'conditions' para derrotar os inimigos.");
INSERT INTO competencia(descricao) values
("6. Utilizar “Loops” (força nível 6)
a. O furão deve utilizar 'loops' para fugir dos inimigos mais fortes.");
INSERT INTO competencia(descricao) values
("7. Esquematizar “Arrays” (força nível 7)
a. O furão deve esquematizar 'arrays' para confundir seus inimigos.");
INSERT INTO competencia(descricao) values
("8. Elaborar “Functions” (força nível 8)
a. O furão deve elaborar 'functions' para se camuflar dos inimigos.");
INSERT INTO competencia(descricao) values
("9. Desenhar “Objects” (força nível 9)
a. O furão deve desenhar 'objects' para se sobressair sob os inimigos.");
INSERT INTO competencia(descricao) values
("10. Listar “Databases” (força nível 10)
a. O furão deve listar seus inimigos nos 'databases");

SELECT * FROM competencia;

CREATE TABLE etapa (
    id INT PRIMARY KEY auto_increment,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);

INSERT INTO etapa(instrucao, ponto, tipo) values("Encontrar Tags (força nível 1)", '1', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Defender “Selectores” (força nível 2)", '2', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Relacionar “Scripts” (força nível 3)", '3', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Listar “Exceptions” (força nível 4)", '4', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Inventar “Conditions” (força nível 5)", '5', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Utilizar “Loops” (força nível 6)", '6', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Esquematizar “Arrays” (força nível 7)", '7', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Elaborar “Functions” (força nível 8)", '8', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Desenhar “Objects” (força nível 9)", '9', 'A');
INSERT INTO etapa(instrucao, ponto, tipo) values("Listar “Databases” (força nível 10)", '10', 'A');

SELECT * FROM etapa;

CREATE TABLE Missao (
    id INT PRIMARY KEY auto_increment,
    hash nchar(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT
);

INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','1. Em Busca das Tags', '1');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','2. A Defesa dos Seletores', '2');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','3. Conectando com Scripts', '3');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','4. Identificando Exceptions', '4');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','5. Forjando Condições', '5');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','6. Navegando com Loops', '6');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','7. Estruturando com Arrays', '7');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','8. Construindo Funções', '8');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','9. Moldando Objetos', '9');
INSERT INTO Missao(hash, titulo, forca) values ('4444 4444 4444 4444','10. Catalogando nos Bancos de Dados', '10');

SELECT * FROM Missao;

CREATE TABLE MissaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);
 
ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;
 
ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;