setwd("~/GitHub/Programacion_Actuarial_lll_OT16")

completos <- function(directorio, id = 1:332){
  directorio <- character()
  enteros <- integer()
  nobs <- numeric()
   
  for (i in id){
    DIR <- read.csv(paste(directorio, "/", formatC(i, width = 3, flag = "0"), ".CSV", sep = ""))
    nobs <-c(nobs, sum(complete.cases(DIR)))
    
    
  }
  return(data.frame(id, nobs))
}

#Profesor no encuentro el error en mi código, me dice que el error está 
#en paste (para el nombre del directorio de 1 en 1), pero no supe cómo arreglarlo
