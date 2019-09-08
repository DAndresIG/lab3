
setwd("~/Semestre 19/Data Science/Lab 3")
datosImp <- read.csv("datosImp (1).csv",stringsAsFactors = F)

install.packages("forecast")
install.packages("tseries")
install.packages("fUnitRoots")
install.packages("ggfortify")

library(forecast)
library(tseries)
library(fUnitRoots)
library(ggfortify)

datosImp[datosImp$Anio>=2018,"Diesel"]<-datosImp[datosImp$Anio>=2018,"DieselLS"]

#Los datos separados por año 
anio2001 <- datosImp[datosImp$Anio == 2001,]
anio2002 <- datosImp[datosImp$Anio == 2002,]
anio2003 <- datosImp[datosImp$Anio == 2003,]
anio2004 <- datosImp[datosImp$Anio == 2004,]
anio2005 <- datosImp[datosImp$Anio == 2005,]
anio2006 <- datosImp[datosImp$Anio == 2006,]
anio2007 <- datosImp[datosImp$Anio == 2007,]
anio2008 <- datosImp[datosImp$Anio == 2008,]
anio2009 <- datosImp[datosImp$Anio == 2009,]
anio2010 <- datosImp[datosImp$Anio == 2010,]
anio2011 <- datosImp[datosImp$Anio == 2011,]
anio2012 <- datosImp[datosImp$Anio == 2012,]
anio2013 <- datosImp[datosImp$Anio == 2013,]
anio2014 <- datosImp[datosImp$Anio == 2014,]
anio2015 <- datosImp[datosImp$Anio == 2015,]
anio2016 <- datosImp[datosImp$Anio == 2016,]

anio2017 <- datosImp[datosImp$Anio == 2017,]
anio2018 <- datosImp[datosImp$Anio == 2018,]
anio2019 <- datosImp[datosImp$Anio == 2019,]

ultimos<- data.frame(anio2017$Diesel,anio2018$Diesel,anio2019$Diesel)
#Gráficas de las variables de gasolina súper, regular y diesel separadas por año

barplot(anio2001$Diesel, main = "Diesel anio 2001")
barplot(anio2001$GasSuperior, main = "Super anio 2001")
barplot(anio2001$GasRegular, main = "Regular anio 2001")

barplot(anio2002$Diesel, main = "Diesel año 2002")
barplot(anio2002$GasSuperior, main = "Superior año 2002")
barplot(anio2002$GasRegular, main = "regular año 2002")

barplot(anio2003$Diesel, main = "Diesel año 2003")
barplot(anio2003$GasSuperior, main = "Super año 2003")
barplot(anio2003$GasRegular, main = "Regular año 2003")

barplot(anio2004$Diesel, main = "Diesel año 2004")
barplot(anio2004$GasSuperior, main = "Super  año 2004")
barplot(anio2004$GasRegular, main = "Regular año 2004")

barplot(anio2005$Diesel, main = "Diesel año 2005")
barplot(anio2005$GasSuperior, main = "Super año 2005")
barplot(anio2005$GasRegular, main = "Regular año 2005")

barplot(anio2006$Diesel, main = "Diesel año 2006")
barplot(anio2006$GasSuperior, main = "Super año 2006")
barplot(anio2006$GasRegular, main = "Regular año 2006")

barplot(anio2007$Diesel, main = "Diesel año 2007")
barplot(anio2007$GasSuperior, main = "Super año 2007")
barplot(anio2007$GasRegular, main = "Regular año 2007")

barplot(anio2008$Diesel, main = "Diesel año 2008")
barplot(anio2008$GasSuperior, main = "Super año 2008")
barplot(anio2008$GasRegular, main = "Regular año 2008")

barplot(anio2009$Diesel, main = "Diesel año 2009")
barplot(anio2009$GasSuperior, main = "Super año 2009")
barplot(anio2009$GasRegular, main = "Regular año 2009")

barplot(anio2010$Diesel, main = "Diesel año 2010")
barplot(anio2010$GasSuperior, main = "Super año 2010")
barplot(anio2010$GasRegular, main = "Regular año 2010")

barplot(anio2011$Diesel, main = "Diesel año 2011")
barplot(anio2011$GasSuperior, main = "Super año 2011")
barplot(anio2011$GasRegular, main = "Regular año 2011")

barplot(anio2012$Diesel, main = "Diesel año 2012")
barplot(anio2012$GasSuperior, main = "Super año 2012")
barplot(anio2012$GasRegular, main = "Regular año 2012")

barplot(anio2013$Diesel, main = "Diesel año 2013")
barplot(anio2013$GasSuperior, main = "Super año 2013")
barplot(anio2013$GasRegular, main = "Regular año 2013")

barplot(anio2014$Diesel, main = "Diesel año 2014")
barplot(anio2014$GasSuperior, main = "Super año 2014")
barplot(anio2014$GasRegular, main = "Regular año 2014")

barplot(anio2015$Diesel, main = "Diesel año 2015")
barplot(anio2015$GasSuperior, main = "Super año 2015")
barplot(anio2015$GasRegular, main = "Regular año 2015")

barplot(anio2016$Diesel, main = "Diesel año 2016")
barplot(anio2016$GasSuperior, main = "Super año 2016")
barplot(anio2016$GasRegular, main = "Regular año 2016")

install.packages("fitdistrplus")
library(fitdistrplus)

#Verificar normalidad en la distribucion
descdist(anio2001$Diesel, discrete = TRUE, boot = NULL, method = "sample", graph = FALSE, obs.col = "darkblue")
descdist(anio2001$Diesel)
descdist(anio2001$GasSuperior)
descdist(anio2001$GasRegular)

descdist(anio2002$Diesel)
descdist(anio2002$GasSuperior)
descdist(anio2002$GasRegular)

descdist(anio2003$Diesel)
descdist(anio2003$GasSuperior)
descdist(anio2003$GasRegular)

descdist(anio2004$Diesel)
descdist(anio2004$GasSuperior)
descdist(anio2004$GasRegular)

descdist(anio2005$Diesel)
descdist(anio2005$GasSuperior)
descdist(anio2005$GasRegular)

descdist(anio2006$Diesel)
descdist(anio2006$GasSuperior)
descdist(anio2006$GasRegular)

descdist(anio2007$Diesel)
descdist(anio2007$GasSuperior)
descdist(anio2007$GasRegular)

descdist(anio2008$Diesel)
descdist(anio2008$GasSuperior)
descdist(anio2008$GasRegular)

descdist(anio2009$Diesel)
descdist(anio2009$GasSuperior)
descdist(anio2009$GasRegular)

descdist(anio2010$Diesel)
descdist(anio2010$GasSuperior)
descdist(anio2010$GasRegular)

descdist(anio2011$Diesel)
descdist(anio2011$GasSuperior)
descdist(anio2011$GasRegular)

descdist(anio2012$Diesel)
descdist(anio2012$GasSuperior)
descdist(anio2012$GasRegular)

descdist(anio2013$Diesel)
descdist(anio2013$GasSuperior)
descdist(anio2013$GasRegular)

descdist(anio2014$Diesel)
descdist(anio2014$GasSuperior)
descdist(anio2014$GasRegular)

descdist(anio2015$Diesel)
descdist(anio2015$GasSuperior)
descdist(anio2015$GasRegular)

descdist(anio2016$Diesel)
descdist(anio2016$GasSuperior)
descdist(anio2016$GasRegular)

#2.a Creación de serie de tiempo con inicio, fin y frecuencia establecidos
dieselST<-ts(datosImp$Diesel,start = 2001, end = 2016,frequency = 12)
superST<-ts(datosImp$GasSuperior,start = 2001,end = 2016,frequency = 12)
regularST<-ts(datosImp$GasRegular,start = 2001,end = 2016,frequency = 12)

#2.b Grafico general de la serie de tiempo
plot(dieselST)
plot(superST)
plot(regularST)

#2.c Series de tiempo de gasolina súper, regular y diesel: Descomposicion en componentes 
#desde el año 2001 hasta 2016 con frecuencia mensual

plot(decompose(dieselST))
plot(decompose(regularST))
plot(decompose(superST))

#Se le aplica logaritmo a las series de gasolinas
logDieselST <- log(dieselST)
logRegularST <- log(regularST)
logSuperST <- log(superST)

#Analisis de estacionariedad en varianza

varDiesel <-cbind(dieselST)
plot.ts(varDiesel)

varRegular <-cbind(regularST)
plot.ts(varRegular)

varsuper <-cbind(superST)
plot.ts(varsuper)

lambda <- BoxCox.lambda(dieselST)
print(lambda)
plot(BoxCox(dieselST, lambda = -0.4046291))

lambda <- BoxCox.lambda(regularST)
print(lambda)
plot(BoxCox(regularST, lambda = -0.1814129))

lambda <- BoxCox.lambda(superST)
print(lambda)
plot(BoxCox(superST, lambda = -0.960891))

#Para saber si hay raíces unitarias
adf.test(logDieselST)
adf.test(logRegularST)
adf.test(logSuperST)

pacf(diff(logDieselST))
pacf(diff(logRegularST))
pacf(diff(logSuperST))


#Gráficos de autocorrelación
acf(logDieselST)
acf(logRegularST)
acf(logSuperST)


#2.f Hacer el modelo
arimaDiesel<- auto.arima(dieselST)
arimaRegular<-auto.arima(regularST)
arimaSuper<-auto.arima(superST)

plot(pronosticoDiesel,main="Pronostico con auto arima Diesel")

plot(pronosticoRegular,main="Pronostico con auto arima Regular")
 
plot(pronosticoSuper,main="Pronostico con auto arima Super")

plot(cbind(pronosticoDiesel, anio2017))


