zconfidence_interval6=function(filename)
{
  x=scan(filename)
  alfa=0.05
  n=length(x)
  sample=mean(x)
  disp=var(x)
  sigma=sqrt(disp)
  critical_z=qnorm(1-alfa/2,0,1)
  a=sample-critical_z*sigma/sqrt(n)
  b=sample+critical_z*sigma/sqrt(n)
  interval=c(a,b)
  return (interval)
}
zconfidence_interval6("sample.txt")