USE worldanalysis;

SELECT * 
FROM ventas_supermercado_argentina_2024_2025
LIMIT 10;

1. ¿Cómo evolucionaron los ingresos por año?

SELECT
    YEAR(STR_TO_DATE(fecha, '%Y-%m-%d')) AS anio,
    SUM(precio_total) AS ingreso_total
FROM ventas_supermercado_argentina_2024_2025
GROUP BY anio
ORDER BY anio;

RESPUESTA: En 2025 los ingresos bajan levemente respecto a 2024. 
La caída es menor al 1%. No es una crisis, pero sí una señal de alerta temprana

2. ¿Cómo evolucionan las ventas mes a mes?

SELECT
    DATE_FORMAT(STR_TO_DATE(fecha, '%Y-%m-%d'), '%Y-%m') AS mes,
    SUM(precio_total) AS ingreso_mensual
FROM ventas_supermercado_argentina_2024_2025
GROUP BY mes
ORDER BY mes;

RESPUESTA: El análisis mensual revela una fuerte estacionalidad en las ventas, 
con picos recurrentes en agosto y diciembre. Sin embargo, en 2025 se observa una 
caída significativa en meses tradicionalmente estables, como febrero y abril, 
lo que contribuye a la disminución anual de ingresos.

3. ¿Los ingresos vienen por precio o por cantidad?

SELECT
    SUM(cantidad) AS unidades_vendidas,
    SUM(precio_total) AS ingreso_total,
    AVG(precio_unitario) AS precio_promedio
FROM ventas_supermercado_argentina_2024_2025;

El análisis del volumen total vendido y del precio promedio muestra que el 
negocio mantiene precios estables a lo largo del período analizado. 
Sin embargo, la leve caída de los ingresos observada en 2025 se explica principalmente 
por una disminución en la cantidad de unidades vendidas, 
lo que sugiere una reducción en la demanda o en la frecuencia de compra. 
Esto indica que las acciones correctivas deben centrarse en estrategias comerciales
 y de fidelización más que en ajustes de precios.
 
 4. ¿Qué productos generan más ingresos?
 
 SELECT
    nombre_producto,
    SUM(precio_total) AS ingreso_producto
FROM ventas_supermercado_argentina_2024_2025
GROUP BY nombre_producto
ORDER BY ingreso_producto DESC
LIMIT 10;

RESPUESTA; El análisis por producto muestra una fuerte concentración de ingresos
en pocos artículos esenciales, principalmente carnes y aceite. 
Si bien estos productos sostienen gran parte de la facturación, 
el resto de los productos cumple un rol complementario y estratégico en la
 atracción de clientes. La dependencia de un grupo reducido de productos representa
 un riesgo potencial para la estabilidad del negocio.
 
 5. ¿Hay productos que se venden mucho pero generan poco ingreso?
 
 SELECT
    nombre_producto,
    SUM(cantidad) AS unidades,
    SUM(precio_total) AS ingreso
FROM ventas_supermercado_argentina_2024_2025
GROUP BY nombre_producto
ORDER BY unidades DESC
LIMIT 10;

RESPUESTA: El análisis muestra que los productos más populares no necesariamente 
son los que generan mayores ingresos. Algunos productos, como banana y arroz, 
presentan una alta cantidad de clientes pero un bajo aporte relativo a la facturación,
 funcionando como productos gancho. En contraste, productos como carne picada, 
 aceite de girasol y pollo entero generan altos ingresos con una base de clientes 
 ligeramente menor, lo que los convierte en pilares financieros del negocio.
 
 6. ¿En qué horarios se vende más?
 
 SELECT
    hora,
    SUM(precio_total) AS ingreso
FROM ventas_supermercado_argentina_2024_2025
GROUP BY hora
ORDER BY ingreso DESC;

 RESPUESTA: El análisis por hora del día muestra que la mayor concentración de ingresos 
 se produce en la franja horaria de la tarde–noche, con un pico máximo a las 18 hs.
 Asimismo, se observa un segundo pico relevante al mediodía. Este comportamiento es 
 consistente con los hábitos de compra de los consumidores y sugiere que el 
 rendimiento del negocio está fuertemente condicionado por la disponibilidad 
 horaria de los clientes.Triggers
 
 7. ¿Clientes con mayor impacto en ingresos?
 
 SELECT
    id_cliente,
    SUM(precio_total) AS ingreso_cliente
FROM ventas_supermercado_argentina_2024_2025
GROUP BY id_cliente
ORDER BY ingreso_cliente DESC
LIMIT 10;

RESPUESTA: El análisis de los clientes con mayor gasto total acumulado evidencia 
la existencia de un segmento reducido de clientes altamente rentables, caracterizados 
por una elevada frecuencia de compra y un alto volumen de consumo. 
Estos clientes no representan casos aislados, sino comportamientos consistentes 
a lo largo del tiempo, lo que los convierte en un activo estratégico clave para el 
negocio.