
## 📌 Descripción del Proyecto

Este proyecto tiene como objetivo transformar datos transaccionales de ventas en información estratégica para la toma de decisiones comerciales. A través de un flujo completo de análisis de datos —desde la generación y limpieza de datos hasta su visualización— se identifican patrones de consumo, productos clave y oportunidades de **cross-selling**.

El proyecto simula un caso real de un supermercado, integrando herramientas y metodologías utilizadas en entornos profesionales de análisis de datos.


## 🎯 Objetivos

* Analizar el comportamiento de compra de los clientes.
* Identificar productos líderes y de baja rotación.
* Detectar combinaciones frecuentes de productos comprados en conjunto.
* Evaluar oportunidades para aumentar el ticket promedio.
* Apoyar la toma de decisiones comerciales basadas en datos.

## 🧠 Metodología

El proyecto sigue un enfoque **end-to-end**:

1. **Generación y preparación de datos (Python)**

   * Creación de la base de datos de ventas.
   * Limpieza de datos (valores nulos, duplicados, formatos).
   * Análisis estadístico descriptivo.

2. **Modelado y consultas (SQL)**

   * Exportación de datos a una base SQL.
   * Creación de vistas analíticas.
   * Diseño de un modelo de datos en esquema estrella.

3. **Visualización (Power BI)**

   * Desarrollo de KPIs (ventas totales, ticket promedio, clientes, etc.).
   * Dashboards interactivos con segmentadores por fecha y producto.

4. **Market Basket Analysis**

   * Aplicación del algoritmo **Apriori**.
   * Cálculo de métricas: *support*, *confidence* y *lift*.
   * Identificación de reglas de asociación para estrategias de venta cruzada.


## 📊 Principales KPIs Analizados

* Total de ventas
* Número de clientes
* Ticket promedio
* Cantidad media de productos por pedido
* Productos más vendidos
* Reglas de asociación con mayor lift


## 🔍 Principales Hallazgos

* Los productos básicos (arroz, banana, fideos, leche, pollo) concentran la mayor parte del volumen de ventas.
* Existen asociaciones fuertes entre determinados productos, útiles para promociones conjuntas.
* El ticket promedio presenta oportunidades claras de mejora mediante estrategias de cross-selling.
* El negocio muestra estabilidad en la demanda, facilitando la planificación comercial.


## 🚀 Impacto para el Negocio

* Optimización del mix de productos.
* Diseño de promociones basadas en datos reales.
* Incremento potencial del ticket promedio sin aumentar costos operativos.
* Mejora en la toma de decisiones comerciales.


## 🛠️ Tecnologías Utilizadas

* **Python** (pandas, numpy, mlxtend)
* **SQL**
* **Power BI**
* **Market Basket Analysis (Apriori)**


## 📁 Estructura del Proyecto


├── data/
│   └── ventas.csv
├── notebooks/
│   └── data_preparation.ipynb
├── sql/
│   └── queries.sql
├── powerbi/
│   └── dashboard.pbix
└── README.md


