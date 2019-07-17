#n1=120
#n2=135
#s1=5.05 (deviata std a esant. de barbati)
#s2=5.44(-||-)
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
  if(f_score>=critical_f_s || f_score<=critical_f_d)
    print("Ipoteza nula se accepta")
  else
    print("Ipoteza respinsa")
}
f_test(0.01,120,135,5.05,5.44)