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

## Analisis General

El análisis revela un negocio con alto volumen de ventas pero margen moderado (11,2%), donde la rentabilidad está impulsada principalmente por ciertas regiones, categorías y clientes específicos.

Se identifica una concentración clara de ingresos en la región Oeste, una fuerte dependencia del método de pago contra reembolso (COD) y un crecimiento sostenido de ventas hacia finales del período analizado (2020).

## 📈 KPIs Principales

-💰 Ventas Totales: $1.565.804
-📊 Ganancia Total: $175.262
-📦 Pedidos Totales: 5.901
-📉 Margen de Ganancia: 11,2%
-🚚 Promedio días de envío: 3,9 días

🔎 Interpretación:
-El negocio tiene buena escala de ingresos, pero el margen es relativamente bajo → oportunidad clara de optimización.
-El volumen de pedidos es alto, lo que indica fuerte actividad comercial, pero no necesariamente eficiencia en rentabilidad.
-El tiempo de envío es competitivo, lo que sugiere una operación logística eficiente.

## 🌍 Análisis Geográfico

Ingresos por Región
-🥇 Oeste → $522K
-🥈 Este → $450K
-🥉 Central → $341K
-🔻 Sur → $252K

🔎 Insights:
-La región Oeste concentra el mayor ingreso y probablemente la mayor rentabilidad.
-Existe una brecha significativa con la región Sur, lo que indica oportunidades de crecimiento o problemas de penetración.

📌 Implicación de negocio:
👉 El negocio no está equilibrado geográficamente → dependencia de una región clave.

## 👥 Análisis de Clientes

Top 7 Clientes:
El revenue está distribuido entre un grupo reducido de clientes, confirmando una concentración de ingresos en cuentas clave.

🔎 Insight clave:
-No todos los clientes de alto volumen son necesariamente los más rentables.
-Existe potencial para optimizar la cartera de clientes en base a margen y no solo volumen.

📌 Implicación:
👉 Estrategia necesaria de Customer Value Management (CVM)

## 🛍️ Análisis de Productos

Top Subcategorías por Ingresos:
-Phones
-Chairs
-Binders
-Storage
-Accessories
-Tables
-Paper
🔎 Insights:
-Phones lidera claramente el ingreso, alineado con el buen desempeño de Tecnología.
-Subcategorías como Tables aparecen en el top de ingresos pero (según SQL) generan pérdidas, lo que es crítico.

📌 Implicación:
👉 Alto riesgo de falsa rentabilidad basada en volumen y no en margen

##💳 Análisis de Métodos de Pago

Distribución:
-COD (Contra reembolso) → 43%
-Online → 35%
-Tarjetas → 22%

🔎 Insights:
-Fuerte dependencia de COD
-Bajo uso de tarjetas

📌 Implicación:
👉 Mayor riesgo operativo y costos logísticos asociados

##Ventas por Mes (2019–2020)

🔎 Insights:
-Tendencia creciente hacia finales de año
-Picos claros en Q4 (último trimestre)
-2020 muestra mayor volumen que 2019

📌 Implicación:
👉 Negocio altamente influenciado por estacionalidad

##🚚 Análisis Logístico
-Promedio de envío: 3,9 días
-Dominancia del envío estándar

🔎 Insight:
-El negocio está optimizado para eficiencia de costos logísticos, no para velocidad premium.

##💡 Insights Estratégicos Integrados

-La rentabilidad está concentrada en pocas categorías y productos
-Existe desbalance geográfico significativo
-Algunos productos generan ingresos pero destruyen margen
-El negocio depende fuertemente de clientes y regiones específicas
-Alta dependencia de métodos de pago de mayor riesgo (COD)
-Fuerte estacionalidad en ventas

##🚀 Recomendaciones Estratégicas
1. Optimización de Margen

👉 Acción:
Eliminar o reestructurar productos con pérdidas (ej: Tables)
Ajustar pricing o costos

👉 Impacto:
✔ Incremento directo del margen global

2. Estrategia de Expansión Regional

👉 Acción:
Replicar estrategia de la región Oeste en otras regiones
Invertir en marketing en regiones subdesarrolladas

👉 Impacto:
✔ Diversificación de ingresos

3. Gestión Avanzada de Clientes

👉 Acción:
Identificar clientes de alto margen
Reducir dependencia de clientes poco rentables

👉 Impacto:
✔ Mayor eficiencia comercial

4. Optimización del Mix de Productos

👉 Acción:
Priorizar productos de alta rentabilidad (Tecnología)
Reducir exposición en categorías deficitarias

👉 Impacto:
✔ Mejora estructural del negocio

5. Transformación de Métodos de Pago

👉 Acción:
Incentivar pagos digitales
Reducir COD

👉 Impacto:
✔ Reducción de riesgo y costos

6. Estrategia Comercial Basada en Estacionalidad

👉 Acción:
Aumentar inversión en Q4
Planificar stock y campañas

👉 Impacto:
✔ Maximización de ingresos

🔮 Oportunidades Futuras
-Modelos de predicción de ventas
-Segmentación avanzada de clientes
-Pricing dinámico
-Optimización logística basada en datos

##🎯 Conclusión

-El negocio presenta una base sólida en términos de volumen de ventas, pero enfrenta desafíos en eficiencia de rentabilidad y distribución estratégica.

Las principales oportunidades se encuentran en:
-optimización del margen
-mejora del mix de productos
-diversificación geográfica
-profesionalización de la estrategia comercial

👤 Autor
Sebastián Flores
Data Analyst Portfolio
