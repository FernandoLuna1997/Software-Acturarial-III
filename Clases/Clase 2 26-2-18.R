
###########################     LISTAS   ########################################
#Lista son un tipo de vector que contiene ELEMENTOS DE DIFERENTES TIPOS
# Para crear un lista se hace con función "list"
x<- list(1,"a",TRUE,3+2i,5L, 1:50)
x
# Una lista es un vector de vectores
#Todos los elemntos de la lista mantienen su clase original
#"[[1]]" indican posición
#"[1]" Indica la posicion del elemento

#############################   MATRICES   #####################################
#Son vectores con un atributo llamado dimensión, este atributo es un vector en sí
#mismos, son compuestos de dos elementos: #ncol #nrow
#para crear se usa matrix
m<- matrix(nrow= 2, ncol= 3)
m
dim(m)
attributes(m)
#COMO LLENAR UNA MATRIZ
m<- matrix(data= 1:6, nrow=2, ncol=3)
#ES LO MISMO VERLO COMO:
m<-matrix(1:6,2,3)
m
#SE LLENÓ COLUMNA POR COLUMNA

#AHORA FILA POR FILA CON "byrow"
m<- matrix(data= 1:6, nrow= 2,ncol= 3,byrow=TRUE)
m<- matrix(1:6,2,3,T)
m

#Una manera alternativa de crear una matriz, es desde un vector y
#modificar sus dimensiones
m<- 1:10
m
dim (m)<- c(2,5)
m

#Otra forma de crear matrices es: unir vectores diferentes
x<- 1:3
y<- 10:12
#Cbind, unir columnas
cbind(x,y)
#rbind, unir renglones
rbind(x,y)

################################   FACTORES    ####################################
#Se utilizan para representar datos categoricos
x <- factor(c("Si", "Si", "No", "No", "Si"))
x
#Factores con orden definido
x<- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"),
    levels=c("Rojo", "Amarillo", "Verde", "Naranja"))
x
table(x)
#Table te dice cuantas veces aparece cada categoria en el vector x
unclass(x)

#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x) #Valor faltante detectado
is.nan(x)#Valor no numerico que no es faltante

y <- c(1,2,NaN,10,3)
is.na(y) #Valor faltante detectado
is.nan(y)#Valor no numerico que no es faltante

##########################    DATA FRAMES   #########################

#Se utilizan para almacenar datos tabulares
#Es una lista en la que cada elemento debe tener la mis ma longitud
#Cada elemento puede pensarse como una columna de una matriz y la longitud
#de estos elementos el numero de filas
#A diferencia de las matrices, los data frames pueden almacenar diferentes
#clases de objetos (como listas con vectores)
#Tienen un atributo que es "row.names"
#Se crean a partir de un llamado estilo "readtable()" o "readcsv()"
#Puede convertirde en una matriz usando "data.matrix()"

x<- data.frame(Col1=1:4, Col2= c(T,T,F,F))
x
nrow(x)
ncol(x)
################## NOMBRRAR ELEMENTOS #########################################
x<- 1:3
names(x)
names(x)<- c("foo","bar","norf")
names(x)

#Las listas tambien pueden tener nombres

#Las matrices tambien
m<- matrix(1:4,2,2)
dimnames(m)<- list(c("a","b"), c("c","d"))
m