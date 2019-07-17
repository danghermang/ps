f_test=function(alfa, n1,n2,s1,s2)
{
  s1=s1*s1
  s2=s2*s2
  critical_f_s=qf(alfa/2,n1-1,n2-1)
  critical_f_d=qf(1-alfa/2,n2-1,n1-1)
  f_score=s1/s2
  print(critical_f_s)
  print(critical_f_d)
  print(f_score)
  if(f_score>=critical_f_s && f_score<=critical_f_d)
    print("Ipoteza nula nu poate fi respinsa")
  else
    print("Ipoteza nula respinsa, influenta drogurilor e semnificativa!")
}
x1=c(12.512,12.869,19.098,15.350,13.297,15.589)
x2=c(11.074,9.686,12.164,8.351,12.182,11.489)
n1=length(x1)
n2=length(x2)
s1=sd(x1)
s2=sd(x2)
f_test(0.05,n1,n2,s1,s2)
