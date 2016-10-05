#split
x vector, data frame
f factor o lista de factores
drop indica si los facotes vacíos deberían omitirse

?split
#separa de acuerdo a un factor, en bloques y hace una lista con ellos

x <- c(rnorm(10), runif(10), rexp(10))
f <- gl(3,10)
f
split(x,f)
lapply(split(x,f), mean)

library(datasets)
head(airquality)
#usar mes como factor
#ejercicios, separarlos por mes
s <- split(airquality, airquality[["Month"]])
#otra forma
a <- airquality[,5]
split(airquality,a)
#otra forma
split(airquality, airquality$Month)

#split en data frame

s <- split(airquality, airquality[["Month"]])
lapply(s, function(x) colMeans(x[,1:3], na.rm = T)) #de x calcula el promedio de las primeras
#3 columnas

#como todos son del mismo tamaño podemos aplicar sapply

sapply(s,function(x) colMeans(x[,1:3], na.rm = T))
#queda un data frame 

#otro ejercicio
x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)
x
str(split(x, list(f1,f2)))
?str






