lm
lm <- function(x){x*x}
lm
rm(lm) #remove of memory
lm

#¿cómo saber si es lm (regresión llineal) o lm (la función que acabamos de inventar)?
#regresa a la original después de remover
#la función renombrada
#regresión lineal en stats
#cada variabe se guarda en distintos espacios dependiendo de la fun.

search()
library("stats")
#cargar los paquetes de forma posible
#tarda menos en encontrarlas
#ámbito lexicológico 

x <- 1
g <- function(x){ 
  print(x)
  x <- 2}
x

