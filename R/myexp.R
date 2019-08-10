myexp = function(n , lambda = 1){
  
  U = myunif(n);
  
  myExp = -(log(1 - U)/lambda);
  
  return(myExp);
  
}



