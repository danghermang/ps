outliers_iqr=function(esantion)
{
  new_vector=vector()
  j=0
  IQR=as.vector(quantile(esantion))[4]-as.vector(quantile(esantion))[2]
  Q1=as.vector(quantile(esantion))[2]
  Q3=as.vector(quantile(esantion))[4]
  for (i in 1:length(esantion))
  {
    if (  (esantion[i]<Q1-1.5*IQR  ) || (esantion[i]>Q3+1.5*IQR))
    {
      j=j+1
      new_vector[j]=esantion[i]    
    }
  }
  return (new_vector)
}
x=c(1,91,38,72,13,27,11,85,5,22,20,19,8,17,11,15,13,23,14,17)
outliers_iqr(x)