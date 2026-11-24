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
