--SELECT * FROM Categoria
--SELECT * FROM Fornecedor
--SELECT * FROM Franquia
--SELECT * FROM Item_Pedido
--SELECT * FROM Pedido
--SELECT * FROM Produto



--1. Todos as Franquias que fizeram pedidos e tamb�m o ID do pedido.

--SELECT Franquia.Nome_Franquia, Pedido.id_pedido           
--FROM Franquia
--INNER JOIN Pedido ON Franquia.id_franquia = Pedido.id_franquia;


--2. A localiza��o das Franquias e o nome.

--SELECT
--    Franquia.Nome_Franquia,       
--    Franquia.Localiza��o,            
--    Pedido.id_pedido           
--FROM Franquia
--LEFT JOIN Pedido ON Franquia.id_franquia = Pedido.id_franquia



--3. Exibe Nome da empresa e o endere�o do Fornecedor

--SELECT DISTINCT Fornecedor.Nome_Empresa,  
--                Fornecedor.[Endereço]        
--FROM Fornecedor
--UNION
--SELECT DISTINCT Fornecedor.Nome_Empresa,  
--                Fornecedor.[Endereço]        
--FROM Produto INNER JOIN Fornecedor ON Produto.id_produto = Fornecedor.id_fornecedor;



--4. contar quantas vezes cada Produto aparece no resultado final


--SELECT Nome_Produto,                  -- Nome do produto
--       COUNT(*) AS Total_Produtos     -- Contagem de ocorr�ncias
--FROM
--    (
--        SELECT Produto.Nome_Produto
--        FROM Produto
        
--        UNION 
        
--        SELECT Produto.Nome_Produto
--        FROM Fornecedor
--        INNER JOIN Produto ON Produto.id_fornecedor = Fornecedor.id_fornecedor
--    ) AS Produtos_Total
--GROUP BY Nome_Produto;


--SELECT DISTINCT Nome_Produto         -- Seleciona produtos �nicos
--FROM
--    (
--        SELECT Produto.Nome_Produto
--        FROM Produto
        
--        UNION ALL
        
--        SELECT Produto.Nome_Produto
--        FROM Fornecedor
--        INNER JOIN Produto ON Produto.id_fornecedor = Fornecedor.id_fornecedor
--    ) AS Produtos_Total;




