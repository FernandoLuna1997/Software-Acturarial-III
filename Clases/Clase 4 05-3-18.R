################### dump & source ##############################
#Objetos multiples pueden construirse con la funcion dump
#leerse de vuelta con source
setwd("~/GitHub/Software-Actuarial-III")
x <- "Software Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"), file="data.R")
rm(x,y)
source("data.R")

#Dump & Source trabajan con instrucciones de codigo que con dump guarda
#guarda las variables y source regresa esas variables y como se formaron

################### CONEXIONES ##############################
#Los datos se leen usando interfaces de conexiones, normalmente se
#convierten en archivos

con<- url("https://www.fcfm.buap.mx/")
x<- readLines(con)
x[7]<- ("\t<title>Nel<title>")
writeLines(x,"cambiotitulo.txt")
#Writeline escribe los que mandaste a llamar en un nuevo documento de
#otro tipo.

######################### SUBCONJUNTOS #############################
# "[" Regresa un objeto de la misma clase del original
# "[[" Extrae un elemento de una lista o data frame, solamente
#extrae uno a la vez
# "$" Extrae elementos de una lista o data frame por nombre

x <- c("a","b","c","c","d","e")
x
x[1]
x[2]
#se extraen muchos objetos en secuencia
x[1:4]
# se pueden extraer objetos que cumplen función
x[x>"b"]
# se puede extraer vectores logicos de la lista
u<- x == "c"
u
x[u]

#creamos una lista
x <- list(foo=1:4, bar=0.6)
x

x[1]
#El resultado es una lista que contiene al vector
x[[1]]
#El resultado es el vector
x$bar
#Se extrajo el vector por su nombre. Este solo funciona si tienen nombres
x["bar"]
x[["bar"]]
x <- list(foo=1:4, bar=0.6, baz= "hola")
x[c(1,3)]
x[[c(1,3)]]

name<- "baz"
x[name]
x[[name]]
x $name
#si yo quiero extraer con $ es necesario escribir el nombre del objeto

############### ANIDAR SBCONJUNTOS DE LISTAS##################
x <- list(a=list(10,12,14),b=list(3.14,2.81))
x[[c(1,2)]]
x[[1]][[3]]
#se maneja por objetos y despues la posicion determinada dentro de la otra
#lista
###################### subconjuntos de una matriz ###################
x <- matrix(1:6,2,3)
x
x[1,1]
x[2,1]
x[1,]
x[,2]
#Si yo quiero una extracción como matriz necesito un argumento
x[1,2, drop=FALSE]
x[2, , drop=FALSE]
################# subconjunto con nombres ######################
x<- list(aardvk=1:5)
x$a
x[["a"]]  
x[["a", exact=FALSE]]
