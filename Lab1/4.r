varu=function(n,p)
{
  x=seq(0,n)
  y=dbinom(x,n,p)
  barplot(y,space=0,main='barplot',sub='subtitlu',xlab='axa X',ylab='axa Y')
}

varu(20,0.4)