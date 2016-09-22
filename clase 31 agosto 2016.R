#clase 31/08/2016 "Factores"

#datos categóricos no necesariamente númericos
#valor de una variable 

x  <- factor(c("si","no","si","si","no","si","no")),levels = c("si","no")
x
table(x)
unclass(x) #forma en que lo almacena, en números enteros (usa menos almacenamiento)
?unclass
#orden alfabetico

x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)

#vaores faltantes
x <- c(1,2,NA,10,3) #valor faltante
is.na(x)
is.nan(x)

x <- c(1,2,NaN,10,3) #valor no númerico
is.na(x)
is.nan(x)

#data frame
x <- data.frame(Erick= 1:4, Lori=c(T,T,F,F))
x

#()nombres de las filas

row.names(x) <- c("primero","segundo","tercero","cuarto")
#cambiar de nombre las filas
x

x <- data.frame(Erick= 1:4, Lori=c(T,T,F,F))
x

nrow(x) #número de filas
ncol(x) #número de columnas
attributes(x)

names(x) <- c("Yarely","Karen")
x

#los nombres no son exclusivos de los data.frames

x <- 1:3
names(x)
names(x) <- c("Hugo","paco","luis")
x
names(x)

#en una lista:
x <- list(a=1:10,b=100:91,c=51:60)
x
names(x) <- c("Sec.1","Sec.2","Sec.3")
x

m <- matrix(1:4,2,2)
m
attributes(m)
dimnames(m) <- list(c("fil1","fil2"),c("col.1","col.2"))
m

#fila 5, columna f
m1 <- matrix(NA,5,6)
m1
dimnames(m1) <- list(c(1:5),c("a","b","c","d","e","f"))
m1


#choose directory: cambiar carpeta de trabajo

#LECTURA DE DATOS
data <- read.csv("datos_S&P.csv")
data
data <- read.table("datos_S&P.csv",T,",")
data

data <- read.table("datos_S&P.csv",F,",")
data

#76 es la forma general de 78

#clase 01/09/16

#clase 05/09/16

#para leer no toda la tabla
args(read.table)
data <- read.table("datos_S&P.csv",T,",",nrows=100, skip=2)
data
#lappy filas o columnas aplicada en una lista
#s forma simple 
#m matriz
#t vector

clases <- sapply(data,class)
data <- read.table("datos_S&P.csv",T,",",colClasses = clases)
#más fácil de leer, tipo de clase por columna

#guarfar objetos en el disco duro pero recuperables en RAM

#USO DE dput y dget
y <- data.frame(a=1,b="a") #dos culmnas, un dato
dput(y) #describe el objeto
dput(y, file= "y.r") #guarda el objeto en un archivo en particular en el disco duro
nueva.y <- dget("y.R") #trae el archivo de vuelta 
y
nueva.y

x <- "Programación Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"), file="data.R") #tomas x y y y lo guardas en el archivo data, usamos el nombre de la variable
#comillas para que no pegue programacipón sino el objeto

rm(x,y)
source("data.R")
Mónica.quality <- head(airquality)
dput(z, file("Mónica.quality.R"))

con <- url("http://www.fcfm.buap.mx/","r")
x <- readLines(con,7)
x


#SUBCONJUNTOS
#lo maneja con la misma clase del objeto
#creamos un vector
x <- c("a","b","c","d","e")
x
#extraemos con  []
x[1]
x[2]
#también podemos extraer una secuencia de elementos
x[1:4]
# es ppsible extraer los elementos que cumplen una restricci´pn
x[x>"b"]
#de manera equivalente se puede obtener un vector lógico
u <- x=="c"
u
x[u] #x evaluada en u

#SUBCONJUNTOS DE LISTAS
#creamos una lista
x <- list(foo = 1:4, bar = 0.6)
#extraemos el primer elemento de la lista,
#este elemento es una lista que contiene una secuencia
x[1] #conserva la clase (una lista)
#extramoes nuevamente el primer elemento de la lista
#ahora el elemento es la secuencia en sí 
x[[1]] #saca el objeto como tal (una secuencia)
#extraemos un elemento por nombre 
x$bar #por nombre, como el doble corchete, objeto como tal
x[["bar"]]
x["bar"]
#$ no resuelve operaciones

#para sacar un elemento en específico de una lista
x$foo[2] #saca el segundo termino




