ChiSq_Variance_test=function(alfa,n,s_square,sigma_square)
{
  critical_Chi_square=qchisq(1-alfa,n-1)
  Chi_square_score=(n-1)*s_square/sigma_square
  print(critical_Chi_square)
  print(Chi_square_score)
  if(Chi_square_score>critical_Chi_square){
    print("Ipoteza nula respinsa")
  }else{
    print("Nu se poate respinge ipoteza")
  }
}
ChiSq_Variance_test(0.05,100,0.2,0.22)