ChiSq_Variance_test=function(alfa,n,s_square,sigma_square)
{
  critical_Chi_square=qchisq(alfa,n-1)
  Chi_square_score=(n-1)*s_square/sigma_square
  print(critical_Chi_square)
  print(Chi_square_score)
}
ChiSq_Variance_test(0.01,120,169,225)