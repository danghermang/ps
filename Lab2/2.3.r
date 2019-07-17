mOdul=function(x)
{
  nr_ap=vector()
  max=max(x)
  for (i in 1:max)
  {
    nr_ap[i]=0
  }
  
  for(i in 1:length(x))
  {
    if (nr_ap[x[i]]==0)
    {
      for (j in i:length(x))
      {
        if(x[i]==x[j])
        {
          nr_ap[x[i]]=nr_ap[x[i]]+1
        }
      }
    } 
  }
  
  j=0
  final=c()
  for (i in 1:max(x))
  {
    if (nr_ap[i]==max(nr_ap))
    {
      j=j+1
      final[j]=i
    }
  }
  return(final)
}
x=c(1,1,1,3,4,5,3,3,4,4)
mOdul(x)