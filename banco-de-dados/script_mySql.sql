CREATE DATABASE IF NOT EXISTS saude_mental_escolar;
USE saude_mental_escolar;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    is_admin BOOLEAN DEFAULT FALSE,
    is_client BOOLEAN DEFAULT TRUE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE humores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

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

CREATE TABLE frases_motivacionais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT NOT NULL,
    dia_semana TINYINT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_dia_semana
        CHECK (dia_semana BETWEEN 1 AND 7)
);