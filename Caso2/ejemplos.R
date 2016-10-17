library("swirl")
swirl()


11, 17, 23
factores para validar estados
de mejor a peor

airquality  

x <- subset(y, State = "TX")  
x
x <- subset(airquality, Month == 5)
x
?get

x <- subset(airquality, Month == 5)
x
z <- x[14:18,]
sort(z)
a <- order(Z)
y <- numeric()
col <- x[which.min(x[,4]),]
col3 <- order(col)
col <- x[5,]
col
col2 <- col[1,6]
col2
col3
?sort
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome) #num. de columnas
names(outcome) #nombre de las columnas
#graficar la tasa de mortalidad del hospital por 30 días
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])
summary(outcome[, 11])



estados <- factor(y[,7])
estados
levels
factor(y[,7])
levels(y[,7])
estados <- levels(y[, 7])[y[, 7]]
estados

a <- c(0, 10, 5, 3, 19, 50, NA, NA)
which.max(a)
max(a, na.rm = T)
q <- subset(airquality, Month == 5)
q
q1 <- q[which.min(q[,1]), ]
q1