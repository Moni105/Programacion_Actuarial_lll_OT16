x0 <- 1
tol <- 1e-8
repeat{
  x1 <- calculaEstimado(x0)
  if (abs(x1-x0) < tol){
    break
  } else{
    x0 <- x1
  }
  
}

#CREACI�N DE FUNCIONES
suma2 <- function(x,y){
  x + y
}
#correr la funci�n luego aplicar

mayorque <- function(x,n){
  x[x > n]
}

promedioCol <- function(x, quitar.NA = T){
  nc <- ncol(x)
  medias <- vector("numeric",nc)
  for(i in 1:nc){
    medias[i] <- mean(x[,i], na.rm = quitar.NA)
  }
  medias
}

#na.rm quita valores faltantes

#EVALUACI�N PEREZOSA

f <- function(a,b){
  a^2
}

#se va a evualuar una expresi�n solamente hasta que 
#se necesite usarla

f <- function(a,b){
  print(a)
  print(b)
}


args(paste)
function(..., sep = " ", collapse = NULL)
  NULL
args(cat)
function(..., file = "", sep = " ", fill = FALSE, labels = NULL, append = FALSE)
NULL 


paste("a","b",sep=":")
paste("a","b", se=":")


#completcases
#de casos completos - horizonte














