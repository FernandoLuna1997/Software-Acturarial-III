rankhospital <- function(estado, resultado, num = "mejor") {
    
    outcome <- read.csv("outcome-of-care-measures.csv")
    
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
    
    x<- as.vector(outcome[,r])
    y<- as.vector(outcome[,7])
    z<- as.vector(outcome[,2])
    suppressWarnings(class(x)<- "numeric")
    
    tabla<- data.frame(z,y,x)
    colnames(tabla)<- c("Nombres","Estado", "Resultado")
    
    tabla2<-subset.data.frame(tabla,tabla[,"Estado"]==estado)
    tabla2<-subset.data.frame(tabla2,is.na(tabla2[,"Resultado"])==FALSE )
    tabla2<-tabla2[order(tabla2$Resultado),]
    
    if ((is.numeric(num)==TRUE)&(num<=nrow(tabla2)&(num>0))){
        
        as.character(tabla2[num,1])
        
    }  else if (num == "mejor"){
        
        as.character(tabla2[1,1])
        
    } else if (num == "peor"){
        
        as.character(tabla2[nrow(tabla2),1])
        
    } else {
        
        stop("Rank inválido")
    }
    
}
estado <- "MD"
resultado <- "ataque"
num <- "peor"
rankhospital(estado, resultado, num)