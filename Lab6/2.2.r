t_test_means=function(alfa,n1,n2,s1,s2,mean1,mean2)
{
  m0=0
  s1=s1*s1
  s2=s2*s2
  critical_f_s=qf(alfa/2,n1-1,n2-1)
  critical_f_d=qf(1-alfa/2,n2-1,n1-1)
  f_score=s1/s2
  if(f_score>=critical_f_s && f_score<=critical_f_d){
    df=n1+n2-2
    s=((n1-1)*s1+(n2-1)*s2)/df
    combined_s=sqrt(s/n1+s/n2)
    #combined_s=sqrt(((n1-1)*s1+(n2-1)*s2)/df)*sqrt(1/n1+1/n2)
  }else{
    df=min(n1-1,n2-1)
    combined_s=sqrt(s1/n1+s2/n2)
  }
  critical_t=qt(1-alfa/2,df)
  t_score=(mean1-mean2-m0)/combined_s
  print(critical_t)
  print(t_score)
}
x1=read.table("program.txt",header=TRUE, fill=TRUE)[['A']]
x2=read.table("program.txt",header=TRUE, fill=TRUE)[['B']]
n1=length(x1)
n2=length(x2)
s1=sd(x1)
s2=sd(x2)
mean1=mean(x1)
mean2=mean(x2)
t_test_means(0.01,n1,n2,s1,s2,mean1,mean2)
t_test_means(0.05,n1,n2,s1,s2,mean1,mean2)
