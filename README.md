
# Ejercicios de Conjuntos: Conjuntos en Pascal y Conjuntos a través de Listas y Arrays

### Información del Proyecto

| Descripción   | Detalles                           |
|---------------|------------------------------------|
| Profesores    | Sergio Cavero y Salvador Sanchez   |
| Asignatura    | Estructuras de Datos               |
| Universidad   | Universidad Rey Juan Carlos        |
| Curso         | 2024/2025                          |


<!-- TOC -->

- [Ejercicio 1: Conjuntos en Pascal](#ejercicio-1-conjuntos-en-pascal)
- [Ejercicio 2: Conjuntos a través de Listas](#ejercicio-2-conjuntos-a-trav%C3%A9s-de-listas)
- [Ejercicio 3: Introducción a Conjuntos a través de Arrays y con función Hash](#ejercicio-3-introducci%C3%B3n-a-conjuntos-a-trav%C3%A9s-de-arrays-y-con-funci%C3%B3n-hash)
- [Ejercicio 4: Creando un HashMap: Clave - Valor](#ejercicio-4-creando-un-hashmap-clave---valor)
- [Otros ejercicios propuestos](#otros-ejercicios-propuestos)
    - [Multiset](#multiset)
    - [Añade nuevas funcionalidades a uMiConjunto.pas](#a%C3%B1ade-nuevas-funcionalidades-a-umiconjuntopas)
    - [Añade nuevas funcionalidades a uHashSet.pas y uHashTable.pas](#a%C3%B1ade-nuevas-funcionalidades-a-uhashsetpas-y-uhashtablepas)
    - [Implementación de conjuntos genéricos](#implementaci%C3%B3n-de-conjuntos-gen%C3%A9ricos)
    - [HashTable de Listas](#hashtable-de-listas)

<!-- /TOC -->


# ¿Cómo enfrentarse a los ejercicios?

Antes de comenzar con cada uno de los ejercicios: 

1. Lee detenidamente el enunciado **completo**.
2. Identifica cuál es el objetivo del ejercicio:
    - Identificar el tipo de elementos que se almacenará en la cola: 
        - Ejemplos: enteros, caracteres, registros, etc.
        - Esto va a determinar la definición de los nodos de la cola (o el tipo de array en caso de no ser una cola implementada en memoria dinámica).
    - Extender o modificar funcionalidades de la cola:
        - Ejemplos: contar el número de elementos de la cola, verificar si un elemento está en la cola, eliminar un elemento, etc.
        - Generar nuevos procedimientos o funciones requerirá utilizar las operaciones principales.
        - Es decir, nuevamente deberemos **trabajar en la propia unidad** de la cola ya que estamos extendiendo su funcionalidad. Tendremos el "rol" de implementador de la unidad.
    - Utilizar la cola para resolver un problema específico:
        - Ejemplos: verificar si una expresión aritmética está balanceada, verificar si una palabra es palíndroma, utilizarla para representar un conjunto de elementos, etc.
        - En este caso, deberemos utilizar las operaciones básicas de la unidad de la cola para resolver el problema, no podemos modificar la definición de la cola.

    
2. Abre cada uno de los archivos proporcionados y estudia el código proporcionado.
3. Haz que el programa compile y ejecútalo aunque de primeras no haga todo lo que se pide.
4. Realiza los ejercicios de manera ordenada, comprobando que cada uno de ellos funciona correctamente antes de pasar al siguiente.


# Ejercicio 1: Conjuntos en Pascal

En este ejercicio vamos a trabajar con conjuntos en Pascal. Un conjunto es una colección de elementos sin orden y sin repetición. En Pascal, los conjuntos son un tipo de dato que permite almacenar elementos de un tipo específico. En este caso, vamos a trabajar con conjuntos de enteros.

Para hacer este ejercicio debes localizar los siguientes archivos:

- `conjuntos_ej1.pas`: Programa principal en el que deberás implementar las funciones y procedimientos necesarios para trabajar con conjuntos de enteros.
- `uListaEnlazadaSimple.pas`: Unidad que contiene la definición de una lista enlazada simple. Esta unidad ya está implementada y no deberás modificarla.

Localiza el archivo `conjuntos_ej1.pas` y dentro de él, encontrarás el procedimiento `procedure eliminar_duplicados(var list: tListaSimple);`. Este procedimiento recibe una lista enlazada simple y elimina los elementos duplicados de la misma. Deberás implementar este procedimiento haciendo uso de conjuntos. 

Para ello, genera un conjunto en pascal, recorre la lista enlazada y añade los elementos a dicho conjunto. Si un elemento ya está en el conjunto, elimínalo de la lista enlazada. Al finalizar, la lista enlazada no deberá contener elementos duplicados.

Aunque este ejercicio se pueda hacer perfectamente sin utilizar conjuntos, el objetivo es que practiques con ellos y veas cómo pueden facilitar la resolución de ciertos problemas.

Resultado esperado:

```
Ejercicio: Eliminar duplicados de una lista
===========================================

Caso 1: 1 3 4 5 5 2 3  -> 1 3 4 5 2  bien.
Caso 2: 1 1  -> 1  bien.
```

# Ejercicio 2: Conjuntos a través de Listas

En este ejercicio vamos a crear un conjunto a partir de una lista enlazada simple. Para ello, deberás localizar los tres siguientes ficheros: 

- `conjuntos_ej2.pas`: Programa principal que se utilizará para comprobar que has superado el ejercicio.
- `uListaEnlazadaSimple.pas`: Unidad que contiene la definición de una lista enlazada simple. Esta unidad ya está implementada y no deberás modificarla.
- `uMiConjunto.pas`: Unidad que deberás implementar. 

Dentro de la unidad `uMiConjunto.pas` deberás implementar un conjunto en Pascal a partir de una lista enlazada simple. Para ello, deberás implementar las siguientes funciones y procedimientos:

- `procedure init(var c: tConjunto)`: Inicializa el conjunto. Esta función deberá inicializar la lista enlazada simple.
- `procedure add(var c: tConjunto; x: integer)`: Añade un elemento al conjunto. Esta función deberá añadir un elemento a la lista enlazada simple si no está ya presente.
- `procedure remove(var c: tConjunto; x: integer)`: Elimina un elemento del conjunto. Esta función deberá eliminar un elemento de la lista enlazada simple si está presente.
- `function contains(c: tConjunto; x: integer): boolean`: Comprueba si un elemento está en el conjunto. Esta función deberá devolver `true` si el elemento está en la lista enlazada simple y `false` en caso contrario.
- `function is_empty_con(c: tConjunto): boolean`: Comprueba si el conjunto está vacío. Esta función deberá devolver `true` si la lista enlazada simple está vacía y `false` en caso contrario.
- `function size(c: tConjunto): integer;`: Devuelve el número de elementos del conjunto. Esta función deberá devolver el número de elementos de la lista enlazada simple.
- `function to_string_con(c: tConjunto): string`: Devuelve una cadena con los elementos del conjunto. Esta función deberá devolver una cadena con los elementos de la lista enlazada simple.
- `procedure empty(var c: tConjunto)`: Vacía el conjunto. Esta función deberá vaciar la lista enlazada simple.
- `procedure union(c1, c2: tConjunto; var c3: tConjunto)`: Realiza la unión de dos conjuntos. Esta función deberá devolver un nuevo conjunto con los elementos de los conjuntos `c1` y `c2`. Por ejemplo, si `c1` contiene los elementos `1, 2, 3` y `c2` contiene los elementos `3, 4, 5`, el conjunto `c3` deberá contener los elementos `1, 2, 3, 4, 5`.
- `procedure intersection(c1, c2: tConjunto; var c3: tConjunto)`: Realiza la intersección de dos conjuntos. Esta función deberá devolver un nuevo conjunto con los elementos comunes de los conjuntos `c1` y `c2`. Por ejemplo, si `c1` contiene los elementos `1, 2, 3` y `c2` contiene los elementos `3, 4, 5`, el conjunto `c3` deberá contener el elemento `3`.
- `procedure difference(c1, c2: tConjunto; var c3: tConjunto)`: Realiza la diferencia de dos conjuntos. Esta función deberá devolver un nuevo conjunto con los elementos que están en `c1` pero no en `c2`. Por ejemplo, si `c1` contiene los elementos `1, 2, 3` y `c2` contiene los elementos `3, 4, 5`, el conjunto `c3` deberá contener los elementos `1, 2`.

En la siguiente figura puedes ver un ejemplo de operaciones sobre conjuntos:
![Operaciones sobre conjuntos](figs/operaciones.jpg)


Resultado esperado:

```
                        Prueba           Resultado  Resultado Esperado   OK
---------------------------------------------------------------------------
                          init                  -1                  -1  Sí
             add (un elemento)                 10                  10   Sí
           add (dos elementos)              10 20               10 20   Sí
      add (elemento duplicado)              10 20               10 20   Sí
          remove (un elemento)                 20                  20   Sí
 remove (elemento inexistente)                 20                  20   Sí
     remove (último elemento)                                          Sí
 contains (elemento existente)                  -1                  -1  Sí
contains (elemento inexistente)                   0                   0  Sí
    contains (conjunto vacío)                   0                   0  Sí
is_empty_con (conjunto vacío)                  -1                  -1  Sí
is_empty_con (conjunto no vacío)                   0                   0  Sí
        size (conjunto vacío)                   0                   0  Sí
            size (un elemento)                   1                   1  Sí
          size (dos elementos)                   2                   2  Sí
          size (con duplicado)                   2                   2  Sí
   to_string (conjunto vacío)                                          Sí
to_string (conjunto con elementos)           30 10 20            30 10 20   Sí
                         empty                                          Sí
          empty (is_empty_con)                  -1                  -1  Sí
 union (con elementos comunes)              1 2 3               1 2 3   Sí
 union (sin elementos comunes)            1 2 3 4             1 2 3 4   Sí
         union (ambos vacíos)                                          Sí
intersection (con elementos comunes)                  2                   2   Sí
intersection (sin elementos comunes)                                          Sí
intersection (un elemento común)                  1                   1   Sí
  intersection (ambos vacíos)                                          Sí
difference (con elementos comunes)                  1                   1   Sí
difference (sin elementos comunes)                1 2                 1 2   Sí
difference (un elemento común)                                          Sí
    difference (ambos vacíos)                                          Sí
   difference (segundo vacío)                  1                   1   Sí
   difference (primero vacío)                                          Sí
```


# Ejercicio 3: Introducción a Conjuntos a través de Arrays y con función Hash

En este ejercicio vamos a trabajar con conjuntos a través de arrays y con función hash. Para ello, deberás localizar los siguientes ficheros:

- `conjuntos_ej3.pas`: Programa principal que se utilizará para comprobar que has superado el ejercicio. Necesitarás implementar algunas funciones y procedimientos en este archivo.
- `uHashSet.pas`: Unidad que deberás implementar parcialmente.

El principal problema que tiene el conjunto creado en el ejercicio anterior es que una operación sobre una lista parte determinar si un elemento está no es muy eficiente. En una implementación básica, esto requerirá recorrer toda la lista para determinar si el elemento está presente o no.

La potencia de los conjuntos es justo su capacidad para determinar si un elemento está o no en el conjunto de forma muy eficiente. Para ello, se utilizan funciones hash que permiten determinar la posición de un elemento en el conjunto de forma directa.

Por ahora, de las estructuras de datos que conocemos, la manera más eficiente de determinar si algo existe es un array, en el que podemos acceder a cualquier posición en tiempo constante. Por ello, vamos a implementar un conjunto a través de un array y con función hash.

Una función hash es una función que toma un elemento y devuelve un número entero. Este número entero se utiliza para determinar la posición del elemento en el array. Por ejemplo, si tenemos un array de 10 elementos y la función hash devuelve un número entre 0 y 9, podremos determinar la posición del elemento en el array. En la siguiente imagen se muestra una representación gráfica de estos conceptos y funcionamiento. 

![Función hash](figs/hash.webp)

Ahora la pregunta es, ¿cómo se implementa una función hash? Localiza el fichero `uHashSet.pas` y dentro de él, encontrarás la función `hash_function(value: string): integer;`. Esta función recibe un valor de tipo `string` y devuelve un número entero. En este primer ejercicio (Ejercicio 3.1) Deberás implementar esta función de forma que devuelva un número entero a partir del valor de tipo `string` que recibe. Pero, ¡ojo!, ¿te has fijado que el HashSetSize está definido como un array que tiene tamaño 10? Por lo tanto, la función hash deberá devolver un número entre 0 y 9.

Vamos a hacer una primera función hash muy sencilla. La función hash deberá devolver la suma de los valores ASCII de los caracteres del string. Por ejemplo, si el string es "hola", la función hash deberá devolver 104 + 111 + 108 + 97 = 420. Si el resultado es mayor que 9, deberás devolver el resto de la división entre el resultado y 10.

Pistas:
- Puedes utilizar la función `ord` para obtener el valor ASCII de un carácter.
- Puedes utilizar la función `length` para obtener la longitud de un string.
- Puedes utilizar el operador módulo (`mod`) para obtener el resto de una división.


Una vez lo tengas, ejecuta el fichero `conjuntos_ej3.pas` y comprueba que el conjunto funciona correctamente.

Ya hemos determinado nuestra primera función hash. Ahora la pregunta inmediata que te debería surgir es... ¿y si dos strings diferentes devuelven el mismo valor? ¿Qué pasa si la suma de los valores ASCII de los caracteres de "hola" y "aloh" es la misma? ¿Cómo podemos solucionar esto? 

Esto es un problema muy común en las funciones hash y se conoce como colisión. En el fichero del programa principal, localiza el Ejercicio 3.2 y trata de buscar una palabra que produzca una colusion con alguna de las palabras previamente añadidas en el conjunto. 

En el ejercicio 3.3 que podrás localizar también en el programa principal se te pide que elabores un histograma de las colisiones. Es decir, deberás contar cuántas colusiones se producen tras añadir un conjunto de palabras al conjunto. En concreto, deberás obtener para cada letra (`for letra := 'A' to 'Z' do`) su valor tras aplicar la función hash (`i := hash_function(letra)`) y contar cuántas colisiones se producen para cada letra (`Inc(histograma[i]);`) y el total de colisiones. 

Como último ejercicio se pide que mejores la función hash. En el ejercicio 3.4 deberás implementar una función hash que evite las colisiones. Para ello, deberás modificar la función hash elaborada en el Ejercicio 3.1. Se recomiendo incrementar el número de elementos que se pueden almacenar en el conjunto. 

Algunas ideas: 
- En el caso de que haya colisión, buscar una nueva posición en el array.
- Utilizar una función hash más compleja que evite las colisiones.

Para comprobar si el número de colisiones ha disminuido, ejecuta el programa principal y comprueba que el histograma ha cambiado.

# Ejercicio 4: Creando un HashMap: Clave - Valor

Un HashMap es una estructura de datos que permite almacenar pares clave-valor. En este ejercicio, vamos a implementar un HashMap. Para ello, deberás localizar los siguientes ficheros:

- `conjuntos_ej4.pas`: Programa principal que se utilizará para comprobar que has superado el ejercicio. No debería ser necesario modificar este archivo.
- `uHashTable.pas`: Unidad que deberás implementar.

Nos vamos a centrar en la implementación de la unidad `uHashTable.pas`. En esta unidad, deberás implementar un HashMap que reciba una clave de tipo `string` y un valor de tipo `integer`. 

De manera similar al ejercicio anterior, crearemos un array de tamaño 10 y utilizaremos una función hash para determinar la posición de la clave en el array. En este caso, la función hash deberá devolver un número entre 0 y 9. Una vez localizada la posición, almacenaremos el par clave-valor en el array. 

Para ello, deberás implementar las siguientes funciones y procedimientos:

- `procedure initialize(var table: tHashTable)`: Inicializa la tabla hash. Esta función deberá inicializar la tabla hash.
- `procedure add(var table: tHashTable; key: string; value: Integer)`: Añade un par clave-valor a la tabla hash. Esta función deberá añadir un par clave-valor a la tabla hash si la clave no está ya presente. Por simplicidad, no trataremos las colisiones: si no coincide con la clave almacenada en la posición, no se añadirá.
- `procedure remove(var table: tHashTable; key: string)`: Elimina un par clave-valor de la tabla hash. Esta función deberá eliminar un par clave-valor de la tabla hash si la clave está presente.
- `function contains(table: tHashTable; key: string): Boolean`: Comprueba si una clave está en la tabla hash. Esta función deberá devolver `true` si la clave está en la tabla hash y `false` en caso contrario.
- `procedure show_table_state(table: tHashTable)`: Muestra el estado de la tabla hash. Esta función deberá mostrar el estado de la tabla hash.
- `function hash_function(key: string): Integer`: Función hash que devuelve un número entre 0 y 9. Esta función deberá devolver un número entre 0 y 9 a partir de la clave.


Resultado esperado:

```
                        Prueba                     Resultado            Resultado Esperado   OK
-----------------------------------------------------------------------------------------------
                    initialize                            -1                            -1  Sí
             add (un elemento)                 [clave1: 100]                 [clave1: 100]  Sí
           add (dos elementos)  [clave1: 100], [clave2: 200]  [clave1: 100], [clave2: 200]  Sí
               add (colisión)                     [hola: 1]                     [hola: 1]  Sí
   remove (elemento existente)                         [: 0]                         [: 0]  Sí
 remove (elemento inexistente)                 [clave2: 200]                 [clave2: 200]  Sí
 contains (elemento existente)                            -1                            -1  Sí
contains (elemento inexistente)                             0                             0  Sí
       contains (tabla vacía)                             0                             0  Sí
```

# Otros ejercicios propuestos

## Multiset

Un multiconjunto (o multiset) es una generalización de un conjunto que permite que los elementos se repitan. En este ejercicio, deberás implementar un multiconjunto a través de un array y con función hash. Entre las posibles implementaciones, se propone generar un array que almacene un contador de las veces que un elemento ha sido añadido al multiconjunto además del propio elemento.


## Añade nuevas funcionalidades a `uMiConjunto.pas`

Añade las siguientes funcionalidades:
- Diferencia simétrica de dos conjuntos: Devuelve un nuevo conjunto con los elementos que están en `c1` y en `c2` pero no en ambos. Es lo contrario de la intersección. Se puede logar como la unión de las diferencias de los conjuntos.
- Subconjunto: Devuelve `true` si `c1` es un subconjunto de `c2` y `false` en caso contrario.
- Superconjunto: Devuelve `true` si `c1` es un superconjunto de `c2` y `false` en caso contrario.
- Igualdad de conjuntos: Devuelve `true` si `c1` y `c2` son iguales y `false` en caso contrario.


## Añade nuevas funcionalidades a `uHashSet.pas` y `uHashTable.pas`

Añade las funcionalidades definidas para el conjunto `uMiConjunto.pas` a las unidades `uHashSet.pas` y `uHashTable.pas`.

## Implementación de conjuntos genéricos

Implementa conjuntos genéricos en Pascal. Para ello, usa la unidad `uTElemento.pas` que contiene la definición de un tipo de dato genérico. Deberás modificar las unidades `uMiConjunto.pas`, `uHashSet.pas` y `uHashTable.pas` para que trabajen con este tipo de dato genérico.

## HashTable de Listas

Implementa una tabla hash similar a la propuesta en el Ejericio 4, pero en lugar de almacenar un valor, almacena una lista enlazada simple.