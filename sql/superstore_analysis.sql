-- ============================================
-- PROYECTO: Análisis de ventas en grandes superficies
-- AUTOR: Sebastián Flores
-- HERRAMIENTAS: SQLite
-- OBJETIVO:
--          Analizar el rendimiento de ventas, la rentabilidad,
--          los segmentos de clientes, la logística y la contribución del producto al rendimiento del negocio.
-- ============================================

SELECT * FROM superstore
LIMIT 10;


--VEMOS ESTRUCTURA COMPLETA
PRAGMA table_info(superstore);



--TOTAL REGISTROS
SELECT COUNT(*) AS total_registros FROM superstore;



--DETECTAR NULOS IMPORTANTES
SELECT 
      SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
	  SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_profit,
	  SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS null_quantity,
	  SUM(CASE WHEN "Order date" IS NULL THEN 1 ELSE 0 END) AS null_order_date
FROM superstore;




--VERIFICAMOS fechas de ORDEN y ENVIO
SELECT "Order date", "Ship date" FROM superstore
LIMIT 10;



-- CREAMOS COLUMNAS DERIVADAS
SELECT
    *,
    (Profit / Sales) AS margin,
    julianday("Ship Date") - julianday("Order Date") AS shipping_delay
FROM superstore
LIMIT 10;



--KPIs Totales
--Objetivo:
--        Comprender el rendimento general del negocio.
SELECT
    SUM(Sales) AS revenue_total,
    SUM(Profit) AS profit_total,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS margin_pct,
    COUNT(DISTINCT "Order ID") AS total_orders,
    COUNT(DISTINCT "Customer ID") AS total_customers
FROM superstore;
-- Métricas clave calculadas:
--                          *Ingresos totales
--                          *Beneficio total
--                          *Margen de beneficio
--                          *Pedidos totales
--                          *Clientes totales
-- Perspectiva:
--             El negocio generó un margen de beneficio de aproximadamente
--             11%, lo que indica un nivel de rentabilidad saludable pero moderado.



--RENTABILIDAD POR CATEGORIAS
-- Objetivo:
--          Identificar qué categorías de productos impulsan los ingresos y la rentabilidad.
SELECT Category,
       SUM(Sales) AS revenue,
	   SUM(Profit) AS profit,
	   ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS margin_pct
FROM superstore
GROUP BY Category
ORDER BY profit DESC;
-- Perspectiva:
--             La tecnología muestra la mayor rentabilidad con margen
--             por encima del 19%, mientras que los muebles generan ingresos elevados pero
--             márgenes muy bajos (~2%), lo que sugiere un precio potencial
--             o ineficiencias operativas.



--TOP 10 PRODUCTOS POR PROFIT
SELECT
    "Product Name",
    SUM(Sales) AS revenue,
    SUM(Profit) AS profit
FROM superstore
GROUP BY "Product Name"
ORDER BY profit DESC
LIMIT 10;



--REGIONES MAS RENTABLES
-- Objetivo:
--          Comprender la distribución geográfica de las ventas
--          y la rentabilidad.
SELECT
    Region,
    SUM(Sales) AS revenue,
    SUM(Profit) AS profit
FROM superstore
GROUP BY Region
ORDER BY profit DESC;
-- Perspectiva:
--             La región Oeste domina tanto en ingresos como en ganancias,
--             lo que sugiere un mejor desempeño del mercado o una mayor demanda
--             en esa región.



--COMENZAMOS ANALISIS mas exsaustivo 
SELECT COUNT(*) FROM superstore;



--TOP SUBCATEGORIAS
-- Objetivo:
--          Analizar el rendimiento a un nivel más granular del producto.
SELECT
    "Sub-Category",
    SUM(Sales) AS revenue,
    SUM(Profit) AS profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales),2) AS margin_pct
FROM superstore
GROUP BY "Sub-Category"
ORDER BY profit DESC;

-- Hallazgos clave:
--                 Las fotocopiadoras generan el mayor margen (~71%).
--                 Mesas, Libreros y Suministros generan pérdidas.
-- Perspectiva:
--             Algunos productos relacionados con el mobiliario tienen un impacto significativo en la rentabilidad general,
--             lo que indica posibles problemas de precios o costos logísticos.




--CLIENTES MAS RENTABLES
-- Objetivo:
--          Identificar a los clientes que más contribuyen a las ganancias.
SELECT "Customer Name",
    SUM(Sales) AS revenue,
    SUM(Profit) AS profit
FROM superstore
GROUP BY "Customer Name"
ORDER BY profit DESC
LIMIT 10;
-- Perspectiva:
--             Los clientes más rentables no siempre son los que generan mayores ingresos,
--             lo que indica que la combinación de productos influye fuertemente en la rentabilidad. 




--SEGMENTO de clientes mas rentables
-- Objetivo:
--          Analizar qué segmentos de clientes generan más ingresos y ganancias.
SELECT
    Segment,
    SUM(Sales) AS revenue,
    SUM(Profit) AS profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales),2) AS margin_pct
FROM superstore
GROUP BY Segment
ORDER BY profit DESC;
-- Perspectiva:
--             El segmento de consumo genera los mayores ingresos,
--             mientras que el Ministerio del Interior muestra el margen de beneficio más alto,
--             lo que sugiere que este segmento compra más productos rentables.



--METODO de PAGO mas usados
-- Objetivo:
--          Comprender las preferencias de pago del cliente.
SELECT
    "Payment Mode",
    COUNT(*) AS orders,
    SUM(Sales) AS revenue
FROM superstore
GROUP BY "Payment Mode"
ORDER BY revenue DESC;
-- Perspectiva:
--             El pago contra reembolso (COD) es el método de pago más utilizado 
--             y genera el mayor número de pedidos e ingresos.




--CONCENTRACION de GANANCIAS por produtos
-- Objetivo:
--          Identificar cómo se distribuyen las ganancias entre los productos.
WITH product_profit AS (
    SELECT
        "Product Name",
        SUM(Profit) AS profit
    FROM superstore
    GROUP BY "Product Name"
),
ranked_products AS (
    SELECT
        "Product Name",
        profit,
        SUM(profit) OVER (ORDER BY profit DESC) AS cumulative_profit,
        SUM(profit) OVER () AS total_profit
    FROM product_profit
)
SELECT
    "Product Name",
    profit,
    ROUND(cumulative_profit * 100.0 / total_profit,2) AS cumulative_profit_pct
FROM ranked_products
ORDER BY profit DESC;
-- Perspectiva:
--             Aproximadamente el 6% de los productos generan alrededor de
--             80% del beneficio total, lo que indica una fuerte concentración de la rentabilidad en un pequeño
--             subconjunto del catálogo de productos.



--ANALISIS de LOGISTICA
-- Objetivo:
--          Evaluar el impacto de los métodos de envío en el rendimiento del negocio.
SELECT
    "Ship Mode",
    COUNT(*) AS orders,
    ROUND(
        AVG(
            julianday(
                substr("Ship Date", 7, 4) || '-' ||
                substr("Ship Date", 4, 2) || '-' ||
                substr("Ship Date", 1, 2)
            )
            -
            julianday(
                substr("Order Date", 7, 4) || '-' ||
                substr("Order Date", 4, 2) || '-' ||
                substr("Order Date", 1, 2)
            )
        ),
        2
    ) AS avg_shipping_days,
    SUM(Sales) AS revenue,
    SUM(Profit) AS profit
FROM superstore
GROUP BY "Ship Mode"
ORDER BY profit DESC;
-- Perspectiva:
-- La clase estándar domina las operaciones logísticas,
-- representando la mayoría de los pedidos, ingresos,
-- y ganancias. Las opciones de envío más rápidas representan
-- una porción más pequeña del negocio.
 




