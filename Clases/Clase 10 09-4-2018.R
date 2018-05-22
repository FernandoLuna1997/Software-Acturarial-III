######################## VECTORIZAR UNA FUNCIÓN ################################
noise <- function(n,mean,sd){
            rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise, 1:5, 1:5, 2)

### TAPPLY ###
str(tapply)

x <- c(rnorm(10),runif(10), rnorm(10,1))
f <- gl(3,10)
f
tapply(x,f,mean)
tapply(x,f,mean,simplify = F)

### SPLIT ###
str(split)
#Separa una tabla en grupos y su venttaja es que categoriza cada elemento en un
#grupo
x <- c(rnorm(10),runif(10), rnorm(10,1))
f <- gl(3,10)
f
split(x,f)

x<- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)
x
str(split(x,list(f1,f2)))

# en el data.frame de mtcars decir por el numero de cilindros el promedio de 
# numero de caballos de fuerza
data.frame(mtcars)
x <- sapply(split(mtcars,mtcars$cyl),colMeans,na.rm=T)[4,]
x
#otra forma sería:
sapply(split(mtcars$hp,mtcars$cyl),mean)
