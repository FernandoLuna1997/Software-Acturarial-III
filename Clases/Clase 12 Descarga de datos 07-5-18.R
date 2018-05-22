##############3#BUSQUEDA Y CREACIÓN DE DIRECTORIOS##############################
getwd()
tail(list.files(),2)
setwd("./YouCam")
getwd()
setwd("../")
getwd()

#file.exists("directorio") revisa si el directoio existe
#dir.create("directorio") crea un directorio si no existe

if (!file.exists("data")) {
        dir.create("data")
}

#download.file() descarga un archivo de internet. Ayuda para la replicabilidad
#Sus argumentos importantes url, destfile="" 
#destfile guarda el archivo descargado en una direccion que le des en tu pc

UrlArchivo<- "Url"
download.file(UrlArchivo,destfile = "./nombre con el que se guardará.csv")
list.files("./nombre con el que se guardará.csv")
fechadedescarga <- date()
fechadedescarga
#Carga de archivos
#read.table() lee los archivos y los carga en R
#parametros importantes: file, header, sep, row.names, nrows
# file: nombre del archivo a leer, header: si tiene o no encabezados
# sep. forma en que se separará cada dato 
#EJEMPLO
camara <- read.table("./nombre con el que se guardará.csv", sep=",", header = T)
head(camara)
#otro lector sería read.csv
#read.csv(.) = read.table(., sep = ",", header = TRUE)
#parametros importantes quote: indica si existe algún comentario
#na.strings: establece un carácter a valores faltantes
#nrows: la cantidad de filas a leer
#skip: una cantidad de filas a evitar antes de iniciar la lectura

############# DESCARGA DE ARCHIVOS XLSX #########################3
install.packages("rJava")
install.packages("xlsx")
library(rJava); library(xlsx)
DatosCamara <- read.xlsx2("./nombre con el que se guardará.xlsx",sheetIndex = 1, header = TRUE)
head(DatosCamara) 

########### especificar columnas y filas ###################################
colIndex <- 2:3
rowIndex <- 1:4
subConjunto <- read.xlsx("./data/camaras.xlsx", sheetIndex = 1,
                         colIndex = colIndex, rowIndex = rowIndex)
#La función write.xlsx va a escribir un archivo de Excel y usa
#argumentos similares a read.
# read.xlsx2 es más rápida que la original, pero al leer subconjuntos
#de filas puede ser más inestable.
#El paquete XLConnect tiene más opciones de escritura y
#manipulación de archivos de Excel.
#En general, se recomienda almacenar tus datos en una base de
#datos o en comma separated files (.csv) o tab separated files
#(.tab/.txt) que son más fáciles de distribuir.

######################## Leer el archivo XML en R #############################

install.packages("XML")
library(XML)
url <- "http://www.w3schools.com/xml/simple.xml"
data <- xmlTreeParse(url,useInternalNodes = TRUE)
nodoRaiz <- xmlRoot(data)
xmlName(nodoRaiz)
names(nodoRaiz)

subConjunto
#Acceso a partes del documento
nodoRaiz[[1]] 
nodoRaiz[[1]] [[1]]
xmlSApply(nodoRaiz,xmlValue)
xpathSApply(nodoRaiz,"//name",xmlValue)
xpathSApply(nodoRaiz,"//price",xmlValue)

# extraer contenido por atributos

url <- "http://espn.go.com/nfl/team/stats/_/name/pit/pittsburgh-steelers"
doc <- htmlTreeParse(url, useInternalNodes = TRUE)
marcador <- xpathSApply(doc,"//li[@class=´score´",xmlValue)
equipos <- xpathSApply(doc,"//li[@class='team-name'",xmlValue)
marcador
equipos

####################### JSON #########################3

#java script ibject notation
install.packages("jsonlite")
library(jsonlite)
jsonData <- fromJSON("http://api.github.com/users/USUARIOGITHUB/repos")
names(jsonData)
jsonData$name

#CONVERSION DESDE json
myjson <- toJSON(iris, pretty=TRUE)
cat(myjson)
iris2 <- fromJSON(myjson)
head(iris2)


################### data.table #################
install.packages("data.table")
library(data.table)
DF = data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,3)

DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

#ver tablas en memoria
tables()
#Subconjunto de filas
DT[2,]
DT[DT$y == "a",]
#Subconjunto de filas y "columnas"
DT[c(2,3)]
DT[,c(2,3)]
#Calcular valores para variables con expresiones
DT[,list(mean(x),sum(z))]
DT[,table(y)]
#Agregar nuevas columnas
DT[, w:=z^2]
DT

DT2 <- DT
DT[, y:=2]
DT
#Hay que tener cuidado
head(DT)
head(DT2)
#Operaciones múltiples
DT[, m:={tmp<-(z+y);log2(tmp+5)}]
DT
DT[,a:x>0]
DT
DT[,b:=mean(x+w),by=a]
DT
#Variables especiales
set.seed(123)
DT<-data.table(x=sample(letters[1:3],1E5,TRUE))
DT[,.N,by=x] #.N cuenta

DT <- data.table(x=rep(letters[1:3],each=100),y=rnorm(300))
setkey(DT,x)
DT['a']

#UNIONES

DT1 <- data.table(x=c('a','a','b','dt1'),y=1:4)
DT2 <- data.table(x=c('a','b','dt2'),z=5:7)
setkey(DT1,x);setkey(DT2,x)
merge(DT1,DT2)

######################## mySQL ############################
#Los datos se almacenan en:
#- Bases de datos
#- Tablas dentro de las bases
#- Campos dentro de las tablas

######################## HDF5 #############################

###########################################################
#subconjuntos
set.seed(13435)
X <- data.frame("var1"=sample(1:5), "var2"=sample(6:10), "var3"=sample(11:15))
X<- X[sample(1:5),];X$var2[c(1,3)]=NA
X

X[,1]
X[,"var1"]
X[1:2,"var2"]

#Operadores Lógicos
X[(X$var1 <=3 & X$var3 >11),]
X[(X$var1 <=3 | X$var3 >15),]
#TRABAJAR CON VALORES FALTANTES
X[which(X$var2>8),]
#ORDENAMIENTO Sort
#Sort ordena 
sort(X$var1)
sort(X$var1,decreasing = T)
sort(X$var2, na.last=T)

#order te da el orden de como se acomoda todo
X[order(X$var1),]
order(X$var1)
