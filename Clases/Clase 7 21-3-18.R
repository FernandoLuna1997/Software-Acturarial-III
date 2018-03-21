########################### FUNCIONES ###################################
  suma2 <- function(x,y){
    x+y
  }
  suma2(1,3)#4
  
  mayor10 <- function(x){
    seleccionados<- x>10
    x[seleccionados]
  }
mayor10(1:20)#11,12,13,14,15,16,17,18,19,20

mayor <- function(x, n=10){
  seleccionados <- x> n
  x[seleccionados]
}
#si no hay un argumento "n" entonces se toma por default el 10 que puse
mayor(1:20)#11,12,13,14,15,16,17,18,19,20
mayor(1:20,18)#19,20
mayor(n=18,x=1:20)#si se especifica cada variable, no es necesario 
                  #el orden

promedioCol<- function (x, quitarNA=TRUE){
  nc <- ncol(x)
  media <- vector("numeric",nc)
  for (i in 1:nc) {
    media[i] <- mean(x[,i],na.rm=quitarNA)
  }
  media
}
x<- matrix(1:100,20,5)
promedioCol(x)

f <- function(a,b){#Se nota que nota que no se usa "b" pero no hay error
  a^2
}

f(2)

f<- function(a,b){ # aqui marca error porque se utiliza b pero
  print(a)          #no se declara
  print(b)
}
f(3)

########################### ARGUMENTO "..." ####################
# "..." se usa para poner los argumentos que no se quieren volver a
#escribir
myplot <- function(x,y,type="l", ...){
  plot(x,y,type=type, ...)
}
myplot(1:10,10:1,main="Mi Gráfica")

#Tambien se ocupa cuando el numero de argumentos no puede ser conocido
#por anticipado.

mypaste <- function(sep= " ", ...){
  paste(...,sep=sep)
}
mypaste(sep="/", "Arlet", "Marie", "Susi", "Alex")

#TAREA 
install.packages("swirl")
library(swirl)

