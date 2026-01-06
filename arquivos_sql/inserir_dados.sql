USE ecommerce;

INSERT INTO clientes VALUES
(1, 'João Silva', 'São Paulo', 'SP'),
(2, 'Maria Santos', 'Rio de Janeiro', 'RJ'),
(3, 'Carlos Lima', 'Belo Horizonte', 'MG');

INSERT INTO produtos VALUES
(1, 'Notebook', 'Eletrônicos', 3500.00),
(2, 'Mouse', 'Acessórios', 150.00),
(3, 'Teclado', 'Acessórios', 250.00);

INSERT INTO pedidos VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-15'),
(3, 1, '2024-02-05');

INSERT INTO itens_pedido VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 3, 2, 1);
