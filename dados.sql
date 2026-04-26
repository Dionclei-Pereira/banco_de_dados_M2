INSERT INTO clientes (nome, email, telefone, data_cadastro) VALUES
	('João Silva', 'joao@email.com', '49999990001', '2026-01-10'),
	('Maria Souza', 'maria@email.com', '49999990002', '2026-02-15'),
	('Carlos Lima', 'carlos@email.com', '49999990003', '2026-03-20'),
	('Ana Costa', 'ana@email.com', '49999990004', '2026-03-25'),
	('Pedro Alves', 'pedro@email.com', '49999990005', '2026-04-01');

INSERT INTO regioes_entrega (nome) VALUES
	('Centro'),
	('Zona Norte'),
	('Zona Sul'),
	('Zona Leste'),
	('Zona Oeste');

INSERT INTO lojas (nome, endereco, id_regiao) VALUES
	('Mig', 'Rua A, 123', 1),
	('Mig', 'Rua B, 456', 2),
	('Mig', 'Rua C, 789', 3),
	('Mig', 'Rua D, 321', 4),
	('Mig', 'Rua E, 654', 5);
    
INSERT INTO produtos (nome, descricao) VALUES
	('Arroz 5kg', 'Arroz branco tipo 1'),
	('Feijão 1kg', 'Feijão carioca'),
	('Macarrão 500g', 'Macarrão espaguete'),
	('Leite 1L', 'Leite integral'),
	('Óleo 900ml', 'Óleo de soja');

INSERT INTO loja_produto (id_loja, id_produto, preco, estoque) VALUES
	(1, 1, 25.00, 100),
	(1, 2, 8.50, 80),
	(2, 1, 26.00, 60),
	(3, 3, 5.00, 120),
	(4, 4, 4.50, 90),
	(5, 5, 7.00, 70);

INSERT INTO entregadores (nome, telefone) VALUES
	('Lucas Pereira', '49988880001'),
	('Rafael Gomes', '49988880002'),
	('Bruno Rocha', '49988880003'),
	('Felipe Martins', '49988880004'),
	('André Souza', '49988880005');

INSERT INTO pedidos (id_cliente, id_entregador, data_pedido, status_pedido, valor_total) VALUES
	(1, 1, '2026-04-20 10:00:00', 'ENTREGUE', 50.00),
	(2, 2, '2026-04-21 11:30:00', 'EM_ENTREGA', 30.00),
	(3, 3, '2026-04-22 12:00:00', 'PENDENTE', 15.00),
	(4, 4, '2026-04-23 14:00:00', 'EM_PREPARO', 22.00),
	(5, 5, '2026-04-24 15:00:00', 'ENTREGUE', 40.00);

INSERT INTO pagamentos (id_pedido, tipo_pagamento, status_pagamento, valor, data_pagamento) VALUES
	(1, 'PIX', 'APROVADO', 50.00, '2026-04-20 10:05:00'),
	(2, 'CRÉDITO', 'APROVADO', 30.00, '2026-04-21 11:35:00'),
	(3, 'PIX', 'PENDENTE', 15.00, NULL),
	(4, 'DÉBITO', 'APROVADO', 22.00, '2026-04-23 14:05:00'),
	(5, 'PIX', 'APROVADO', 40.00, '2026-04-24 15:05:00');


INSERT INTO itens_pedido (id_pedido, id_loja_produto, quantidade, preco_unitario) VALUES
	(1, 1, 1, 45.00),
	(1, 2, 1, 6.00),
	(2, 3, 1, 30.00),
	(3, 5, 1, 60.00),
	(4, 6, 1, 15.00);

