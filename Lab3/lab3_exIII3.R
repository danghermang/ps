zconfidence_interval=function(alfa,sample,n,d)
{
  sigma=sqrt(d)
  critical_z=qnorm(1-alfa/2,0,1)
  a=sample-critical_z*sigma/sqrt(n)
  b=sample+critical_z*sigma/sqrt(n)
  interval=c(a,b)
  return (interval)
}
zconfidence_interval(0.05,5,50,0.25)
