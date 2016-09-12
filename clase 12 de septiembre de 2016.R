count <- 0
while(count<10)
  
z <- 5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){#caminata aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
}

#variable aleatoria bonimial: número de exitos en un intento
#valores entre 0 y 1
#(numero de intentos,un exito,con .5 probabilidad de exito)
#cada intento es independiente del anterior

# && evaluo un sólo número
#dos vecttores logicos &
#un numero v o f &&
# un sólo v o f 

#crear un vector aumentando numeros, la sec. de todos los números

z <- 5
caminata <- vector("numeric")
while(z>=3 && z<=10){
  print(z)
  caminata <- c(caminata, z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
    z <- z + 1
  } else {
    z <- z - 1
  }
}

plot(caminata, type= "l")

abajo <- 0
arriba <- 0

for(i in 1:100){
z <- 5
while(z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
    z <- z + 1
  } else {
    z <- z - 1
  }
}
if (z>5){arriba <- arriba + 1} else {abajo <- abajo +1}


}
arriba
abajo