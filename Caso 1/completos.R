setwd("~/GitHub/Programacion_Actuarial_lll_OT16/")

completos <- function(directorio, id = 1:332){
  
  nobs <- numeric()
   
  for (i in id){
    DIR <- read.csv(paste(directorio, "/", formatC(i, width = 3, flag = "0"), ".CSV", sep = ""))
    nobs <-c(nobs, sum(complete.cases(DIR)))
    
    
  }
  return(data.frame(id, nobs))
}

