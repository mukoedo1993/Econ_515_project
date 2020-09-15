library(ggplot2)
GDP<-read.csv("GDPC1.csv")
DPI<-read.csv("DPI.csv")
PCE<-read.csv("PCEC.csv")
CP<-read.csv("CP.csv")
Dividend<-read.csv("Dvnd.csv")

#copy:
GDP1<-GDP[1:244,2]
DPI1<-DPI[1:244,2]
PCE1<-PCE[1:244,2]
CP1<-CP[1:244,2]
Dividend1<-Dividend[1:244,2]

#log:
GDP1<-log(GDP1)
DPI1<-log(DPI1)
PCE1<-log(PCE1)
CP1<-log(CP1)
Dividend1<-log(Dividend1)

##########################
#DONT USE THE FUNCTION. It's just a crap.
rou_l<-function(datasq){
  rou<-list()
  lhs<-as.numeric(datasq)
  rhs<-list()
  mkft1<-list()
  for(k in 1:33){
    for(i in 1:244){
      if(i%%k==0){
        mkft1<-cbind(mkft1,datasq[i])
      }
    }
    sum<-0
    sum1<-0
    mkft1<-as.numeric(mkft1)
    for(k1 in 1:244){
      sum1<-sum1+lhs[k1]*lhs[k1]
      for(k2 in 1:length(mkft1)){
        sum<-sum+lhs[k1]*mkft1[k2]
      }
    }
    sum=sum/sum1
    rhs<-cbind(rhs,sum)
  }
  plot(seq(1,33),rhs)
}
rou_l(CP1)

###############################################
acf(CP1,lag.max=36,plot=TRUE)
acf(GDP1,lag.max=36,plot=TRUE)
acf(DPI1,lag.max=36,plot=TRUE)
acf(PCE1,lag.max=36,plot=TRUE)
acf(Dividend1,lag.max=36,plot=TRUE)
