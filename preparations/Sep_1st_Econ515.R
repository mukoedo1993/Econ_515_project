#!!!
#Remember to install ggplot2 package beforehand.

library(ggplot2)
GDP<-read.csv("GDPC1.csv")
DPI<-read.csv("DPI.csv")
PCE<-read.csv("PCEC.csv")
CP<-read.csv("CP.csv")
Dividend<-read.csv("Dvnd.csv")

#copy:
GDP1<-GDP[1:244,]
DPI1<-DPI[1:244,]
PCE1<-PCE[1:244,]
CP1<-CP[1:244,]
Dividend1<-Dividend[1:244,]

#log:
GDP1$GDPC1<-log(GDP1$GDPC1)
DPI1$DPI<-log(DPI1$DPI)
PCE1$PCEC<-log(PCE1$PCEC)
CP1$CP<-log(CP1$CP)
Dividend1$Dividend<-log(Dividend1$Dividend)

#plot(as.Date(GDP1$DATE),GDP1$GDPC1)

All_1<-data.frame(GDP1$GDPC1,DPI1$DPI,PCE1$PCEC,GDP1$DATE)
All_1$GDP1.DATE<-as.Date(All_1$GDP1.DATE)

plot1<-ggplot(All_1,aes(x=GDP1.DATE))+theme_classic()

plot1_1<-geom_point(aes(y=GDP1.GDPC1),color="red",size=0.3)
plot1_2<-geom_point(aes(y=DPI1.DPI),color="blue",size=0.3)
plot1_3<-geom_point(aes(y=PCE1.PCEC),color="yellow",size=0.3)
plot1_4<-plot1+plot1_1+plot1_2+plot1_3
plot1_5<-plot1_4+labs(y="GDP in red\n, DPI in blue\n and PCEC in yellow:\n ",
x="Date (quarterly): ",title="    log(GDP),log(DPI) and log(PCEC) from 1947 to 2007: ")
plot1_5


All_2<-data.frame(CP1$CP,Dividend1$Dividend,CP1$DATE)
All_2$CP1.DATE<-as.Date(All_2$CP1.DATE)
plot2<-ggplot(All_2,aes(x=CP1.DATE))+theme_classic()
plot2_1<-geom_point(aes(y=CP1.CP),color="red",size=0.3)
plot2_2<-geom_point(aes(y=Dividend1.Dividend),color="blue",size=0.3)
plot2_3<-plot2+plot2_1+plot2_2
plot2_4<-plot2_3+labs(y="CP in red\n, Dividend in blue\n ",
                      x="Date (quarterly): ",title="        log(CP) and log(Dividend) from 1947 to 2007: ")
plot2_4
