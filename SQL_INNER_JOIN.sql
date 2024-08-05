--1) Quais são as vendas líquidas totais, arredondadas para uma casa decimal,
--agrupadas por marca e descrição da marca, ordenadas pelo código da marca?

SELECT 
       B.MARCA
      ,C.DESCRICAO  AS DESCRICAO_MARCA
	  ,ROUND(SUM(A.VENDA_LIQUIDA),1) AS TOTAL_VENDA
FROM VENDAS_ANALITICAS A
JOIN PRODUTOS          B ON A.PRODUTO = B.PRODUTO
JOIN MARCAS            C ON B.MARCA   = C.MARCA
GROUP 
   BY B.MARCA,
      C.DESCRICAO
ORDER
   BY B.MARCA
	  
	  

