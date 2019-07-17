test_proportion=function(alfa,n,succes,p0)
{
  p_prim=succes/n
  critical_z=qnorm(1-alfa,0,1)
  z_score=(p_prim-p0)/sqrt(p0*(1-p0)/n)
  z_score
  critical_z
  if((z_score>critical_z)){
    cat("Ipoteza H0 respinsa")
  } else{
    cat("Nu stiu")
  }
}
test_proportion(0.01,110,15,0.1)