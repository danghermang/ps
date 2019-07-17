t_test_means=function(alfa,n1,n2,s1,s2,mean1,mean2)
{
  m0=0
  s1=s1^2
  s2=s2^2
  combined_s=sqrt(s1/n1+s2/n2)
  critical_z=qnorm(1-alfa/2)
  z_score=(mean1-mean2-m0)/combined_s
  print(critical_z)
  print(z_score)
  if(critical_z<z_score)
    print("Ipoteza nula respinsa, medii diferite")
  else
    print("Ipoteza nu este respinsa")
}

t_test_means(0.05,100,100,4,3,48,47)
