#ESTRUCTURAS DE CONTROL
if(x>3){y <- 10} else {0}

print(1)
for(i in 1:10){print(i)}

x <- c("a","b","c","d")
for(i in 1:4){print(x[i])}

for(i in seq_along(x)){print(x[i])} #empieza en 1 hasta el número de variables que tenga

for(letra in x){print(letra)}

for(i in 1:4) print(x[i])

#crear una matriz de 1x3 sec 1 al 6
#primero fila y

m <- matrix(1:6,2,3,T)
m
for(i in m){print(i)}

x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}
