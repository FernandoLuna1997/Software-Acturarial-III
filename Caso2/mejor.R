setwd("C:/Users/fer2_/Documents/GitHub/Hospitales")
    
mejor <- function(estado, resultado){
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    if (resultado == "ataque"){
        r <- 11
            }else if (resultado == "falla") {
                r <- 17
                    }else if (resultado == "neumonia"){
                     r <- 23
                            }else { stop("Resultado Invalido")
                             break
                              }
    
    a <- unique(outcome[,7])
    b <- FALSE
    
    for (i in 1:length(a)) {
        
        if (estado == a[i]) {
            b <- TRUE
        }
    }
    
    if (b == FALSE)  {
        stop ("Estado Invalido")
    }
    
    
    n <- nrow(outcome)
    
    x <- matrix(outcome[,r],n,1)
    outcome[,r] <- suppressWarnings(as.numeric(x))
    outcome[,2] <- as.character(outcome[,2])
    y <- outcome[grep(estado, outcome$State), ]
    ord <- y[order(y[,r], y[,2], na.last=NA), ]
    z <- matrix(outcome[,7], n,1)
    ord[1,2]
}

estado <- "MD"
resultado <- "falla"
mejor(estado, resultado)
