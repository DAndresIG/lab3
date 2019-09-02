datosImp <- read.csv("datosImp.csv",stringsAsFactors = F)

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

barplot(anio2012Diesel, main = "Diesel año 2012")
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
barplot(anio2015$GasRegular, main = "Diesel año 2015")

barplot(anio2016$Diesel, main = "Diesel año 2016")
barplot(anio2016$GasSuperior, main = "Super año 2016")
barplot(anio2016$GasRegular, main = "Regular año 2016")

#Series de tiempo de gasolina súper, regular y diesel 
#desde el año 2001 hasta 2016 con frecuencia mensual
dieselST<-ts(datosImp$Diesel,start = 2001,frequency = 12)
regularST<-ts(datosImp$GasRegular,start = 2001,frequency = 12)
superST<-ts(datosImp$GasSuperior,start = 2001,frequency = 12)


plot(decompose(dieselST))
plot(decompose(regularST))
plot(decompose(superST))

#Se le aplica logaritmo a las series de gasolinas
logDieselST <- log(dieselST)
logRegularST <- log(regularST)
logSuperST <- log(superST)

#Para saber si hay raíces unitarias
adf.test(logDieselST)
adf.test(logRegularST)
adf.test(logSuperST)
adf.test(diff(logDieselST))
adf.test(diff(logRegularST))
adf.test(diff(logSuperST))

#Gráficos de autocorrelación
acf(logDieselST)
acf(logRegularST)
acf(logSuperST)

#Hacer el modelo
auto.arima(dieselST)
auto.arima(regularST)
auto.arima(superST)




