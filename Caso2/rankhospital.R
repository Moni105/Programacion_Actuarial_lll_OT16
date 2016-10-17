setwd("~/GitHub/Programacion_Actuarial_lll_OT16/Caso2/")

rankhospital <- function(estado, resultado, num = "mejor") {
    #Lectura de datos 
    data <- read.csv("outcome-of-care-measures.csv")
    
    #Validación
    estados <- unique(data$State) 
    if(!estado %in% estados){
        stop("Invalid State:(")
    }
    resultados <- c("ataque", "falla", "neumonia")
    if(!resultado %in% resultados){
        stop("invalid outcome :(")
    }
    
    
    col <- if (resultado == "ataque") {
        11 #columna de Heart Attack
    } else if (resultado == "falla") {
        17 #columna de Heart Failure
    } else {
        23 #columna de pneumonia
    }    
    
    data[, col] <- suppressWarnings(as.numeric(levels(data[, col])[data[, col]]))
    data[, 2] <- as.character(data[, 2])
    
    DataEstado <- data[grep(estado, data$State), ]
    
    Ordenar_Data <- DataEstado[order(DataEstado[, col], DataEstado[, 2], na.last = NA), ]
    if(num == "mejor") {
        Ordenar_Data[1, 2]
    } else if(num == "peor") {
        Ordenar_Data[nrow(Ordenar_Data), 2]
    } else{
        Ordenar_Data[num, 2]
    }
}

rankhospital("TX", "fallis", 4)
rankhospital("MD", "ataque", "peor") 
rankhospital("MN", "ataque", 5000)
