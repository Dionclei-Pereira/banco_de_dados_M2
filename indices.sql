### pedidos
CREATE INDEX idx_pedidos_cliente ON pedidos(id_cliente);
CREATE INDEX idx_pedidos_status ON pedidos(status_pedido);

## pagamentos
CREATE INDEX idx_pagamentos_status ON pagamentos(status_pagamento);

## loja_produto
CREATE INDEX idx_loja_produto_produto ON loja_produto(id_produto);