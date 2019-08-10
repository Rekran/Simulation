mypois = function(n,lambda){ 

  u = myunif(n);
  N = 30;
  k = 0:N;
  fat = k;
  fat[1] = 1;
  fat = cumprod(fat)
  fk = exp(-lambda) * lambda ^ k / fat;
  Fk = cumsum(fk);
    
  x = integer(n)
    
  for( i in 1:n){
    x[i] = sum(u[i] > Fk)
    
    while(x[i] == N+1){
      
      fat[N+2] = fat[N+1] * (N+1)
      poss = exp(-lambda) * (lambda ^ (N + 1)) / fat[N+2];
      fk = c(fk, poss);
      Fk = c(Fk,Fk[N+1]+ fk[N+2]);
      
      N = N+1;
      x[i] = sum(u[i] > Fk);

    }
  }
  
  return(x)
}
  
