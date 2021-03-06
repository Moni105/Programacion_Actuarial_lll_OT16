#creamos una lista de 3 elementos
x <- list(foo=1:4, bar=0.6,baz="Hola")

#Extraemos el primer y tercer elemento de la lista 
x[c(1,3)] #saca el primer y tercer t�rmino de la lista

x[[c(1,3)]] #saca el tercer elemento del primer objeto

#corcheter simples y dobles resuelven operaciones y asignaci�n de variables

#se pueden extraer elementos de los elementos extra�dos

x[[c(1,3)]] 
x[[1]][[3]] #saca el objeto tal cu�l, segundo elemento sin corchete
#lo saca como est� la componente, vector por ejem, lista
x[[c(2,1)]]

#SUBCONJUNTOS DE UNA MATRIZ
x<- matrix(1:6,2,3)
x
x[1,2]
x[1,]
x[,2]
#los resultados son vectores

#con Drop = false, se mantiene la dimensi�n y
#el resultado ser� una matriz
x[1,2, drop=FALSE]
#extrajo una matriz de una matriz
x[1, , drop=FALSE]

#R puede encontrar el nombre de algunos objetos de manera parcial
#con $, tambi�n podr�a hacerlo con [[ pero necesitar�amos decir de 
#manera explic�ta que queremos una coincidencia parcial
x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]

#MECANISMOS PARA TRABAJAR VALORES FALTANTES
airquality[1:6,] #air es un data.frame entonces el resultado
#tambi�n son un data frame

completos <- complete.cases(airquality)
completos #es un vector

#para extraer los casos completos
airquality[completos,]
airquality[completos,][1:6,]
#de completos se extrae las primeras 6 columnas 
airquality[1:6,][completos,]


#operaciones vectorizadas
x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

#vectores de distintos tama�os se repetite el menor para compensar al de mayor tama�o

#OPERACIONES CON MATRICES
x <- matrix(1:4,2,2)
x #byrow= false
y <- matrix(rep(10,4),2,2)
y
#x <- matrix(1:4,2,2,T)

x * y #entrada a entrada
x / y
x %*% y #multiplicaci�n de matrices




