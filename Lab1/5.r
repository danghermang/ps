varu=function(n,p)
{
  x=seq(0,n)
  y=dbinom(x,n,p)
  max(y)
}
