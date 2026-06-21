CREATE DATABASE IF NOT EXISTS saude_mental_escolar;
USE saude_mental_escolar;

-- =========================
-- TABELA USUÁRIOS
-- =========================
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    is_admin BOOLEAN DEFAULT FALSE,
    is_client BOOLEAN DEFAULT TRUE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (
    email,
    senha,
    telefone,
    is_admin,
    is_client
)
VALUES (
    'joao@email.com',
    '123456',
    '(11)99999-9999',
    FALSE,
    TRUE
);

SELECT * FROM usuarios;

SELECT * FROM usuarios
WHERE id = 1;

UPDATE usuarios
SET
    telefone = '(11)98888-7777',
    email = 'novoemail@email.com'
WHERE id = 1;

DELETE FROM usuarios
WHERE id = 1;
-- =========================
-- TABELA HUMORES
-- =========================
CREATE TABLE humores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

-- Dados iniciais
INSERT INTO humores (descricao) VALUES
('Muito Feliz'),
('Feliz'),
('Neutro'),
('Triste');

INSERT INTO humores (descricao)
VALUES ('Ansioso');

SELECT * FROM humores;

SELECT * FROM humores
WHERE id = 1;

UPDATE humores
SET descricao = 'Muito Ansioso'
WHERE id = 5;

DELETE FROM humores
WHERE id = 5;

-- =========================
-- RELACIONAMENTO USUÁRIO/HUMOR
-- HISTÓRICO DE HUMOR
-- =========================
CREATE TABLE usuarios_humores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    humor_id INT NOT NULL,
    registrado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_usuario_humor_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_usuario_humor_humor
        FOREIGN KEY (humor_id)
        REFERENCES humores(id)
        ON DELETE RESTRICT
);

INSERT INTO usuarios_humores (
    usuario_id,
    humor_id
)
VALUES (
    1,
    2
);

SELECT * FROM usuarios_humores;

UPDATE usuarios_humores
SET humor_id = 3
WHERE id = 1;

DELETE FROM usuarios_humores
WHERE id = 1;

-- =========================
-- DIÁRIO PESSOAL
-- =========================
CREATE TABLE diarios_pessoais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT NOT NULL,

    CONSTRAINT fk_diario_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
);

INSERT INTO diarios_pessoais (
    texto,
    usuario_id
)
VALUES (
    'Hoje tive um dia muito produtivo na escola.',
    1
);

SELECT * FROM diarios_pessoais;

UPDATE diarios_pessoais
SET texto = 'Hoje tive um dia muito produtivo e agradável.'
WHERE id = 1;

DELETE FROM diarios_pessoais
WHERE id = 1;
-- =========================
-- FRASES MOTIVACIONAIS
-- =========================
CREATE TABLE frases_motivacionais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT NOT NULL,
    dia_semana TINYINT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_dia_semana
        CHECK (dia_semana BETWEEN 1 AND 7)
);

-- Frases de exemplo
INSERT INTO frases_motivacionais (texto, dia_semana) VALUES
('Acredite no seu potencial.', 1),
('Pequenos passos levam a grandes conquistas.', 2),
('Você é mais forte do que imagina.', 3),
('Todo dia é uma nova oportunidade.', 4),
('Cuide da sua mente com carinho.', 5),
('Persistência supera dificuldades.', 6),
('Seu esforço vale a pena.', 7);

INSERT INTO frases_motivacionais (
    texto,
    dia_semana
)
VALUES (
    'Você é capaz de superar qualquer desafio.',
    2
);

SELECT * FROM frases_motivacionais;

SELECT *
FROM frases_motivacionais
WHERE dia_semana = 2;

UPDATE frases_motivacionais
SET texto = 'Você consegue alcançar seus objetivos.'
WHERE id = 1;

DELETE FROM frases_motivacionais
WHERE id = 1;