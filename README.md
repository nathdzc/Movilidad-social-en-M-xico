# Procesos Estocásticos Aplicados a la Movilidad Social
Manuel Acosta Sánchez  
Natalia Hernández Cornejo  
María Vara Suárez  
13 de septiembre de 2023

El estudio de la movilidad social es de gran importancia para poder brindar igualdad de oportunidades entre los individuos; sin embargo en la actualidad no se ha encontrado un método con suficiente aprobación. Esto se debe a la falta de información en las bases de datos. De cualquier manera, se han encontrado métodos que permiten analizar la movilidad social, como lo son las cadenas de Markov. 
En México, el origen socioeconómico de una persona determina en su mayor parte, su futuro. En este aspecto, las personas más aisladas, como las comunidades rurales, tendrán más dificultades para poder moverse a una clase social con mayor nivel socioeconómico. Es importante estudiar la movilidad social, ya que tiene una relación con la pobreza, con la desigualdad socioeconómica y con el crecimiento económico. Existe una correlación positiva de la movilidad con el PIB per cápita.

La movilidad social hace referencia al paso entre diferentes estados sociales en un periodo de tiempo determinado. 

A continuación mostramos cómo aplicamos un modelo de cadena de Markov a analizar la movilidad social:  
• k estados posibles  
• i es el estado de partida y j es el estado final  
• Pij es la probabilidad de pasar del estado i al j en un periodo  
• Ni es el n  ́umero de individuos en el estado i  

Nosotros nos enfocamos a dos tipos de movilidad: educacional y ocupacional.

## Movilidad Educativa
Todos los datos que utilizamos los sacamos del Centro de Estudios Espinosa Yglesias. 
En primer lugar, nos enfocaremos en la movilidad educativa entre dos generaciones a nivel nacional. 

La movilidad educativa en este modelo está conformada por seis estados, que son: personas sin estudios, primaria incompleta, primaria terminada, secundaria terminada, preparatoria y educación profesional. 
![Histograma movilidad educativa](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/hist_1.png)

A continuación, mostramos la matriz de transición en un paso obtenida de ESRU-EMOVI 2017. 
![Matriz de transición en un paso](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/tabla_1.png)

Antes de crear la cadena de Markov, mostrada a continuación, ajustamos los datos para que los renglones de la matriz  sumen el  100. 
![Cadena de Markov](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/red_1.png)

Propiedades de la cadena de Markov:  
• Estados recurrentes: {1, 2, 3, 4, 5, 6}  
• Estados transitivos: ∅  
• Estados absorbentes: ∅  
• Irreducible

Calculamos la permanencia en cada estado (los valores son en terminos de generaciones)
![Permanencia en estado](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/tabña_2.png)

## Movilidad Ocupacional

Ahora, nos enfocaremos en la movilidad ocupacional entre dos generaciones a nivel nacional. La movilidad ocupacional en este modelo está conformada por seis estados: Agrícolas, Trabajos manuales con baja calificación, Trabajos manuales con alta calificación, Comercio, Trabajos no manuales con baja calificación,Trabajos no manuales con alta calificación.

![Histograma movilidad educativa](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/hist_2.png)

Este histograma muestra los datos de la matriz de transición a continuación.  
![Histograma movilidad educativa](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/tabla_3.png)

Con ello, obtenemos la cadena de Markov.  
![Histograma movilidad educativa](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/red_2.png)

Propiedades de la cadena de Markov:  
• Estados recurrentes: {1, 2, 3, 4, 5, 6}  
• Estados transitivos: ∅  
• Estados absorbentes: ∅  
• Irreducible

Calculamos la permanencia en cada estado (los valores son en terminos de generaciones)
![Permanencia en estado](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/tabña_4.png)

Con base en los cálculos, mostraremos algunas gráficas que muestran la situación de movilidad educativa y ocupacional en cuanto a sexo (de la hija o hijo) y región del país (Norte, Centro, Sur).

![Permanencia en estado](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/edu_sexo.png)
![Permanencia en estado](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/prob_edu_esto.png)
![Permanencia en estado](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/permanencia_agricultura_sexo.png)
![Permanencia en estado](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/permanencia_MBC_sexo.png)

## Referencias
• Anders Björklund and Markus Jäntti. The Econometrics of Income and Social Mobility. Cambridge University Press, Cambridge, UK, 2005.  
• Centro de Estudios Espinosa Yglesias. ESRU – EMOVI 2017. Fundación ESRU. México, 2017







