########################### AMBITO LEXICOLOGICO ###############################
lm
lm<- function(x){x*x}
lm
rm(lm)
lm
search()
library(swirl)
search()
hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia(2)
cubica(3)
cuadrada(2)

ls(environment(cubica))
get("n", environment(cubica))
ls(environment(cuadrada))
get("n", environment(cuadrada))

y <- 10

f <- function(x) {
  y<- 2
  y^2+ g(x)
}
g <- function(x){
  x*y
}
f(3)

#
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

inicio<-unclass(as.Date("2014-01-27"))
final<-unclass(as.Date("2018-04-02"))
final-inicio

weekdays(as.Date("2014-01-27"))
a<- as.POSIXct("2014-01-27")
b<- as.POSIXlt("2014-01-27")
