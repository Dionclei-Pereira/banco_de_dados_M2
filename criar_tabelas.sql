CREATE DATABASE migexpress;
USE migexpress;

CREATE TABLE clientes(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(11),
    data_cadastro DATE
);

CREATE TABLE regioes_entrega(
	id_regiao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE lojas(
	id_loja INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    id_regiao INT,
    
    FOREIGN KEY (id_regiao) REFERENCES regioes_entrega(id_regiao)
);

CREATE TABLE produtos(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT
);

CREATE TABLE loja_produto(
	id_loja_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_loja INT,
    id_produto INT,
	preco DECIMAL(10,2) NOT NULL,
    estoque INT,
    
    FOREIGN KEY (id_loja) REFERENCES lojas(id_loja),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),

    UNIQUE (id_loja, id_produto)
);

CREATE TABLE entregadores(
	id_entregador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150),
    telefone VARCHAR(20)
);

CREATE TABLE pedidos(
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_entregador INT,
    data_pedido DATETIME,
    status_pedido ENUM('PENDENTE', 'EM_PREPARO', 'EM_ENTREGA', 'ENTREGUE'),
    valor_total DECIMAL(10,2),

    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_entregador) REFERENCES entregadores(id_entregador)
);

CREATE TABLE itens_pedido(
	id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_loja_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_loja_produto) REFERENCES loja_produto(id_loja_produto)
);

CREATE TABLE pagamentos(
	id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT UNIQUE,
    tipo_pagamento ENUM('PIX', 'CRÉDITO', "DÉBITO"),
    status_pagamento ENUM('PENDENTE', 'CANCELADO', 'APROVADO', 'REJEITADO', 'REEMBOLSADO'),
    valor DECIMAL(10, 2),
    data_pagamento DATETIME,
    
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);