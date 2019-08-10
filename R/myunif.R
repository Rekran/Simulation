myunif = function(n)
{
  
  seed = 7;
  incre = 0;
  mult = 65539;
  mod = 2^21;

  xi  = ((seed * mult )+ incre) %% mod;
  
  numbers = array(c(xi))
  
  
  for(i in 2:n){
    
    xi = ((numbers[i - 1] * mult) + incre) %% mod
    numbers[i]= array(c(xi))
    
  }
  
  return((numbers/(mod - 1)))
}