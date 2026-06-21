USE saude_mental_escolar;

-- =====================================
-- CRUD - USUÁRIOS
-- =====================================

-- CREATE
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

-- READ
SELECT * FROM usuarios;

SELECT * FROM usuarios
WHERE id = 1;

-- UPDATE
UPDATE usuarios
SET
    telefone = '(11)98888-7777',
    email = 'novoemail@email.com'
WHERE id = 1;

-- DELETE
DELETE FROM usuarios
WHERE id = 1;

-- =====================================
-- CRUD - HUMORES
-- =====================================

-- CREATE
INSERT INTO humores (descricao)
VALUES ('Muito Feliz');

INSERT INTO humores (descricao)
VALUES ('Ansioso');

-- READ
SELECT * FROM humores;

SELECT * FROM humores
WHERE id = 1;

-- UPDATE
UPDATE humores
SET descricao = 'Muito Ansioso'
WHERE id = 2;

-- DELETE
DELETE FROM humores
WHERE id = 2;

-- =====================================
-- CRUD - USUÁRIOS_HUMORES
-- =====================================

-- CREATE
INSERT INTO usuarios_humores (
    usuario_id,
    humor_id
)
VALUES (
    1,
    1
);

-- READ
SELECT * FROM usuarios_humores;

-- UPDATE
UPDATE usuarios_humores
SET humor_id = 1
WHERE id = 1;

-- DELETE
DELETE FROM usuarios_humores
WHERE id = 1;

-- =====================================
-- CRUD - DIÁRIOS PESSOAIS
-- =====================================

-- CREATE
INSERT INTO diarios_pessoais (
    texto,
    usuario_id
)
VALUES (
    'Hoje tive um dia muito produtivo na escola.',
    1
);

-- READ
SELECT * FROM diarios_pessoais;

-- UPDATE
UPDATE diarios_pessoais
SET texto = 'Hoje tive um dia muito produtivo e agradável.'
WHERE id = 1;

-- DELETE
DELETE FROM diarios_pessoais
WHERE id = 1;

-- =====================================
-- CRUD - FRASES MOTIVACIONAIS
-- =====================================

-- CREATE
INSERT INTO frases_motivacionais (
    texto,
    dia_semana
)
VALUES (
    'Você é capaz de superar qualquer desafio.',
    2
);

-- READ
SELECT * FROM frases_motivacionais;

SELECT *
FROM frases_motivacionais
WHERE dia_semana = 2;

-- UPDATE
UPDATE frases_motivacionais
SET texto = 'Você consegue alcançar seus objetivos.'
WHERE id = 1;

-- DELETE
DELETE FROM frases_motivacionais
WHERE id = 1;