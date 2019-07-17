t_test=function(alfa,x,pop_mean)
{
  sample_mean=mean(x)
  n=length(x)
  s=sd(x)
  critical_t=qt(1-alfa,n-1)
  t_score=(sample_mean-pop_mean)/(s/sqrt(n))
  print(sample_mean)
  print(critical_t)
  print(t_score)
}
x=c(36,32,28,33,41,28,31,26,29,34)
t_test(0.01,x,34)