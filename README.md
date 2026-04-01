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

# 📊 Análisis   

## 🧠 Resumen Ejecutivo  

Este análisis examina el rendimiento del negocio utilizando el dataset Superstore, con foco en identificar drivers de rentabilidad, ineficiencias operativas y oportunidades de crecimiento.

El negocio presenta un alto volumen de ventas, pero un margen moderado (11,2%), lo que indica una oportunidad clara de optimización.

---

## 📈 KPIs Principales  

- 💰 Ventas Totales: $1.565.804  
- 📊 Ganancia Total: $175.262  
- 📦 Pedidos Totales: 5.901  
- 📉 Margen de Ganancia: 11,2%  
- 🚚 Promedio días de envío: 3,9 días  

### 🔎 Interpretación  

- El negocio tiene buena escala de ingresos, pero el margen es relativamente bajo, lo que representa una oportunidad de mejora.  
- El volumen de pedidos es alto, lo que indica fuerte actividad comercial, pero no necesariamente eficiencia en rentabilidad.  
- El tiempo de envío es competitivo, lo que sugiere una operación logística eficiente.  

---

## 🌍 Análisis Geográfico  

### Ingresos por Región  

- 🥇 Oeste → $522K  
- 🥈 Este → $450K  
- 🥉 Central → $341K  
- 🔻 Sur → $252K  

### 🔎 Insights  

- La región Oeste concentra el mayor ingreso y probablemente la mayor rentabilidad.  
- Existe una brecha significativa con la región Sur, lo que indica oportunidades de crecimiento o problemas de penetración.  

### 📌 Implicación de negocio  

El negocio no está equilibrado geográficamente y depende de una región clave.  

---

## 👥 Análisis de Clientes  

### Top Clientes  

El ingreso está concentrado en un grupo reducido de clientes, lo que indica dependencia en cuentas clave.

### 🔎 Insight clave  

- Los clientes con mayor volumen de compra no siempre son los más rentables.  
- La rentabilidad depende del mix de productos y condiciones comerciales.  

### 📌 Implicación  

Es necesario implementar estrategias de gestión de clientes basadas en rentabilidad y no solo en volumen.  

---

## 🛍️ Análisis de Productos  

### Top Subcategorías por Ingresos  

- Phones  
- Chairs  
- Binders  
- Storage  
- Accessories  
- Tables  
- Paper  

### 🔎 Insights  

- Phones lidera el ingreso, alineado con el fuerte desempeño de la categoría Tecnología.  
- Tables aparece como alta en ingresos pero genera pérdidas (según análisis SQL), lo que representa un problema crítico.  

### 📌 Implicación  

Existe riesgo de decisiones basadas en ingresos sin considerar rentabilidad real.  

---

## 💳 Análisis de Métodos de Pago  

- COD (Contra reembolso): 43%  
- Online: 35%  
- Tarjetas: 22%  

### 🔎 Insights  

- Fuerte dependencia del pago contra reembolso.  
- Bajo uso de tarjetas.  

### 📌 Implicación  

Mayor riesgo operativo y costos logísticos asociados.  

---

## 📅 Análisis Temporal  

### Ventas por Mes (2019–2020)  

### 🔎 Insights  

- Tendencia creciente hacia finales del año.  
- Picos de ventas en el último trimestre (Q4).  
- 2020 muestra mayor volumen que 2019.  

### 📌 Implicación  

El negocio está influenciado por estacionalidad.  

---

## 🚚 Análisis Logístico  

- Promedio de envío: 3,9 días  
- Predominio del envío estándar  

### 🔎 Insight  

La operación logística está optimizada para eficiencia de costos más que para velocidad.  

---

## 💡 Insights Estratégicos  

- La rentabilidad está concentrada en pocos productos.  
- Existen productos que generan pérdidas.  
- Hay dependencia geográfica significativa.  
- El mix de productos impacta directamente el margen.  
- Alta dependencia del método de pago COD.  
- Fuerte estacionalidad en ventas.  

---

## 🚀 Recomendaciones  

### 1. Optimización de margen  

- Reducir o ajustar productos con pérdidas.  
- Revisar estructura de costos y precios.  

### 2. Expansión regional  

- Replicar estrategia de la región Oeste.  
- Fortalecer regiones con menor rendimiento.  

### 3. Gestión de clientes  

- Priorizar clientes de alto margen.  
- Ajustar estrategias comerciales según rentabilidad.  

### 4. Optimización del portafolio  

- Enfocar en productos de alta rentabilidad.  
- Reducir exposición a categorías deficitarias.  

### 5. Métodos de pago  

- Incentivar pagos digitales.  
- Reducir dependencia de COD.  

### 6. Estrategia estacional  

- Potenciar campañas en Q4.  
- Planificar inventario según demanda.  

---

## 🔮 Oportunidades Futuras  

- Modelos predictivos de ventas  
- Segmentación avanzada de clientes  
- Pricing dinámico  
- Optimización logística  

---

## 🎯 Conclusión  

El negocio presenta una base sólida en volumen de ventas, pero requiere mejoras en eficiencia de rentabilidad y distribución estratégica.

Las principales oportunidades se encuentran en la optimización del margen, el mix de productos y la diversificación geográfica.

---

## 👤 Autor  

Sebastián Flores  
Data Analyst Portfolio  

