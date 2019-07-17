multinomial_test=function(alfa,o,p)
{
  s=length(o)
  n=sum(o)
  E=n*p
  critical_Chi_square=qchisq(1-alfa,s-1)
  Chi_square_score=sum((o-E)^2/E)
  print(critical_Chi_square)
  print(Chi_square_score)
  if(Chi_square_score>critical_Chi_square){
    print("Ipoteza nula respinsa")
  }else{
    print("Nu se poate respinge ipoteza")
  }
}
o=c(21,36,12,19)
p=c(0.16,0.44,0.27,0.13)
multinomial_test(0.05,o,p)
multinomial_test(0.01,o,p)
