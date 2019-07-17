f_test=function(alfa, n1,n2,s1,s2)
{
  critical_f_s=qf(alfa/2,n1-1,n2-1)
  critical_f_d=qf(1-alfa/2,n2-1,n1-1)
  f_score=s1/s2
  print(critical_f_s)
  print(critical_f_d)
  print(f_score)
  if(f_score>=critical_f_s || f_score<=critical_f_d)
    print("Ipoteza nula nu poate fi respinsa")
  else
    print("Ipoteza respinsa")
}
x1=read.table("program.txt",header=TRUE, fill=TRUE)[['A']]
x2=read.table("program.txt",header=TRUE, fill=TRUE)[['B']]
x2=!is.na(x2)
n1=length(x1)
n2=length(x2)
s1=sd(x1)*sd(x1)
s2=sd(x2)*sd(x2)
f_test(0.01,n1,n2,s1,s2)
f_test(0.05,n1,n2,s1,s2)