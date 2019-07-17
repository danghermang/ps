selection_mean=function(filename)
{
  x=scan(filename)
  m=mean(x)
  return (m)
}
selection_mean("sample.txt")