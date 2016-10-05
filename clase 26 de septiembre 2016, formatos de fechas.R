hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia(2)

cubica(3)
cuadrada(2)

#funciones que crean funciones

#entorno de la función
ls(environment(cubica))
get("n",environment(cubica))

ls(environment(cuadrada))
get("n",environment(cuadrada))

#resoluciones:
#algebráica: 3 + 3 x 3 = 12
#cadena: 3 + 3 x 3 = 18 

y <- 10

f <- function(x){
  y <- 2
  y^2 + g(x)
}

g <- function(x){
  x*y
}

f(3)
#en vba 10, en r 34
#vba dinámico

prueba a 4 espacios
#tabulacion
    tabulacion
    
    
#leer datos, separarlos, procesarlos, generar un reporte
#formatos de fecha 
x <- as.Date("1987-06-022") #pasó 0 dias
x
unclass(x)
unclass(as.Date("1970-01-02")) #pasó 1 día


date()
as.POSIXct.date
as.POSIXlt()

date()
x <- as.date("1987-06-022")
as.POSIXct(x)
as.POSIXct(x)



