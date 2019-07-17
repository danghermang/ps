coloane=function(name)
{
  z=read.table(name,header=T)
  x=z[['AA']]
  y=z[['BB']]
  plot(x,y,type='l',main='grafic',sub='subtilul',xlab='axa x',ylab='axa y')
}