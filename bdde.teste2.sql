-- 1. Inserindo dados na tabela EMPRESA
INSERT INTO empresa (cnpj, nome, nome_social) VALUES
('12.345.678/0001-90', 'BRMW Tecnologia', 'BRMW Soluções Industriais e Ambientais S.A.');

-- 2. Inserindo dados na tabela FILIAL
INSERT INTO filial (cnpj_filial, cnpj_empresa, nome, cidade, pais, regiao, estado, endereco) VALUES
('12.345.678/0002-71', '12.345.678/0001-90', 'BRMW Unidade Recife', 'Recife', 'Brasil', 'Nordeste', 'PE', 'Av. Boa Viagem, 1500'),
('12.345.678/0003-52', '12.345.678/0001-90', 'BRMW Unidade São Paulo', 'São Paulo', 'Brasil', 'Sudeste', 'SP', 'Av. Paulista, 2100');

-- 3. Inserindo dados na tabela FUNCIONARIO
INSERT INTO funcionario (cpf, cnpj_empresa, cnpj_filial, nome, sexo, data_contratacao, data_demissao, data_nascimento) VALUES
('111.222.333-44', '12.345.678/0001-90', '12.345.678/0002-71', 'Mariana Silva', 'Feminino', '2022-03-15', NULL, '1995-07-20'),
('555.666.777-88', '12.345.678/0001-90', '12.345.678/0002-71', 'Carlos Eduardo Souza', 'Masculino', '2021-08-10', '2025-11-30', '1990-02-14'),
('999.888.777-66', '12.345.678/0001-90', '12.345.678/0003-52', 'Fernanda Oliveira', 'Feminino', '2023-01-20', NULL, '1998-11-05');

-- 4. Inserindo dados na tabela REGISTRO_MENSAL_FILIAL
INSERT INTO registro_mensal_filial (
    id_registro_filial, cnpj_filial, residuos_reciclado_em_kg, residuos_gerados_em_kg, 
    energia_consumida_em_kWh, custo_operacional, receita_em_reais, emissoes_em_tco2e, data_registro
) VALUES
(1, '12.345.678/0002-71', 450.5, 600.0, 12500.75, 45000.00, 120000.00, 14.2, '2025-01-31'),
(2, '12.345.678/0002-71', 480.0, 610.2, 12100.30, 44200.50, 125500.00, 13.8, '2025-02-28'),
(3, '12.345.678/0003-52', 820.4, 1100.0, 24300.90, 89000.00, 240000.00, 28.5, '2025-01-31');

-- 5. Inserindo dados na tabela REGISTRO_MENSAL_FUNCIONARIO
-- Nota: Valores no formato HH:MM:SS respeitando o limite de 24h do tipo TIME
INSERT INTO registro_mensal_funcionario (
    id_registro_funcionario, cpf_funcionario, horas_trabalhadas, horas_treinamento, data_registro
) VALUES
(1, '111.222.333-44', '08:00:00', '01:30:00', '2025-01-31'),
(2, '111.222.333-44', '07:45:00', '02:00:00', '2025-02-28'),
(3, '555.666.777-88', '08:15:00', '00:45:00', '2025-01-31'),
(4, '999.888.777-66', '08:00:00', '03:00:00', '2025-01-31');