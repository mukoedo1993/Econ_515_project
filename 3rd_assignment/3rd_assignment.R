data <- read.delim("sunspot.dat", header = TRUE, sep="", skip=2, as.is=TRUE)

View(data)

processed_data=sqrt(data)

title("acf")
acf(processed_data,lag.max=36,type="correlation",plot=TRUE)

pacf(processed_data,lag.max=35,plot=TRUE)

write.csv(processed_data,"processed_data.csv")
write.csv(data,"data.csv")
