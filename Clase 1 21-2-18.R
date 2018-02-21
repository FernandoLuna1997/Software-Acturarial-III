#Aquí se realiza una asignación
x <- 1
x <- 2
# print me sirve para que se visualice la asignación
print(x)
#ó tambien se puede una impresión implicita
x
# La asignación se puede hacer tambien con textos
msg <- "Hola"
print(msg)

x <- #expresión invompleta
#"En caso de una expresión incompleta, se puede utilizar "esc"..."
#"...para salir de esa variable en la consola"
3
  #TRABAJO DE ARREGLOS O ASIGNACIÓN DE ELLOS
X <- 1:20
print(X)

y <- 3:9
y
 

z <- 99:43
z
#El operador ":" me permite hacer secuencias numericas de un punto a otro

v <- 3:14.5
v
#En el caso de trabajar con decimales, me genera secuencias con enteros en función piso

#LOS TIPOS DE OBJETOS EN R SON 5:
#-Caracteres (caracter)
#-Números (numeric)
#-Enteros (integer)
#-Números (complex)
#-Booleanos (logical)

# El objeto básico de almacenamiento es de un  VECTOR
#El vector solo puede contener objetos de una sola clase
#Se puede crear un vector vacio con la función vector ()

#Cuando quieras trabajar con numeros, por lo general
#se utilizan como numeros reales ,
# pero si quieres trabajar con enteros puedes usar "L" como sufijo:
#1 es valor numerico, pero 1L es un entero

# R puede trabajar con infinitos "Inf"
Inf
exp(Inf)
exp(-Inf)
Inf-Inf
Inf+Inf
Inf*Inf
Inf/Inf
#Nan es "Not a Number"

    # ATRIBUTOS
#Los objetos en R tienen atributos como:
#Nombre, Dimensión, clases, etc...
#Con la función attributes(variable)
attributes(z)

    # VECTORES
#Es posible crear un vector con la fucnión c()
x <- c(TRUE,FALSE,TRUE,TRUE,F,F,T) #logical
x <- c(1L, 5L, 3L, -4L)           #integer
x <- c(1,2,3,4)                   #numeric
x <- c(1+1i, 3+4i,3.14+1.618i)    #complex
x <- c("A", "B", "C", "HOLA", "MUNDO") #character

#Otro posible camino, sería con la función vector()

x<- vector("numeric", length=10)
#El vector se crea vacío

#COERCIÓN
#Cambia todos los caracteres para que se vuelvan de una sola forma dominante
#EJEMPLOS:
y<- c(1.7, "a") #character
y<- c(T,2L, 2)  #numeric
y<- c(F, 2L, 2, 2+1i) #complex
class(y)

#COACCIÓN 
# LAS VARIABLES PUEDES CONVERTILAS A OTRA CLASE USANDO LA FUNCIÓN "as"
#EJEMPLO:
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)

