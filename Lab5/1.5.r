z_test=function(alfa,n,sample_mean,pop_mean,sigma)
{
  critical_z=qnorm(alfa)
  z_score=(sample_mean-pop_mean)/(sigma/sqrt(n))
  print(critical_z)
  print(z_score)
}
z_test(0.05,100,970,1000,85)
