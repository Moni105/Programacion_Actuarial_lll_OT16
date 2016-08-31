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








