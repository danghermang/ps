outliers_mean=function(esantion)
{
  m=mean(esantion)
  s=sd(esantion)
  new=vector()
  j=0
  for (i in 1:length(esantion))
  {
    if ((esantion[i]<m-2*s) || (esantion[i]>m+2*s))
    {
      j=j+1
      new[j]=esantion[i]    
    }
  }
  return (new)
}
x=c(1,91,38,72,13,27,11,85,5,22,20,19,8,17,11,15,13,23,14,17)
outliers_mean(x)