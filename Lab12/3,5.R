z_test_means=function(alfa,n1,n2,s1,s2,mean1,mean2)
{
  m0=0
  s1=s1^2
  s2=s2^2
  combined_s=sqrt(s1/n1+s2/n2)
  critical_z=qnorm(1-alfa/2)
  z_score=(mean1-mean2-m0)/combined_s
  print(critical_z)
  print(z_score)
  if(abs(critical_z)<abs(z_score))
    print("Ipoteza nula respinsa")
  else
    print("Ipoteza nu este respinsa")
}
t_test_means(0.01,155,150,0.75,0.78,15,14.5)
t_test_means(0.05,155,150,0.75,0.78,15,14.5)