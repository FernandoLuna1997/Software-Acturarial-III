##################### IDENTIFICACIÓN DE ERRORES ################################
log(-1)

imprimeMSJ <- function(x){
    if (x>0)
        print ("x es mayor que 0")
    else
        print ("x en menor o igual que 0")
    invisible(x)
}
imprimeMSJ(1)
imprimeMSJ(NA)
imprimeMSJ(-5)

### CORRECCIÓN DEL PROGRAMA ###

imprimeMSJCorregido <- function(x){
    if (is.na(x)){ 
        
        print("x no es un valor numerico")}
    
    else if (x>0)
        
        print ("x es mayor que 0")
    
    else
        
        print ("x en menor o igual que 0")
        
        invisible(x)
        
        }
imprimeMSJ(1)
imprimeMSJ(NA)
imprimeMSJ(-5)

mean(x)
traceback()

lm(y~x)
traceback()

debug(lm)
lm(y~x)
undebug(lm)
options(error=recover)
read.csv("El amor es una utopía")
?options
0
?options
options(error= stop)

########################    SIMULACIÓN  ########################################
summary(airquality)
m <- matrix(rnorm(100),10,10)
m
str(m)
summary(m)

s <- split(airquality,airquality$Month)
str(s)

####################### NUMEROS ALEATORIOS #####################################
#rnorm: genera numeros aleatorios con distribución normal
#dnorm: que tan probable es que un numero aparezca que ocurre en una distribucion aleatoria
#pnorm: te evalua la integral  por debajo de un numero dado
#qnorm: para cuantil de función

x <- rnorm(10)
x
y <- rnorm(10,50,5)
y
summary(x)
summary(y)

plot(x)
plot(y)