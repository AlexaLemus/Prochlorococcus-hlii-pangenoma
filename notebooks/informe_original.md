# 🧬 Genómica ecológica de *Prochlorococcus* HLII
## Diversidad genómica, estructura del pangenoma y variación entre genomas de cianobacterias marinas

**Área de estudio:** Ecología microbiana, genómica comparativa y bioinformática
**Organismo de estudio:** *Prochlorococcus*, clado HLII
**Número de genomas analizados:** 20
**Análisis principal:** Caracterización del pangenoma mediante Panaroo
**Herramientas:** NCBI, Prokka, Panaroo, R y Google Colab

---

## 1. INICIO DEL PROYECTO

### Introducción

El océano alberga comunidades microbianas que desempeñan funciones fundamentales en el funcionamiento de los ecosistemas y los ciclos biogeoquímicos. Entre ellas destaca *Prochlorococcus*, una cianobacteria marina fotosintética de pequeño tamaño que contribuye de manera importante a la producción primaria, especialmente en regiones oceánicas cálidas y oligotróficas.

Aunque sus células presentan una morfología relativamente simple, las poblaciones de *Prochlorococcus* muestran una notable diversidad genética y ecológica. Sus distintos linajes presentan adaptaciones relacionadas con las condiciones ambientales, la disponibilidad de nutrientes, la intensidad de la luz y otras características del medio marino.

El estudio de esta diversidad requiere ir más allá de la comparación de genes individuales. La genómica comparativa permite analizar conjuntos completos de genes, identificar aquellos compartidos por todos los genomas y distinguirlos de los que aparecen únicamente en algunos integrantes de una población o linaje.

Una estrategia para estudiar esta variación es el análisis del **pangenoma**, entendido como el conjunto total de grupos de genes identificados al comparar los genomas de un grupo de organismos relacionados.

En este proyecto se analizaron 20 genomas asociados con *Prochlorococcus* HLII para explorar su composición génica, la proporción de genes compartidos y variables, la similitud entre genomas y el comportamiento de la acumulación de grupos génicos conforme aumenta el número de genomas analizados.

### ¿Por qué estudiar el pangenoma de *Prochlorococcus*?

El análisis permite explorar tres aspectos complementarios:

- **Conservación genética:** genes compartidos que pueden estar relacionados con funciones fundamentales.
- **Variación genómica:** grupos de genes cuya presencia cambia entre los genomas analizados.
- **Diversidad entre genomas:** diferencias en la composición génica que pueden orientar futuras investigaciones sobre adaptación y diferenciación ecológica.

La presencia o ausencia de un gen no demuestra, por sí sola, que este produzca una adaptación determinada. Para establecer esa relación se requieren análisis funcionales, ecológicos y evolutivos adicionales.

---

## 2. SÍNTESIS DEL PROYECTO

Este proyecto explora la diversidad genómica de *Prochlorococcus* HLII mediante un análisis comparativo de 20 genomas disponibles públicamente. A partir de sus ensamblajes y anotaciones génicas, se plantea la construcción de un pangenoma para identificar grupos de genes compartidos y variables.

El análisis principal se realizó conceptualmente mediante un flujo de trabajo bioinformático que integra la recuperación de genomas, la anotación de genes, la agrupación de secuencias homólogas y el análisis estadístico y gráfico de la matriz de presencia y ausencia génica.

Los resultados recuperados del análisis de Panaroo identificaron **3,651 grupos de genes**, distribuidos en cuatro categorías: 1,468 grupos del genoma núcleo, 99 del núcleo flexible (*soft core*), 479 de la categoría *shell* y 1,605 de la categoría *cloud*.

Esta distribución muestra que los genomas comparados comparten una fracción importante de su repertorio génico, pero también presentan una proporción considerable de grupos cuya presencia no es universal. El resultado constituye una descripción inicial de la variación genómica de la muestra estudiada y permite formular nuevas preguntas sobre la relación entre diversidad genética y diferenciación ecológica.

**Palabras clave:** *Prochlorococcus*, HLII, genómica comparativa, pangenoma, ecología microbiana, bioinformática, Panaroo, genes núcleo, variación génica.

---

## 3. PREGUNTA DE INVESTIGACIÓN

¿Cómo se distribuyen los grupos de genes compartidos y variables entre 20 genomas de *Prochlorococcus* HLII, y qué patrones de similitud y acumulación génica pueden observarse a partir de su comparación?

### Hipótesis

Los genomas analizados compartirán un conjunto de grupos génicos conservados, relacionado con funciones celulares fundamentales, pero también presentarán una fracción variable de genes cuya distribución diferirá entre genomas.

Se espera que la comparación del repertorio génico permita reconocer distintos niveles de similitud y que la incorporación de genomas adicionales pueda incrementar el número total de grupos de genes identificados.

Esta hipótesis es exploratoria: los patrones de presencia y ausencia no permiten atribuir directamente funciones adaptativas ni demostrar mecanismos evolutivos específicos.

---

## 4. OBJETIVOS

### Objetivo general

Caracterizar la diversidad genómica de 20 genomas de *Prochlorococcus* HLII mediante el análisis comparativo de su pangenoma, identificando grupos de genes conservados y variables, así como patrones de similitud y acumulación génica.

### Objetivos específicos

1. Reunir y organizar ensamblajes genómicos públicos de *Prochlorococcus* HLII.
2. Describir las características generales de los ensamblajes utilizados.
3. Identificar y agrupar genes homólogos mediante herramientas de anotación y análisis de pangenomas.
4. Cuantificar las categorías del pangenoma: núcleo, núcleo flexible, *shell* y *cloud*.
5. Comparar la presencia y ausencia de grupos génicos entre genomas.
6. Explorar la similitud entre genomas mediante índices de comparación.
7. Evaluar la acumulación de grupos de genes conforme aumenta el número de genomas incluidos.
8. Generar visualizaciones que permitan interpretar los resultados desde una perspectiva de genómica ecológica.

---

## 5. METODOLOGÍA

### 5.1. Recuperación de datos genómicos

Se consideraron 20 ensamblajes genómicos públicos asociados con el conjunto de estudio. Los datos se identifican mediante sus números de acceso de NCBI.

Los ensamblajes constituyen la materia prima para comparar las secuencias y estudiar la distribución de los grupos de genes. La calidad y continuidad de cada ensamblaje pueden influir en la recuperación de genes y, por tanto, deben considerarse al interpretar las diferencias observadas.

### 5.2. Control y descripción de los ensamblajes

Se recopilaron métricas generales de los genomas, entre ellas:

- Longitud total del ensamblaje.
- Número de contigs.
- N50.
- Contenido de GC.

El N50 es una medida de continuidad del ensamblaje: representa la longitud a partir de la cual los contigs más largos reúnen al menos el 50 % de la longitud total del ensamblaje. En términos generales, un N50 mayor suele indicar una mayor continuidad, aunque no demuestra por sí solo que el ensamblaje sea correcto.

El contenido de GC corresponde a la proporción de guanina y citosina respecto de las bases consideradas. Puede describir diferencias composicionales, pero no identifica por sí mismo sus causas biológicas.

### 5.3. Anotación génica

La anotación permite identificar regiones codificantes y asignar características a los genes predichos. En el flujo de trabajo se consideró Prokka como herramienta de anotación de genomas procariotas.

Los archivos de anotación resultantes son la entrada necesaria para comparar los repertorios génicos entre genomas.

### 5.4. Construcción del pangenoma

Se utilizó Panaroo como herramienta para agrupar genes relacionados entre distintos genomas y generar una matriz de presencia y ausencia.

En esta matriz, cada fila representa un grupo de genes y cada columna corresponde a un genoma. Los valores indican si un grupo génico está identificado en cada ensamblaje.

A partir de la distribución de los grupos entre genomas, se distinguieron cuatro categorías:

- **Core:** grupos de genes presentes en todos los genomas analizados.
- **Soft core:** grupos presentes en una proporción muy alta de los genomas, pero no necesariamente en todos.
- **Shell:** grupos con una distribución intermedia.
- **Cloud:** grupos poco frecuentes dentro del conjunto analizado.

La definición operativa de cada categoría depende de los parámetros de Panaroo utilizados. Por ello, los umbrales exactos deben documentarse junto con la versión del programa y la configuración empleada.

### 5.5. Análisis comparativo y visualización

Se plantearon visualizaciones para examinar:

1. La composición general del pangenoma.
2. La frecuencia de los grupos génicos.
3. La similitud entre genomas.
4. Los patrones de presencia y ausencia.
5. La acumulación de grupos de genes.
6. Las características generales de los ensamblajes.

R se empleó como entorno para organizar resultados, realizar cálculos y elaborar gráficas. La interpretación se realizó considerando tanto los patrones observados como las limitaciones inherentes a los datos.

### 5.6. Flujo general de trabajo

**Genomas públicos → revisión de ensamblajes → anotación génica → agrupación de genes → matriz de presencia/ausencia → análisis comparativo → visualización e interpretación ecológica.**

---

## 6. RESULTADOS GENERALES

### 6.1. Composición del pangenoma

El análisis recuperado de Panaroo identificó un total de **3,651 grupos de genes** en los 20 genomas.

| Categoría | Grupos de genes | Porcentaje |
|---|---:|---:|
| Core | 1,468 | 40.21 % |
| Soft core | 99 | 2.71 % |
| Shell | 479 | 13.12 % |
| Cloud | 1,605 | 43.96 % |
| **Total** | **3,651** | **100 %** |

El genoma núcleo representa el 40.21 % de los grupos identificados, mientras que la categoría *cloud* representa el 43.96 %. Esto indica que, dentro de la muestra, coexisten grupos ampliamente compartidos y grupos de distribución más restringida.

La categoría *cloud* no debe interpretarse automáticamente como un conjunto de genes exclusivos de una sola cepa: incluye grupos poco frecuentes según el criterio de clasificación utilizado.

### 6.2. Características generales de los ensamblajes

Las métricas recuperadas para los 20 genomas fueron las siguientes:

| Métrica | Resultado |
|---|---:|
| Longitud media del ensamblaje | 1,674,372 pb |
| Desviación estándar de la longitud | 24,568.8 pb |
| Longitud mínima | 1,631,569 pb |
| Longitud máxima | 1,721,994 pb |
| Número medio de contigs | 6.8 |
| Desviación estándar de contigs | 12.3 |
| Mínimo de contigs | 1 |
| Máximo de contigs | 58 |
| N50 medio | 1,289,644.5 pb |
| Desviación estándar del N50 | 525,524.34 pb |
| Contenido medio de GC aproximado | 31.236 % |

El ensamblaje GCA_017644645.1 fue el más fragmentado de la muestra, con 58 contigs y un N50 de 55,587 pb. Cuatro ensamblajes se reportaron como secuencias de un solo contig: GCA_017644345.2, GCA_017644365.2, GCA_017644495.2 y GCA_017644555.2.

Estas diferencias son importantes porque la fragmentación puede afectar la detección y agrupación de genes. Por ello, los patrones de presencia y ausencia deben interpretarse considerando la calidad de los ensamblajes.

---

# 7. GALERÍA DE RESULTADOS: GRÁFICAS E INTERPRETACIÓN

**INSTRUCCIONES PARA INSERTAR LAS FIGURAS:** cada imagen debe guardarse en la carpeta `figuras/` con el nombre exacto indicado en su apartado. Las imágenes se mostrarán automáticamente cuando esos archivos estén cargados en el repositorio.

## GRÁFICA 1. DISTRIBUCIÓN DE LAS CATEGORÍAS DEL PANGENOMA

**Archivo que debes adjuntar:** `figuras/grafica_01.png`

![Gráfica 1. Distribución de las categorías del pangenoma](figuras/grafica_01.png)

### ¿Qué representa?

Muestra el número de grupos de genes clasificados como *core*, *soft core*, *shell* y *cloud*.

### ¿Qué se obtuvo?

Se identificaron 1,468 grupos *core* (40.21 %), 99 *soft core* (2.71 %), 479 *shell* (13.12 %) y 1,605 *cloud* (43.96 %).

### Interpretación

La distribución muestra dos componentes importantes: un conjunto conservado presente en todos los genomas y una fracción amplia de grupos de genes con distribución variable. Esto evidencia que los genomas comparados comparten parte de su repertorio génico, pero no presentan una composición completamente idéntica.

El resultado describe la variación observada en esta muestra y no demuestra, por sí solo, que cada grupo variable esté asociado con una adaptación ecológica específica.

---

## GRÁFICA 2. FRECUENCIA DE LOS GRUPOS DE GENES

**Archivo que debes adjuntar:** `figuras/grafica_02.png`

![Gráfica 2. Frecuencia de los grupos de genes](figuras/grafica_02.png)

### ¿Qué representa?

Describe la frecuencia con la que los grupos de genes aparecen entre los genomas analizados. Permite distinguir grupos ampliamente distribuidos de aquellos que aparecen en pocos ensamblajes.

### ¿Qué se obtuvo?

El análisis del pangenoma identificó 3,651 grupos de genes con distintas frecuencias de presencia. El número exacto de grupos en cada frecuencia debe leerse de la gráfica o recuperarse de la matriz original de Panaroo.

### Interpretación

La distribución de frecuencias permite observar cómo se reparte la variación génica entre los genomas. Los grupos frecuentes representan componentes compartidos por buena parte de la muestra, mientras que los grupos raros pueden reflejar variación biológica, diferencias en la anotación o limitaciones de los ensamblajes.

La frecuencia de un grupo no basta para determinar su función ni su importancia ecológica.

---

## GRÁFICA 3. PROPORCIÓN RELATIVA DE LAS CATEGORÍAS DEL PANGENOMA

**Archivo que debes adjuntar:** `figuras/grafica_03.png`

![Gráfica 3. Proporción de las categorías del pangenoma](figuras/grafica_03.png)

### ¿Qué representa?

Presenta la composición del pangenoma en proporciones, facilitando la comparación entre las categorías sin depender únicamente de sus cantidades absolutas.

### ¿Qué se obtuvo?

El *cloud* representa la fracción más grande, con 43.96 %, seguido del *core*, con 40.21 %. El *shell* representa 13.12 % y el *soft core*, 2.71 %.

### Interpretación

La proporción elevada de grupos *cloud* indica que una parte considerable del repertorio génico identificado tiene una distribución restringida dentro de los 20 genomas. Al mismo tiempo, el porcentaje del *core* muestra que existe un conjunto amplio de genes compartidos por toda la muestra.

Esta gráfica resume los mismos resultados que la Gráfica 1, pero en términos proporcionales; no constituye un análisis independiente.

---

## GRÁFICA 4. MATRIZ DE SIMILITUD ENTRE GENOMAS

**Archivo que debes adjuntar:** `figuras/grafica_04.png`

![Gráfica 4. Matriz de similitud entre genomas](figuras/grafica_04.png)

### ¿Qué representa?

La matriz de similitud compara los genomas entre sí mediante un índice de Jaccard aplicado a sus conjuntos de genes.

En términos generales, el índice de Jaccard compara los elementos compartidos con el total de elementos presentes en al menos uno de los dos conjuntos. Un valor mayor representa una mayor similitud en la composición comparada.

### ¿Qué se obtuvo?

La matriz permite examinar las semejanzas y diferencias en la presencia y ausencia de grupos de genes entre los genomas. Los valores numéricos específicos de cada comparación deben consultarse en la matriz original o en la figura conservada.

### Interpretación

Los patrones de similitud pueden ayudar a identificar genomas con repertorios génicos parecidos y otros con composiciones más diferentes.

Sin embargo, una matriz basada en presencia y ausencia de genes no equivale a un árbol filogenético. Para inferir relaciones evolutivas se necesitarían análisis específicos, por ejemplo, con genes conservados o modelos filogenéticos apropiados.

---

## GRÁFICA 5. PATRONES DE PRESENCIA Y AUSENCIA DE GENES VARIABLES

**Archivo que debes adjuntar:** `figuras/grafica_05.png`

![Gráfica 5. Presencia y ausencia de genes variables](figuras/grafica_05.png)

### ¿Qué representa?

Es un mapa de calor de 100 grupos de genes variables seleccionados para visualizar su distribución entre los genomas.

Cada fila representa un grupo génico y cada columna un genoma. Los colores indican la presencia o ausencia según la codificación de la gráfica.

### ¿Qué se obtuvo?

La figura permite observar patrones de distribución no uniforme de los grupos seleccionados. Los valores individuales de cada fila deben interpretarse a partir de la imagen y, para un análisis cuantitativo completo, de la matriz de presencia y ausencia.

### Interpretación

El mapa facilita la identificación de grupos compartidos por subconjuntos de genomas y de otros con distribuciones más restringidas. Estos patrones pueden servir para formular hipótesis sobre diferenciación genómica.

No obstante, la figura no demuestra que los genes representados sean exclusivos de un ambiente ni que produzcan una adaptación determinada. Para evaluar esas posibilidades sería necesario integrar información funcional, ambiental y evolutiva.

---

## GRÁFICA 6. CURVA DE ACUMULACIÓN DEL PANGENOMA

**Archivo que debes adjuntar:** `figuras/grafica_06.png`

![Gráfica 6. Curva de acumulación del pangenoma](figuras/grafica_06.png)

### ¿Qué representa?

Muestra cómo cambia el número acumulado de grupos de genes al incorporar progresivamente más genomas al análisis.

La curva recuperada se construyó considerando 300 órdenes aleatorios de incorporación de los genomas y un intervalo del 95 %, con el propósito de representar la variación asociada con el orden de incorporación.

### ¿Qué se obtuvo?

Con los 20 genomas analizados, el pangenoma alcanzó un total de 3,651 grupos de genes. La curva permite examinar cómo se incrementa el repertorio génico conforme aumenta el número de genomas incluidos.

### Interpretación

La curva sirve para evaluar si la incorporación de nuevos genomas continúa aportando grupos génicos o si la acumulación comienza a estabilizarse.

No debe concluirse que el pangenoma sea abierto o cerrado únicamente a partir del total final o de la apariencia de la curva. Esa clasificación requiere evaluar el comportamiento de la acumulación y, de ser necesario, ajustar modelos estadísticos específicos.

Además, las 300 permutaciones representan órdenes alternativos de incorporación de los mismos genomas; no equivalen a 300 muestras biológicas independientes.

---

## GRÁFICA 7. CONTENIDO DE GC POR ENSAMBLAJE

**Archivo que debes adjuntar:** `figuras/grafica_07.png`

![Gráfica 7. Contenido de GC por ensamblaje](figuras/grafica_07.png)

### ¿Qué representa?

Compara el porcentaje de guanina y citosina (GC) de los ensamblajes incluidos en el estudio.

### ¿Qué se obtuvo?

El contenido medio de GC reportado fue de aproximadamente 31.236 %.

### Interpretación

El contenido de GC permite describir la composición de bases de los genomas y explorar posibles diferencias entre ensamblajes.

Las variaciones deben interpretarse con cautela. Por sí solas, no permiten identificar mecanismos de adaptación, presión selectiva ni diferencias funcionales. Para evaluar esas relaciones sería necesario integrar otros datos y análisis.

---

## GRÁFICA 8. FRAGMENTACIÓN DE LOS ENSAMBLAJES

**Archivo que debes adjuntar:** `figuras/grafica_08.png`

![Gráfica 8. Fragmentación de los ensamblajes](figuras/grafica_08.png)

### ¿Qué representa?

Compara el número de contigs de los ensamblajes. Un mayor número de contigs suele reflejar una representación más fragmentada del genoma, aunque no constituye por sí solo una medida completa de calidad.

### ¿Qué se obtuvo?

El número medio fue de 6.8 contigs por ensamblaje. El mínimo fue de un contig y el máximo de 58. El ensamblaje GCA_017644645.1 presentó 58 contigs y un N50 de 55,587 pb.

Cuatro ensamblajes se reportaron como secuencias de un solo contig: GCA_017644345.2, GCA_017644365.2, GCA_017644495.2 y GCA_017644555.2.

### Interpretación

Las diferencias de continuidad entre ensamblajes constituyen un factor metodológico importante. Un gen que no se detecta en un ensamblaje fragmentado podría estar ausente biológicamente, pero también podría no haberse recuperado o anotado correctamente.

Por ello, la interpretación de la matriz de presencia y ausencia debe considerar la calidad de los ensamblajes y no asumir que toda ausencia corresponde necesariamente a una diferencia biológica real.

---

## GRÁFICA 9. COMPOSICIÓN ALTERNATIVA DEL PANGENOMA

**Archivo que debes adjuntar:** `figuras/grafica_09.png`

![Gráfica 9. Composición alternativa del pangenoma](figuras/grafica_09.png)

### ¿Qué representa?

Presenta nuevamente la composición relativa del pangenoma mediante una visualización alternativa.

### ¿Qué se obtuvo?

Se representa la distribución de 3,651 grupos de genes entre *core*, *soft core*, *shell* y *cloud*.

### Interpretación

Esta visualización permite apreciar de manera rápida la proporción relativa de las categorías. La fracción *cloud* es la más grande, mientras que el *core* constituye una parte importante del total.

Si esta gráfica utiliza los mismos datos que la Gráfica 3, debe considerarse una presentación alternativa del mismo resultado y no una evidencia independiente.

---

## GRÁFICA 10. DISTRIBUCIÓN DEL CONTENIDO DE GC

**Archivo que debes adjuntar:** `figuras/grafica_10.png`

![Gráfica 10. Distribución del contenido de GC](figuras/grafica_10.png)

### ¿Qué representa?

Muestra la distribución de los valores de contenido de GC entre los ensamblajes.

### ¿Qué se obtuvo?

El contenido medio de GC reportado fue de aproximadamente 31.236 %. La forma exacta de la distribución, su dispersión y la posible presencia de valores extremos deben evaluarse directamente en la gráfica.

### Interpretación

El histograma permite observar si los valores de GC se concentran en un intervalo estrecho o presentan mayor variación entre ensamblajes.

La media resume la tendencia central, pero no describe por sí sola toda la distribución. Además, diferencias composicionales pueden relacionarse con múltiples factores y no deben atribuirse directamente a adaptación ecológica sin pruebas adicionales.

---

## GRÁFICA 11. LONGITUD DE LOS ENSAMBLAJES GENÓMICOS

**Archivo que debes adjuntar:** `figuras/grafica_11.png`

![Gráfica 11. Longitud de los ensamblajes](figuras/grafica_11.png)

### ¿Qué representa?

Compara la longitud total de los ensamblajes genómicos incluidos en el estudio.

### ¿Qué se obtuvo?

La longitud media fue de 1,674,372 pb, con una desviación estándar de 24,568.8 pb. La longitud mínima reportada fue de 1,631,569 pb y la máxima de 1,721,994 pb.

### Interpretación

La gráfica permite comparar el tamaño de los ensamblajes y reconocer diferencias entre los genomas incluidos en la muestra.

Las diferencias de longitud pueden reflejar variación biológica, pero también pueden verse afectadas por la calidad del ensamblaje y la anotación. Por ello, el tamaño total no debe interpretarse directamente como una medida de complejidad biológica o capacidad adaptativa.

---

## GRÁFICA 12. COMPARACIÓN ALTERNATIVA DE LA FRAGMENTACIÓN

**Archivo que debes adjuntar:** `figuras/grafica_12.png`

![Gráfica 12. Comparación alternativa de la fragmentación](figuras/grafica_12.png)

### ¿Qué representa?

Presenta una comparación adicional del número de contigs por ensamblaje.

### ¿Qué se obtuvo?

Se recuperó una media de 6.8 contigs, con un mínimo de uno y un máximo de 58. El ensamblaje GCA_017644645.1 presentó el mayor número de contigs.

### Interpretación

Esta figura permite identificar rápidamente los ensamblajes más continuos y los más fragmentados. Su lectura complementa la Gráfica 8, aunque ambas representan la misma métrica si fueron generadas a partir de los mismos datos.

La fragmentación debe considerarse al interpretar la ausencia de genes y las diferencias en el número de grupos génicos identificados.

---

## 8. FIGURA INTEGRADORA DEL PROYECTO

**Archivo que debes adjuntar:** `figuras/figura_integradora.png`

![Figura integradora del análisis de genómica ecológica de Prochlorococcus](figuras/figura_integradora.png)

### ¿Qué integra?

La figura reúne cuatro componentes del análisis:

1. **Composición del pangenoma:** muestra la proporción de grupos génicos conservados y variables.
2. **Curva de acumulación:** permite observar cómo aumenta el repertorio génico conforme se incorporan genomas.
3. **Matriz de similitud:** compara la composición génica entre los genomas.
4. **Fragmentación de los ensamblajes:** presenta una métrica relevante para valorar la interpretación de los resultados.

### Interpretación general

La figura integra la composición génica, la acumulación de grupos de genes, las semejanzas entre genomas y las características de los ensamblajes. En conjunto, permite examinar la diversidad genómica desde distintas perspectivas.

La interpretación más sólida es que los genomas analizados comparten un conjunto importante de grupos génicos, pero también presentan una fracción considerable de grupos con distribución restringida. La calidad de los ensamblajes constituye un factor que debe tenerse presente al evaluar esos patrones.

---

## 9. DISCUSIÓN GENERAL

Los resultados recuperados muestran que el pangenoma de los 20 genomas estudiados contiene 3,651 grupos de genes. La distribución entre las categorías indica que el conjunto incluye tanto genes compartidos por todos los genomas como grupos cuya presencia es más restringida.

La proporción del genoma núcleo, equivalente al 40.21 % de los grupos identificados, refleja un componente conservado dentro de la muestra. Por otra parte, el 43.96 % asignado a *cloud* evidencia que una fracción importante de los grupos génicos no está ampliamente distribuida entre los genomas analizados.

Estos resultados son compatibles con la existencia de variación en la composición génica de *Prochlorococcus* HLII, pero no bastan para explicar las causas de dicha variación. La presencia o ausencia de genes puede estar relacionada con procesos biológicos, historia evolutiva, condiciones ambientales o limitaciones técnicas de los datos.

La comparación de similitud basada en Jaccard ofrece una forma de examinar las diferencias en los repertorios génicos. Sin embargo, estas similitudes no deben confundirse con relaciones filogenéticas: dos genomas pueden compartir un repertorio génico parecido sin que el índice utilizado constituya una reconstrucción de su historia evolutiva.

La curva de acumulación aporta una perspectiva complementaria al mostrar cómo cambia el número de grupos de genes conforme se incorporan genomas. Su comportamiento puede orientar futuras decisiones sobre el tamaño de la muestra necesario para describir mejor el pangenoma. Para clasificarlo formalmente como abierto o cerrado, se requiere evaluar el modelo y los criterios estadísticos correspondientes.

Finalmente, las diferencias de longitud, N50 y número de contigs muestran que los ensamblajes no tienen todos el mismo grado de continuidad. Esta variación puede afectar la recuperación de genes y debe considerarse una fuente potencial de incertidumbre al interpretar los patrones de presencia y ausencia.

En conjunto, el análisis demuestra la utilidad de la genómica comparativa para describir la diversidad de los repertorios génicos y establecer una base para futuras investigaciones sobre la ecología y evolución de microorganismos marinos.

---

## 10. CONCLUSIONES

1. Se recuperó un total de 3,651 grupos de genes en el pangenoma de los 20 genomas analizados.
2. La categoría *core* comprendió 1,468 grupos de genes, equivalentes al 40.21 % del total.
3. La categoría *cloud* fue la más numerosa, con 1,605 grupos de genes, equivalentes al 43.96 %.
4. Las categorías *soft core* y *shell* representaron el 2.71 % y el 13.12 %, respectivamente.
5. La matriz de presencia y ausencia y la comparación mediante Jaccard permiten explorar semejanzas y diferencias en la composición génica entre genomas.
6. La curva de acumulación ofrece una herramienta para examinar la contribución de genomas adicionales al repertorio génico observado.
7. Las diferencias de continuidad entre ensamblajes deben considerarse al interpretar la ausencia de genes y la variación del pangenoma.
8. Los resultados constituyen una caracterización descriptiva inicial. No demuestran por sí solos asociaciones causales entre grupos génicos y adaptaciones ecológicas.

### Conclusión final

El análisis comparativo del pangenoma de *Prochlorococcus* HLII permite reconocer una combinación de grupos de genes conservados y variables dentro de los 20 genomas estudiados. Esta estructura proporciona un punto de partida para investigar cómo se distribuye la diversidad genómica en microorganismos marinos y cómo puede relacionarse, mediante análisis posteriores, con la diferenciación ecológica y evolutiva.

La integración de genómica, bioinformática y ecología ofrece una estrategia para transformar grandes conjuntos de secuencias en preguntas biológicas contrastables. El siguiente paso consiste en recuperar la matriz original, verificar los parámetros del análisis y relacionar los grupos génicos con anotaciones funcionales y datos ambientales.

---

## 11. LIMITACIONES Y CONSIDERACIONES

- El análisis se limita a los 20 genomas incluidos; no representa necesariamente toda la diversidad de *Prochlorococcus* HLII.
- Los resultados dependen de la calidad de los ensamblajes, la anotación y los parámetros utilizados para agrupar genes.
- Una ausencia en la matriz no siempre demuestra una ausencia biológica real.
- Los grupos de genes no pueden asignarse a una función ecológica únicamente a partir de su frecuencia.
- La matriz original de Panaroo debe conservarse para reproducir las frecuencias exactas, los valores de similitud y los patrones individuales de presencia y ausencia.
- Las gráficas alternativas que utilizan los mismos datos sirven para mejorar la presentación, pero no representan resultados independientes.
- Los valores estadísticos reportados deben verificarse contra los archivos de salida originales antes de considerar el análisis completamente reproducible.

---

## 12. ORGANIZACIÓN SUGERIDA DEL REPOSITORIO

La siguiente estructura permite mantener los datos, las imágenes y el código organizados:

```text
prochlorococcus-genomica-ecologica/
│
├── README.md
│
├── datos/
│   ├── accesiones_genomicas.csv
│   ├── resumen_pangenoma.csv
│   ├── resumen_metricas_genomicas.csv
│   └── matriz_presencia_ausencia.csv
│
├── figuras/
│   ├── grafica_01.png
│   ├── grafica_02.png
│   ├── grafica_03.png
│   ├── grafica_04.png
│   ├── grafica_05.png
│   ├── grafica_06.png
│   ├── grafica_07.png
│   ├── grafica_08.png
│   ├── grafica_09.png
│   ├── grafica_10.png
│   ├── grafica_11.png
│   ├── grafica_12.png
│   └── figura_integradora.png
│
├── scripts/
│   ├── analisis_pangenoma.R
│   └── visualizacion_resultados.R
│
└── referencias/
    └── fuentes.md
```

**Nota:** esta es una estructura recomendada, no una confirmación de que todos esos archivos ya existan. La matriz de presencia y ausencia debe incorporarse cuando se recupere o regenere desde Panaroo.

---

## 13. DATOS GENÓMICOS UTILIZADOS

Los siguientes números de acceso corresponden a los 20 ensamblajes considerados en el análisis:

1. GCA_017644295.2
2. GCA_017644325.1
3. GCA_017644345.2
4. GCA_017644365.2
5. GCA_017644375.1
6. GCA_017644405.1
7. GCA_017644425.1
8. GCA_017644445.2
9. GCA_017644465.2
10. GCA_017644485.1
11. GCA_017644495.2
12. GCA_017644525.1
13. GCA_017644545.2
14. GCA_017644555.2
15. GCA_017644585.2
16. GCA_017644605.2
17. GCA_017644615.2
18. GCA_017644645.1
19. GCA_017644665.1
20. GCA_017644685.2

Los ensamblajes pueden consultarse en las bases de datos de NCBI mediante sus respectivos números de acceso. Para garantizar la reproducibilidad, se recomienda conservar también los metadatos, las versiones de los ensamblajes, las anotaciones y los parámetros empleados durante el análisis.

---

## 14. REPRODUCIBILIDAD Y TRABAJO FUTURO

Para reproducir y ampliar los resultados se recomienda:

1. Recuperar los 20 ensamblajes a partir de sus números de acceso.
2. Confirmar que las versiones descargadas corresponden a las utilizadas originalmente.
3. Ejecutar o recuperar las anotaciones génicas.
4. Ejecutar Panaroo con parámetros documentados y guardar todos sus archivos de salida.
5. Exportar la matriz de presencia y ausencia.
6. Recalcular las frecuencias y porcentajes del pangenoma.
7. Regenerar la matriz de Jaccard, el mapa de calor y la curva de acumulación.
8. Verificar las métricas de longitud, N50, contigs y GC.
9. Relacionar los grupos génicos con sus anotaciones funcionales.
10. Incorporar metadatos ambientales cuando estén disponibles para evaluar hipótesis ecológicas.

---

## 15. FUENTES Y HERRAMIENTAS

- **NCBI Assembly:** repositorio de ensamblajes genómicos y sus metadatos. https://www.ncbi.nlm.nih.gov/assembly/
- **NCBI BioProject:** información de proyectos de secuenciación. https://www.ncbi.nlm.nih.gov/bioproject/
- **Prokka:** anotación rápida de genomas procariotas. https://github.com/tseemann/prokka
- **Panaroo:** análisis de pangenomas y agrupación de genes. https://github.com/gtonkinhill/panaroo
- **R Project:** entorno para análisis estadístico y gráficos. https://www.r-project.org/
- **Google Colab:** entorno para ejecutar código en notebooks. https://colab.research.google.com/

### Consideración bibliográfica

La documentación de las herramientas describe sus funciones y procedimientos, pero no sustituye las referencias científicas sobre la biología de *Prochlorococcus*. Para una versión académica definitiva, deben añadirse las publicaciones específicas que fundamenten el contexto ecológico del clado HLII y el método de análisis de pangenomas.

---

## 16. ESTADO DEL PROYECTO

Este repositorio presenta la pregunta de investigación, el flujo metodológico, los resultados numéricos recuperados y la estructura propuesta para documentar las visualizaciones.

Los resultados agregados del pangenoma y las métricas generales de los ensamblajes se presentan como valores reportados del análisis previo. Las frecuencias detalladas, la matriz original y los valores individuales de las comparaciones deben verificarse mediante los archivos de salida de Panaroo antes de declarar el análisis completamente reproducible.

**Objetivo final:** documentar de forma clara y reproducible cómo la comparación de genomas permite describir los componentes conservados y variables del pangenoma de *Prochlorococcus* HLII, y establecer una base para futuras preguntas de genómica ecológica.
