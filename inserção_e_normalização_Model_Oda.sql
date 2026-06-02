
use EcommerceModel;


-- Inserção de dados Simulados

select * from Cliente;

INSERT INTO Cliente (PNome, Apelido, Sobrenome, Aniverssário, Endereço, CPF) VALUES
('Ana', 'Aninha', 'Silva', '1990-05-12', 'Rua das Flores, 123 - São Paulo/SP', '12345678901'),
('Bruno', 'Bru', 'Costa', '1985-08-23', 'Av. Brasil, 456 - Rio de Janeiro/RJ', '23456789012'),
('Carla', 'Cá', 'Oliveira', '1998-11-02', 'Rua das Palmeiras, 789 - Belo Horizonte/MG', '34567890123'),
('Diego', 'Dieguinho', 'Pereira', '2000-01-17', 'Praça da Sé, 10 - São Paulo/SP', '45678901234'),
('Eduarda', 'Duda', 'Lima', '1975-09-30', 'Rua do Comércio, 55 - Salvador/BA', '56789012345'),
('Fábio', 'Fab', 'Rocha', '1982-12-10', 'Av. Atlântica, 2000 - Rio de Janeiro/RJ', '67890123456'),
('Gabriela', 'Gabi', 'Martins', '1995-03-25', 'Rua das Acácias, 88 - Curitiba/PR', '78901234567'),
('Henrique', 'Rique', 'Alves', '2002-07-19', 'Rua do Sol, 321 - Porto Alegre/RS', '89012345678'),
('Isabela', 'Bela', 'Souza', '1988-04-14', 'Av. Paulista, 1500 - São Paulo/SP', '90123456789'),
('João', 'Jão', 'Ferreira', '1993-06-06', 'Rua das Camélias, 47 - Recife/PE', '01234567890');

select * from Produto;

INSERT INTO Produto (nome_produto, Descrição, Localizaçã, Quantidade) VALUES
('Smartphone X100', 'Tela 6.5", 128GB', 'Setor A - Prateleira 3', '15'),
('Notebook Ultra', '16GB RAM, SSD 512GB', 'Setor B - Corredor 2', '8'),
('Mouse Sem Fio', 'Conexão USB, 1600DPI', 'Setor C - Gaveta 1', '45'),
('Teclado Mecânico', 'RGB, Switch Blue', 'Setor C - Gaveta 3', '12'),
('Monitor 27"', 'IPS, 4K, 60Hz', 'Setor B - Prateleira 5', '6'),
('Fone Bluetooth', 'Bateria 20h, Cancelamento', 'Setor A - Prateleira 2', '23');

select * from Método_Pagamento;

INSERT INTO Método_Pagamento (id_pagamento, update_time, nome_método, Descrição, configjson, ordem_exibição) VALUES
(1, '2025-01-15 10:30:00', 'Cartão de Crédito', 'Pagamento com cartão Visa/Mastercard', '{"parcelas_max":12,"taxa":0.02,"gateway":"stripe"}', 1),
(2, '2025-01-15 10:35:00', 'Boleto Bancário', 'Boleto com vencimento em 3 dias', '{"desconto":0.05,"multa_diaria":0.01,"gateway":"pagseguro"}', 2),
(3, '2025-01-20 14:20:00', 'PIX', 'Transferência instantânea 24/7', '{"validade_minutos":30,"qr_code_dinamico":true,"gateway":"mercadopago"}', 3),
(4, '2025-02-01 09:00:00', 'PayPal', 'Carteira digital internacional', '{"moeda":"BRL","taxa_fixa":2.50,"gateway":"paypal"}', 4),
(5, '2025-02-10 11:45:00', 'Débito Online', 'Pagamento direto da conta corrente', '{"parcelas":1,"taxa":0.015,"gateway":"cielo"}', 5),
(6, '2025-03-05 16:00:00', 'Vale Presente', 'Crédito interno da loja', '{"validade_meses":12,"aceita_restante":true,"gateway":"proprio"}', 6);

select * from Pedido;

INSERT INTO Pedido (create_time, update_time, Id_Pedido, Estado) VALUES
('2025-03-01 09:15:00', '2025-03-01 10:30:00', 'PED-1001', 'Em Andamento'),
('2025-03-02 14:20:00', '2025-03-03 08:45:00', 'PED-1002', 'Concluido'),
('2025-03-03 11:00:00', '2025-03-03 11:05:00', 'PED-1003', 'Iniciando'),
('2025-02-28 18:30:00', '2025-03-01 09:00:00', 'PED-1004', 'Cancelado'),
('2025-03-04 07:45:00', '2025-03-04 16:20:00', 'PED-1005', 'Em Andamento'),
('2025-03-05 20:00:00', '2025-03-05 20:00:00', 'PED-1006', 'Iniciando');

select * from Produto;

INSERT INTO Produto (nome_produto, Descrição, Localizaçã, Quantidade) VALUES
('Smartphone Galaxy S23', '128GB, 5G, Tela 6.1"', 'Estoque A1', '23'),
('Notebook Dell Inspiron', '16GB RAM, SSD 512GB', 'Estoque B2', '10'),
('Mouse Logitech M170', 'Sem fio, 12 meses de bateria', 'Estoque C3', '57'),
('Teclado Redragon Kumara', 'Switch Outemu, RGB', 'Estoque C3', '34'),
('Monitor LG UltraWide', '29" Full HD, IPS', 'Estoque B2', '8'),
('Fone JBL Tune 510BT', 'Bluetooth, 40h de bateria', 'Estoque A1', '45');

select * from Vendedor;

INSERT INTO Vendedor (username, email, password, create_time, CNPJ, Razão_Social, Endereço) VALUES
('tech4you', 'contato@tech4you.com.br', MD5('senha123'), '2024-01-10 09:00:00', '12345678000199', 'Tech4You Comércio de Eletrônicos Ltda', 'Av. Paulista, 1000 - São Paulo/SP'),
('modaz', 'vendas@modaz.com.br', MD5('loja2024'), '2024-02-15 14:30:00', '98765432000188', 'Modaz Moda e Acessórios SA', 'Rua Augusta, 500 - São Paulo/SP'),
('livrariacultura', 'sac@livrariacultura.com.br', MD5('livros123'), '2024-03-20 11:15:00', '45678912000177', 'Livraria Cultura Virtual Ltda', 'Rua dos Livros, 123 - Rio de Janeiro/RJ'),
('gamesplanet', 'suporte@gamesplanet.com.br', MD5('game2025'), '2024-04-05 16:45:00', '32165498000166', 'Games Planet Distribuidora de Software ME', 'Av. dos Games, 2000 - Curitiba/PR'),
('moveisclassico', 'atendimento@moveisclassico.com.br', MD5('moveis123'), '2024-05-12 08:20:00', '78912345000155', 'Móveis Clássico Ltda', 'Rua das Palmeiras, 300 - Belo Horizonte/MG'),
('autopecasbr', 'compras@autopecasbr.com.br', MD5('pecas2024'), '2024-06-01 10:00:00', '15975348000144', 'Auto Peças Brasil Comércio de Autopeças SA', 'Av. Brasil, 777 - Rio de Janeiro/RJ');

-- Conta quantidade de clientes cadastradas.
select count(*) from Cliente;

-- Verifica quantidade de pedidos feito por eles.
-- OBS deve usar idPeidoCliente uma chave que liga o peidod e o cliente na mesma ID
select * from Clientes Cli, Pedido Ped where cli.Pnome = id_pedido; -- insira a tal chave aqui.

-- Ajustamento de visualização de tabela.
select concat(PNome," ", Sobrenome) as NomeCompleto, Id_Pedido as Pedido, Estado as Estado_De_Requisisção from Clientes Cli, Pedido Ped where cli.Pnome = id_pedido;

-- Where é praticamente um Inner Join
select * from Clientes Cli, Pedido as Ped
	where Cli.Apelido = id_pedido group by id_pedido;

-- recuperando clientes que fizeram pedidos e quantos pedidos eles fizeram.

select Cli.Cliente, count(*) as Numero_de_Pedidos from Cliente Cli inner join Pedido Ped on Cli.Apelido = Ped.id_pedido
	inner join Produto Prod on Ped.id_produto = Prod.id_pedido
    group by Apelido; -- Agrupamento de quantidade de pedidos nesta linha
    

