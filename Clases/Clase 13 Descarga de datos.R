############################ DESCARGA DE DATOS #################################

if(!dir.exists("data")){dir.create("data")}
url<- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(url,"./data/restaurantes.csv")
data <- read.csv("./data/restaurantes.csv")

#head te enseña los primeros registros con default 6
#tail te enseña los ultimos registros con default 6

head(data)
head(data, n=3)

tail(data)

summary(data)
str(data)

##############HACER TABLAS###################3

table(data&zipCode,useNA="ifany")
table(data&counciDistrict,data&zipCode)

############## VALORES FALTANTES #############

sum(is.na(data&councilDistrict))
any(is.na(data&councilDistrict))
all(!is.na(data&councilDistrict))
all(data&zipCode > 0)
colSums(is.na(data))
all(colSums(is.na(data))==0)

########### VALORES CON CARACTERISTICAS ESPECIALES ##############

table(data&zipCode %in% c("21212"))
table(data&zipCode %in% c("21212","21213"))
data[data&zipCode %in% c("21212","21213"),]

########## TABLAS CRUZADAS ###############

data("UCBAdmissions")
DF = as.data.frame(UCBAdmissions)
summary(DF)
xt <- xtabs(Freq ~ Gender + Admit, data=DF)
xt

warpbreaks$replicate <- rep(1:9, len=54)
xt = xtabs(breaks ~.,data=warpbreaks)
xt
ftable(xt)

########## TAMAÑO DE UNA TABLA #########3

fakeData= rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData),units="Mb")