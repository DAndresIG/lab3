datosImp <- read.csv("datosImp.csv",stringsAsFactors = F)
datosImp[datosImp$Anio>=2018,"Diesel"]<-datosImp[datosImp$Anio>=2018,"DieselLS"]
dieselST<-ts(datosImp$Diesel,start = 2001,frequency = 12)

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

barplot(anio2001$Diesel, main = "Diesel anio 2001")
barplot(anio2001$GasSuperior, main = "Super anio 2001")
barplot(anio2001$GasRegular, main = "Regular anio 2001")

barplot(anio2002$Diesel, main = "Diesel año 2002")
barplot(anio2002$GasSuperior, main = "Superior año 2002")
barplot(anio2002$GasRegular, main = "regular año 2002")

barplot(anio2003$Diesel, main = "Diesel año 2003")
barplot(anio2003$GasSuperior, main = "Super año 2003")
barplot(anio2003$GasRegular, main = "Regular año 2003")

barplot(anio2004$Diesel)
barplot(anio2004$GasSuperior)
barplot(anio2004$GasRegular)

barplot(anio2005$Diesel)
barplot(anio2005$GasSuperior)
barplot(anio2005$GasRegular)

barplot(anio2006$Diesel)
barplot(anio2006$GasSuperior)
barplot(anio2006$GasRegular)

barplot(anio2007$Diesel)
barplot(anio2007$GasSuperior)
barplot(anio2007$GasRegular)

barplot(anio2008$Diesel)
barplot(anio2008$GasSuperior)
barplot(anio2008$GasRegular)

barplot(anio2009$Diesel)
barplot(anio2009$GasSuperior)
barplot(anio2009$GasRegular)

barplot(anio2010$Diesel)
barplot(anio2010$GasSuperior)
barplot(anio2010$GasRegular)

barplot(anio2011$Diesel)
barplot(anio2011$GasSuperior)
barplot(anio2011$GasRegular)

barplot(anio2012Diesel)
barplot(anio2012$GasSuperior)
barplot(anio2012$GasRegular)

barplot(anio2013$Diesel)
barplot(anio2013$GasSuperior)
barplot(anio2013$GasRegular)

barplot(anio2014$Diesel)
barplot(anio2014$GasSuperior)
barplot(anio2014$GasRegular)

barplot(anio2015$Diesel)
barplot(anio2015$GasSuperior)
barplot(anio2015$GasRegular)

barplot(anio2016$Diesel)
barplot(anio2016$GasSuperior)
barplot(anio2016$GasRegular)