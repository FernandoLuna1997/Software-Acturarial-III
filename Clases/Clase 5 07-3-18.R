################# EXTRACCIÓN VALORES FALTANTES ##########################
airquality[1:6,]
completo <- complete.cases(airquality)
data <- airquality[completo,]
data[1:6,]
#Al hacer una extracción desde un vector de lógicos, obtengo solo los
#valores TRUE

#################### OPERACIONES VECTORIZADAS ###########################
x<- 1:4; y <- 6:9
x+y
x>2
x>=2
y==8
x*y
x/y
#################### OPERACIONES CON MATRICES ##########################
x <- matrix(1:4,2,2); y<-matrix(rep(10,4),2,2)
x*y
x/y
x+y
x-y
# si quiero multiplicación de matrices
x%*%y
x;y;x%*%y
y%*%x
#################### ESTRUCTURAS DE CONTROL ###########################
#for, if, while
#repeat: ejecuta un ciclo infinito
#break: termina la ejecución de un ciclo
#next: "salta" una iteración de un ciclo
#return: sale de una función
########### IF #############

# if (<condición>){
 ##algunas instrucciones
#  } else{
  ## otras instrucciónes
#   }

# if (condición 1){
##algunas instrucciones
#  } else if(condición 2){
## otras instrucciónes
#   } else {
## algunas instrucciones
# }

x=5
if ( x > 5){
  "el numero es mayor que 5"
} else{
  "El numero es menor que 5"
}

x=7
if (x<5){
  "Menor a 5"
} else if (x<= 10){
  "entre 5 y 10"
} else {
  "Mayor a 10"
}

x=10
y<-  if(x>3) {
  10
} else {
  0
}
y
y<-  if(x>3) {
  y<- 10
} else {
  y<- 0
}
y

########## FOR #############
