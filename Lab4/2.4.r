test_proportion=function(alfa,n,succes,p0)
{
  p_prim=succes/n
  critical_z=qnorm(1-alfa,0,1)
  z_score=(p_prim-p0)/sqrt(p0*(1-p0)/n)
  print(z_score)
  print(critical_z)
  if((z_score>critical_z)){
    cat("Ipoteza H0 respinsa")
  } else{
    cat("Nu")
  }
}
test_proportion(0.05,128,10,0.025)