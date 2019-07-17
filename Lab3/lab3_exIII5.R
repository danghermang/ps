zconfidence_interval=function(alfa,sample,n,d)
{
  sigma=sqrt(d)
  critical_z=qnorm(1-alfa/2,0,1)
  a=sample-critical_z*sigma/sqrt(n)
  b=sample+critical_z*sigma/sqrt(n)
  interval=c(a,b)
  return (interval)
}
  disp=5*5
  a=zconfidence_interval(0.1,60,35,disp)
  b=zconfidence_interval(0.05,60,35,disp)
  c=zconfidence_interval(0.01,60,35,disp)
  cat("Intervalul de 90 la suta este ",a,"\n Intervalul de 95 la suta este ",b,"\n Intervalul de 99 la suta este ",c,"\n")
if (length(b) > length(c) ) {
  cat("Intervalul de 95% este mai mare decat cel de 99%.")
}else {
  cat("Intervalul de 95% este mai mic decat cel de 99%.")
}
