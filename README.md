Proyecto de inteligencia de negocios. Analizo datos del DENUE y de precios de combustible para ayudar a decidir donde instalar un centro de distribucion en el norte y centro de Mexico.

## Contexto
El cliente es una empresa de logistica y reparto. Su pregunta:¿en que estado conviene instalar un centro de distribucion para reducir el costo del combustible y atender la mayor concentracion de establecimientos?

## Fuentes de datos
- denue_inegi_oficial (INEGI): establecimientos de manufactura.
- precio_gasolina_estado: precios de combustible por estado.
- precio_referencia: dolar y precios nacionales,serie sintetica

## Consultas 
Estan en la carpeta consultas. La A es de la base postgres (DENUE) y la B de la base lin_news (precios). Cada archivo tiene un comentario al inicio que dice para que sirve y que resultado dio.

## Problema de calidad encontrados 
- El DENUE tiene cada establecimiento repetido 32 veces.
- El DENUE solo tiene manufactura.
- Los precios de combustible valen 0.01 en las dos tablas.
- Hay letras dañadas en los npmbres
- Hay 39 fechas futuras en precio_referencia.

## Hallazgos principales 
## Hallazgo 1: 
cada establecimiento del DENUE aparece 32 veces
- ¿Qué encontramos? La tabla del DENUE tiene muchas más filas que establecimientos distintos.
- Evidencia: 21,011,712 filas contra 656,616 claves distintas, o sea 32 veces cada una. Todos los conteos por estado son múltiplos de 32. 
- Interpretación: si contara filas, el número de establecimientos saldría 32 veces más grande de lo real. No sé por qué se repiten. 
- Técnica utilizada: validación de calidad. Comparé el total de filas con el total de claves distintas. 
- Implicación para el negocio: cualquier cifra que se tome del DENUE sin corregir esto llevaría a una decisión basada en números inflados. 

## Hallazgo 2: 
el DENUE solo trae manufactura 
- Evidencia: los códigos de actividad empiezan con 31, 32 o 33, y las más frecuentes son elaboración de tortillas, panadería y fabricación de herrería y textiles.
- Interpretación: no hay comercio ni servicios, así que mi análisis sólo describe establecimientos manufactureros, que sí pueden ser clientes de una empresa de logística pero no son todos los negocios. 
- Técnica utilizada: agrupación por sector y por actividad.Implicación para el negocio: el cliente no debe pensar que estos números representan a todos los negocios de un estado.

## Hallazgo 3: 
los establecimientos se concentran en pocos estados
- ¿Qué encontramos? Cuatro estados reúnen más de una tercera parte de los establecimientos.
- Evidencia: dividiendo entre 32, México tiene 75,916 establecimientos (11.6%), Puebla 60,624 (9.2%), Oaxaca 58,159 (8.9%) y Jalisco 37,706 (5.7%). En el norte destacan Nuevo León con 17,226 y Sonora con 13,050. 
- Interpretación: hay mucho más mercado de manufactura en el centro y sur que en el norte, y dentro del norte Nuevo León es el más grande. 
- Técnica utilizada: conteo y agrupación por estado, con porcentajes. 

##Hallazgo 4: 
casi todos los establecimientos son muy pequeños 
- ¿Qué encontramos? La gran mayoría de los establecimientos tiene muy pocas personas. 
- Evidencia: 87.9% tiene de 0 a 5 personas, 6.0% de 6 a 10, 3.1% de 11 a 30, y sólo 0.8% tiene 251 o más. 
- Interpretación: la mayoría de los clientes posibles son negocios chicos, con pedidos pequeños y muy repartidos. 
- Técnica utilizada: conteo con porcentajes. 
- Implicación para el negocio: el reparto se parece más a muchas entregas pequeñas que a pocas entregas grandes, y eso importa para diseñar rutas. 

## Hallazgo 5: 
los precios de combustible no permiten comparar estados 
- ¿Qué encontramos? Los precios de combustible por estado no cambian, y los de referencia tampoco tienen valores utilizables. 
- Evidencia: en precio_gasolina_estado, los 20,000 registros valen 0.01 (magna 6,667, premium 6,667 y diésel 6,666). En precio referencia, el promedio anual es 0.01 hasta 2014 y llega a 0.09 en 2026, con un máximo de 0.1. En cambio, el dólar sube de 0.03 en 1981 a 59.99 en 2027.
- Interpretación: los valores no pueden ser pesos por litro, así que no puedo decir qué estado tiene el combustible más barato. Solo el dólar muestra un cambio claro, y es una serie sintética.  
- Técnica utilizada: estadística descriptiva (mínimo, máximo y promedio). 
- Implicación para el negocio: la mitad de la pregunta del cliente, el costo del combustible por estado, no se puede responder con estos datos, y la decisión necesita precios reales. 






