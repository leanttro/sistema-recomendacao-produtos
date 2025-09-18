CREATE DATABASE doistes;

CREATE SCHEMA doistes_bronze;

Select * from raw_products;

CREATE SCHEMA doistes_silver;

Select * from avaliacoes;

CREATE SCHEMA doistes_gold;

Select * from item_recommendations;

SET SQL_SAFE_UPDATES = 0;

-- 1. Adiciona a nova coluna
ALTER TABLE user_recommendations
ADD COLUMN UsuarioID_Numerico INT;
-- 2. Atualiza a coluna com o número extraído do campo 'Usuario'
UPDATE item_recommendations
SET UsuarioID_Numerico = CAST(REPLACE(Usuario, 'user_', '') AS UNSIGNED);

-- 1. Adiciona a nova coluna
ALTER TABLE item_recommendations
ADD COLUMN UsuarioID_Numerico INT;
-- 2. Atualiza a coluna com o número extraído do campo 'Usuario'
UPDATE item_recommendations
SET UsuarioID_Numerico = CAST(REPLACE(Usuario, 'user_', '') AS UNSIGNED);

-- Desabilita o modo de segurança para a sessão atual
SET SQL_SAFE_UPDATES = 0;

-- 1. Adiciona a nova coluna
ALTER TABLE user_recommendations
ADD COLUMN UsuarioID_Numerico INT;
-- 2. Atualiza a coluna com o número extraído do campo 'Usuario'
UPDATE user_recommendations
SET UsuarioID_Numerico = CAST(REPLACE(Usuario, 'user_', '') AS UNSIGNED)
WHERE UsuarioID_Numerico IS NULL; -- Adiciona um WHERE para ser mais seguro

-- 1. Adiciona a nova coluna
ALTER TABLE item_recommendations
ADD COLUMN UsuarioID_Numerico INT;
UPDATE item_recommendations
SET UsuarioID_Numerico = CAST(REPLACE(Usuario, 'user_', '') AS UNSIGNED)
WHERE UsuarioID_Numerico IS NULL; -- Adiciona um WHERE para ser mais seguro

