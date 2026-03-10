# Análisis de ventas de Superstore 

## Descripción general del proyecto 

Este proyecto analiza el **conjunto de datos de Superstore** para descubrir información sobre el rendimiento de las ventas, la rentabilidad, el comportamiento del cliente, el rendimiento del producto y las operaciones logísticas. 

El análisis se centra en identificar los impulsores comerciales clave y las oportunidades para mejorar la rentabilidad y la eficiencia operativa. 

--- 

## Conjunto de datos 

El conjunto de datos contiene datos de ventas transaccionales que incluyen: 

- Pedidos 
- Clientes 
- Productos 
- Regiones 
- Información de envío 
- Ingresos y ganancias 

Las columnas clave incluyen: 

- ID de pedido 
- Fecha de pedido 
- Fecha de envío 
- Nombre del cliente 
- Segmento 
- Región 
- Categoría - 
Subcategoría 
- Nombre del producto - 
Ventas - 
Cantidad - 
Ganancias 
- Modo de envío 
- Modo de pago 

--- 

## Herramientas utilizadas 

- **SQL (SQLite)**: análisis de datos y consultas 
- **Herramientas de Excel/BI**: visualización de datos 
- **GitHub**: documentación y portafolio del proyecto 

--- 

## Estructura del proyecto
superstore-sales-analysis
│
├── README.md
│
├── sql
│ └── superstore_analysis.sql
│
├── datos
│ └── información del conjunto de datos
│
├── imágenes
│ └── gráficos y capturas de pantalla
│
└── paneles
└── archivos del panel

## Análisis realizado 

El proyecto incluye varios análisis SQL: 

### 1. KPI de negocios 

- Ingresos totales 
- Utilidad total 
- Margen de utilidad 
- Pedidos totales 
- Clientes totales 

--- 

### 2. Rentabilidad por categoría 

Identifica qué categorías de productos generan la mayor cantidad de ingresos y utilidades. 

**Hallazgo clave:** 

La tecnología es la categoría más rentable con el margen más alto. 

--- 

### 3. Rentabilidad por subcategoría 

Analiza la rentabilidad a nivel de producto. 

**Conocimientos clave:** 

- Las fotocopiadoras generan márgenes extremadamente altos. 
- Las mesas y estanterías generan pérdidas. 

--- 

### 4. Rendimiento regional 

Evalúa los ingresos y las utilidades en las regiones. 

**Hallazgo clave:** 

La **región oeste** genera los mayores ingresos y utilidades. 

--- 

### 5. Análisis de clientes 

Identifica a los clientes más rentables. 

**Conocimiento:** 

Los clientes con altos ingresos no siempre son los más rentables, lo que demuestra la importancia de la combinación de productos. 

--- 

### 6. Análisis del segmento de clientes 

Compara el rendimiento en los segmentos de clientes. 

**Hallazgos clave:** 

- El segmento de consumo genera la mayor cantidad de ingresos. 
- La oficina en casa muestra el margen de beneficio más alto. 

--- 

### 7. Análisis del método de pago 

Evalúa las preferencias de pago del cliente. 

**Perspectiva:** 

El pago contra reembolso es el método de pago más utilizado. 

--- 

### 8. Contribución a las ganancias del producto (análisis de Pareto) 

Identifica los productos que generan la mayor parte de las ganancias. 

**Perspectiva clave:** 

Un pequeño porcentaje de productos genera una gran parte de las ganancias totales. 

--- 

### 9. Análisis de logística y envíos 

Analiza los métodos de entrega y el tiempo de envío. 

**Perspectivas clave:** 

- La clase estándar domina el volumen de pedidos y las ganancias. 
- Los métodos de envío más rápidos representan una parte menor de los pedidos. 

--- 

## Perspectivas comerciales clave 

- La rentabilidad está altamente concentrada en un pequeño número de productos. 
- Ciertos productos relacionados con los muebles generan pérdidas constantes. 
- Los productos tecnológicos impulsan los márgenes más altos. 
- El envío estándar es el método de entrega más utilizado. 
- Los segmentos de clientes se comportan de manera diferente en términos de rentabilidad. 

--- 

## Recomendaciones 

basadas en el análisis: 

- Concentrar los esfuerzos de marketing en **categorías de productos de alto margen** 
- Reevaluar los precios o la estructura de costos para los **productos que generan pérdidas**
- Optimizar la combinación de productos para aumentar la rentabilidad 
- Considerar la expansión de líneas de productos de alto rendimiento 

--- 

## Autor 

Sebastián Flores   
Proyecto Portafolio de Análisis de Datos
