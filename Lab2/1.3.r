x=read.csv("life_expect.csv", header=T, sep=",")
female=x[['female']]
male=x[['male']]
interval=7
hist(male,breaks=interval,right=T,freq=T)
hist(female,breaks=interval,right=T,freq=T)