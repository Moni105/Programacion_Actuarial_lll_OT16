setwd("~/GitHub/Programacion_Actuarial_lll_OT16/Caso2/")



mejor <- function(estado, resultado){
    #Lectura de datos
    data <- read.csv("outcome-of-care-measures.csv")
    
    estados <- unique(data$State) #validación
    if(!estado %in% estados){
        stop("Invalid State:(")
    }
    resultados <- c("ataque", "falla", "neumonia")
    if(!resultado %in% resultados){
        stop("invalid outcome :(")
    }
    
    x <- subset(data, State == estado) #data frame del estado seleccionado
    
    besthospital <- if (resultado == "ataque"){
            11 #columna de Heart Attack
        } else if (resultado == "falla") {
            17 #columna de Heart Failure
        } else {
            23 #columna de pneumonia
        } #selección de la enfermedad
    
    Ext <- x[which.min(x[,besthospital]), ]
    Ext1 <- Ext[order(Ext$Hospital.Name), ] 
    hospital <- Ext1[1,2]
    hospital
}
  class(ext)

 
 mejor("TX", "ataque")
 mejor("TX", "falla") #x
 mejor("MD", "ataque") 
 mejor("MD", "neumonia") 
 mejor("BB", "ataque")
 mejor("NY", "atakue")
    