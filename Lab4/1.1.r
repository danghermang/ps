t_conf_interval=function(n,media,alfa,s)
{
  critical_t=qt(1-alfa/2,n-1)
  a=media-critical_t*(s/sqrt(n))
  b=media+critical_t*(s/sqrt(n))
  interval=c(a,b)
  interval
}
t_conf_interval(60,3.3,0.05,0.4)