x <- 
    set.seed(1)
z <- 5
contador <- 0
while (z>=3 && z<=10) {
    print(z)
    x <- c(x ,z)
    moneda <- rbinom(1,1,0.5) 
    if(moneda==1){ #caminata aleatoria  
        z <- z+1
    }else{
        z <- z-1
    }
    contador <- contador+1
}
contador
x

