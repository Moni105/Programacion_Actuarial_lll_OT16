lapply
match.fun #busca una función con el nombre que damos

x <- list(a=1:5, b=rnorm(10000))
lapply(x, mean)
sapply(x, mean)


x <- list(a=1:5, b=rnorm(10),c=rnorm(10,1), d=rnorm(10,2))
lapply(x, mean)
sapply(x, mean)
?runif

x <- 1:4
lapply(x, runif)
sapply(x, runif)

#distribución uniforme

x <- 1:4
lapply(x, runif, max = 15, min=5)
sapply(x, runif, max = 15, min=5)

#sapply simplifica el resultado de lapply

#listas de tamaño 1 regresa un vector, más de uno regresa una matriz

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)
apply(x,1,sum)

#funcionA DE FORMA MÁS GENERAL 1:FILAS, 2:COLUMNAS 

rowsums=apply(x,1,sum)
colsums=apply(x,2,sum)
rowMeans=apply(x,1, mean)
colmeans=apply(x,2, mean)



x <- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))
?quantile

#en .25 el 25%de los datos son menor que él

a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a, dims=2)

#mapply
#apply multivariable, aplica una función en paralelo a lo largo de un conjunto de argumentos

list(rep(1,4), rep(2, 3), rep(3,2), rep(4,1))
mapply(rep,1:4,4:1)
#ir haciendo pruebas

noise <- function(n, mean, sd){
    rnorm(n, mean, sd)
}

noise(5,1,2)
noise(1:5,5:1,2) #no funciona directamente pero:
mapply(noise, 1:5, 1:5,2) #funciona mejor

#tapply

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3,10) #genera niveles
f
tapply(x, f, mean)
tapply(x, f, mean, simplify = F) #lo deja como lista




