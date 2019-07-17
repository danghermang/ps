outliers_iqr=function(x)
{
  q1=as.vector(quantile(x))[2]
  q3=as.vector(quantile(x))[4]
  iqr=q3-q1
  newx=vector()
  j=0
  for(i in 1:length(x))
    if ((x[i]<q1-2*iqr) || (x[i]>q3+2*iqr))
    {
      j=j+1
      newx[j]=x[i]
    }
  newx
}
x=scan("sample2.txt")
summary(x)
quantile(x)
outliers_iqr(x)
