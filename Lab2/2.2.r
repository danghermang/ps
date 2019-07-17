x=read.csv("life_expect.csv", header=T, sep=",")
female=x[['female']]
male=x[['male']]
mean(male)
median(male)
mean(female)
median(female)