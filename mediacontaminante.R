setwd("~/GitHub/Programacion_Actuarial_lll_OT16/specdata")
#setwd("~/GitHub/Programacion_Actuarial_lll_OT16")

mediacontaminante <- function(directorio, contaminante, id = 1:332) {
  
  directorio <- character()
  contaminante <- character()
  cat <- numeric()
  
  for (i in id){
    dir <- read.csv(paste(directorio , "/", formatC(i, width = 3, flag = "0"),".csv", sep = ""))
    cat <- c(data, dirF[[contaminante]])
    
  }
  media <- mean(cat, na.rm = TRUE)
}

mediacontaminante(specdata, nitrate, 6)



