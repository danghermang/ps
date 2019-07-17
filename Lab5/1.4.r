z_test=function(alfa,n,sample_mean,pop_mean,sigma)
{
  critical_z=qnorm(1-alfa)
  z_score=(sample_mean-pop_mean)/(sigma/sqrt(n))
  print(critical_z)
  print(z_score)
}
z_test(0.01,100,20.5,21,2.5)
