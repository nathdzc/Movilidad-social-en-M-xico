# Procesos estocasticosaplicados a la movilidad social
Manuel Acosta Sanchez  
Natalia Hernandez Cornejo  
María Vara Suarez  
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
![Histograma movilidad educativa]([https://github.com/tu-usuario/tu-repo/blob/main/imagenes/logo.png](https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/hist_1.png)https://github.com/nathdzc/Movilidad-social-en-M-xico/blob/main/img/hist_1.png)


