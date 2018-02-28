######################## LECTURA DE DATOS #######################################
#Existen funciones como "read.table" o "read.csv" se ustan para leer datos en tablas
#"readLines" para leer lineas de textp
#"source" para leer archivos de codigo en R (OPUESTO A dump)
#"dget" para leer archivos de codigo en R(OPUESTO A dput)
#"load" para leer en espacios de trabajos guardados
# "unserialize"
# y tambien existen funciones que son analogas y son de ESCRITURA

### read.table ###
#Es una función para lectura de datos y tiene argmentos importantes:
#file: nombre de un archivo o link
#header: booleano que indica si el archivo tiene encabezado
#sep: una cadena que indica como se separan las columnas
#colClasses, un vectot que indica la clase de cada columna en un dato
#nrows numero de filas
#comment.char: caracter para comentarios
#skip: el numero de lineas a omitir desde el inicio
#stringAsFactors: los caracteres deben considerarse como factores?

### dump & dput ###
#Crean formatos editables en texto que son bastante recuperables en caso de
#corrupción de un archivo.
#Preservan la metadata, para que otros usuarios no que especificarla de nuevo
#Funcionan mejor para el control de versiones.
#Son más adecuados para compartir, debido a que en todos los sistemas existe una
#forma de leerlos

### dput & dget ##
#1 creo el objeto
y <- data.frame(a=1,b="a")
#2 estudio la manera en que se guarda
dput(y)
#3 lo guardo en mi disco duro
dput(y, file ="~/GitHub/Software-Acturarial-III/y.R")
#4 genero un nuevo objeto a partir de la info guardada
y2 <- dget(y, file ="~/GitHub/Software-Acturarial-III/y.R")
