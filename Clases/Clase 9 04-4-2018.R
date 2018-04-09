########################### FUNCIONES DE CICLO #################################
# lapply: Aplica una funcion a todos los elementos de una lista
# sapply: Lo mismo que lapply pero intenta simplificar el resultado
# apply: Aplica una funcion dentro de los margenes de un arreglo
# tapply: Aplica una funcion sobre los subconjuntos de un vector
# mapply: version multivariante de lapply

lapply

x <- list(a=1:5, b=rnorm(10000))
lapply(x, mean)

x <- list(a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
lapply(x,mean)

x<- 1:4
lapply(x,runif)

x<- 1:4
lapply(x,runif, max=15, min= 5)


sapply

x <- list(a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
lapply(x,mean)
sapply(x,mean)

str(apply)
x <- matrix(rnorm(200), 20, 10)
apply(x,2,mean)
apply(x,1,sum)



