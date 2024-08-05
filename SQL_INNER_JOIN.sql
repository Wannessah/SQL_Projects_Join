--1) Quais s�o as vendas l�quidas totais, arredondadas para uma casa decimal,
--agrupadas por marca e descri��o da marca, ordenadas pelo c�digo da marca?

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
	  
	  

