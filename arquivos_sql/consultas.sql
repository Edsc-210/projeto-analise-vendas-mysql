SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM pedidos;
SELECT * FROM itens_pedido;

SELECT 
    SUM(p.preco * i.quantidade) AS faturamento_total
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.produto_id;

SELECT 
    i.pedido_id,
    SUM(p.preco * i.quantidade) AS total_pedido
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.produto_id
GROUP BY i.pedido_id;

SELECT 
    AVG(total_pedido) AS ticket_medio
FROM (
    SELECT 
        i.pedido_id,
        SUM(p.preco * i.quantidade) AS total_pedido
    FROM itens_pedido i
    JOIN produtos p ON i.produto_id = p.produto_id
    GROUP BY i.pedido_id
) t;

SELECT 
    p.nome,
    SUM(i.quantidade) AS total_vendido
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.produto_id
GROUP BY p.nome
ORDER BY total_vendido DESC;

SELECT 
    p.nome,
    SUM(p.preco * i.quantidade) AS receita
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.produto_id
GROUP BY p.nome
ORDER BY receita DESC;

SELECT 
    c.nome,
    COUNT(DISTINCT p.pedido_id) AS total_pedidos,
    SUM(pr.preco * i.quantidade) AS gasto_total
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN itens_pedido i ON p.pedido_id = i.pedido_id
JOIN produtos pr ON i.produto_id = pr.produto_id
GROUP BY c.nome
ORDER BY gasto_total DESC;
