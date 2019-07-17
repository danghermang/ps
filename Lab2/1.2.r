x=read.csv("unemploy2012.csv", header=T, sep=";")
rate=x[['rate']]
interval=seq(0,30,2)
hist(rate,breaks=interval,right=T,freq=T)