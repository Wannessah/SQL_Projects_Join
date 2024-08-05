# SQL_INNER_JOIN

## Descrição

Esta query retorna as vendas líquidas totais, arredondadas para uma casa decimal, agrupadas por marca e descrição da marca, ordenadas pelo código da marca.

## Explicação

- **JOIN PRODUTOS B ON A.PRODUTO = B.PRODUTO**: Junta a tabela `VENDAS_ANALITICAS` com a tabela `PRODUTOS` com base na coluna `PRODUTO`.
- **JOIN MARCAS C ON B.MARCA = C.MARCA**: Junta a tabela `PRODUTOS` com a tabela `MARCAS` com base na coluna `MARCA`.
- **ROUND(SUM(A.VENDA_LIQUIDA),1) AS TOTAL_VENDA**: Calcula a soma das vendas líquidas e arredonda para uma casa decimal.
- **GROUP BY B.MARCA, C.DESCRICAO**: Agrupa os resultados por `MARCA` e `DESCRICAO`.
- **ORDER BY B.MARCA**: Ordena os resultados pelo código da marca.

## Query

```sql
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
   BY B.MARCA;
