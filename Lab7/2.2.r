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
o=c(33,26,18,9,7,7)
p=c(0.35,0.2,0.15,0.1,0.1,0.1)
multinomial_test(0.05,o,p)
multinomial_test(0.01,o,p)
