setwd("~/GitHub/Programacion_Actuarial_lll_OT16/")

corr <- function(directorio, horizonte = 0){
  setwd("~/GitHub/Programacion_Actuarial_lll_OT16/")
  
  source("completos.R")
  cat1 <- completos(directorio)
  cat2 <- cat1[cat1["nobs"] > horizonte, ] $id
  
  cat3 <- numeric()
  
  for(i in cat2) {
    DIRF <- read.csv(paste(directorio, "/", formatC(i, width = 3, flag = "0",".csv"), sep = ""))
    cat4 <- DIRF[complete.cases(DIRF), ]
    cat3 <- c(cat3, cor(cat4$sulfate, cat4$nitrate))
  }
  return(cat3)
}
