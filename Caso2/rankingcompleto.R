setwd("C:/Users/fer2_/Documents/GitHub/Hospitales")

rankingcompleto <- function(resultado, num = "mejor") {
    
    outcome <- read.csv("outcome-of-care-measures.csv")
    
    if (resultado == "ataque"){
            }else if (resultado == "falla") {
                }else if (resultado == "neumonia"){
                    }else { stop("Resultado Invalido")
                            break
    }
    
    r <- if (resultado == "ataque") {
        11 
            } else if (resultado == "falla") {
                17 
                    } else {
                        23 
    }
    outcome[, r] <- suppressWarnings(as.numeric(levels(outcome[, r])[outcome[, r]]))
    outcome[, 2] <- as.character(outcome[, 2])
    Fin <- vector()
    estados <- levels(outcome[, 7])
    for(i in 1:length(estados)) {
        Tablaes <- outcome[grep(estados[i], outcome$State), ]
        Ord <- Tablaes[order(Tablaes[, r], Tablaes[, 2], na.last = NA), ]
        hos <- if(num == "mejor") {
            Ord[1, 2]
        } else if(num == "peor") {
            Ord[nrow(Ord), 2]
        } else{
            Ord[num, 2]
        }
        
        Fin <- append(Fin, c(hos, estados[i])) 
    }
    
    Fin <- as.data.frame(matrix(Fin, length(estados), 2, byrow = TRUE))
    colnames(Fin) <- c("hospital", "estado")
    rownames(Fin) <- estados
    Fin
    
}

head(rankingcompleto("ataque",20),5)
tail(rankingcompleto("neumonia","peor"),5)