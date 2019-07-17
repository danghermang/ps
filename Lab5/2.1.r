t_test=function(alfa,n,fisier,pop_mean)
{
  x=scan(fisier)
  sample_mean=mean(x)
  s=sd(x)
  critical_t=qt(1-alfa,n-1)
  t_score=(sample_mean-pop_mean)/(s/sqrt(n))
  print(critical_t)
  print(t_score)
}

t_test=function(alfa,n,sample_mean,s,pop_mean)
{
  critical_t=qt(1-alfa,n-1)
  t_score=(sample_mean-pop_mean)/(s/sqrt(n))
  print(critical_t)
  print(t_score)
}
