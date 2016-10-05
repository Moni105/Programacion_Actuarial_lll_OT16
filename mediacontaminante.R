
n

mediacontaminante <- function(directorio, contaminante, id = 1:332) {
  #setwd("~/GitHub/Programacion_Actuarial_lll_OT16/")
  cat <- numeric()
  for (i in id) {
    dirF <- read.csv(paste(directorio, "/",formatC(i, width = 3, flag = "0"),".csv",sep = ""))
    cat <- c(cat, dirF[[contaminante]])
    
  }
  return(mean(cat, na.rm = TRUE))
}

mediacontaminante("specdata", "nitrate", 4:7)


getwd()

setwd("~/Documentos/")
