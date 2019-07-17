logaritm=function(a)
{
  r=vector()
  r=scan(a)
  return (log(r,10))
}
logaritm("vector.txt")
mama=function(a)
{
  r=vector()
  r=scan(a)
  return (r-max(r)/min(r))
}
mama("vector.txt")
