t_conf_interval=function(alfa, fisier)
{
  x=scan(fisier)
  n=length(x)
  media=mean(x)
  s=sd(x)
  critical_t=qt(1-alfa/2,n-1)
  a=media-critical_t*(s/sqrt(n))
  b=media+critical_t*(s/sqrt(n))
  interval=c(a,b)
  interval
}
t_conf_interval(0.1,"sample.txt")
t_conf_interval(0.05,"sample.txt")
t_conf_interval(0.01,"sample.txt")
