# Admin
CREATE USER 'admin'@'%' IDENTIFIED BY 'Admin@123';
GRANT ALL PRIVILEGES ON migexpress.* TO 'admin'@'%';

# Entregador
CREATE USER 'entregador'@'%' IDENTIFIED BY 'Entregador@123';

GRANT SELECT ON migexpress.pedidos TO 'entregador'@'%';
GRANT SELECT ON migexpress.clientes TO 'entregador'@'%';

# Operador
CREATE USER 'operador_loja'@'%' IDENTIFIED BY 'Operador@123';

GRANT SELECT, UPDATE ON migexpress.loja_produto TO 'operador_loja'@'%';
GRANT SELECT ON migexpress.pedidos TO 'operador_loja'@'%';
GRANT SELECT ON migexpress.itens_pedido TO 'operador_loja'@'%';
GRANT SELECT ON migexpress.pagamentos TO 'operador_loja'@'%';

FLUSH PRIVILEGES;

# Revokes

REVOKE INSERT, UPDATE, DELETE ON migexpress.pedidos FROM 'entregador'@'%';

REVOKE ALL PRIVILEGES ON migexpress.pagamentos FROM 'operador_loja'@'%';

FLUSH PRIVILEGES;