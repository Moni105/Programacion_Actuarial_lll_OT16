#clase 25/08/16

#crear vectores CON la función vector
x <- vector(mode = "numeric", length = 5L)
x

#crear vectores con la función c
x <- c(0.5,0.6)
x
class(x)

x <- c(TRUE, FALSE)
x
class(x)

x <- 10:0
x
class(x)

x <- c(1+2i,5,3+9i,-4-5i)
x
class(x)

x <- c("a","b","c","d","e")
x
class(x)

#mezcña de objetos en el vector
y <- c(1.7,"a") #CARACTER
y
class(y)
y <- c(TRUE,2) #NUMERICO, NO TIENE L
y
class(y)
y <- c("a",TRUE) #caracter
y
class(y)
#orden de coacción explícita/coerción explícita#caracter, complejo, numerico, entero, logical
#coacción (variables del mismo tipo)

#coerción explicíta
z <- 0:6
class(z)
as.numeric(z)
as.logical(z)
as.complex(z)
as.character(z)

#LISTAS (como un vector, pero es una colección de vectores y cada uno tiene su propia clase)
x <- list(1,"a",T,2+3i)
x
class(x)

#matrices
m <- matrix(nrow = 2, ncol = 3)
m
dim(m) #dimensión
attributes(m)

#cambio de dimenciones de 2x3 a 3x2
m <- matrix(1:6,3,2)
m
dim(m) <- c(3,2)
m <- matrix(1:6,3,3,T)
m
class(m)
str(m)

#datos faltantes necesita  10, tenemos max. 9
dim(m) <- c(2,5)

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,x) #unir renglones
m1

m2 <- cbind(m,x) #unir columnas
m2

m1 <- rbind(m,y)
m1

m2 <- cbind(m,y)
m2
rbind(m1,y)
cbind(m2,y)

cbind(m2,x)
rbind(m1,x)

