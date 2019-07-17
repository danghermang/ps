ChiSq_Variance_test=function(alfa,n,s_square,sigma_square)
{
  critical_Chi_square_s=qchisq(alfa/2,n-1)
  critical_Chi_square_d=qchisq(1-alfa/2,n-1)
  Chi_square_score=(n-1)*s_square/sigma_square
  print(critical_Chi_square_s)
  print(critical_Chi_square_d)
  print(Chi_square_score)
  if(Chi_square_score<critical_Chi_square_s || Chi_square_score>critical_Chi_square_d){
    print("Ipoteza nula respinsa")
  }else{
    print("Nu se poate respinge ipoteza")
  }
}
s=10.5*10.5
s_prim=11*11
ChiSq_Variance_test(0.01,49,13,12.8)