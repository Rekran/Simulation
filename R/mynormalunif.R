mynormalunif = function(n,Size_A = 30){
#Size_A = Tamanho da amostra.

MeanUnif = double(n)
Unif = myunif(10000);
  
for(i in 1:n)
  MeanUnif[i] = mean(sample(Unif,Size_A,replace = TRUE))
  
Normal = (MeanUnif - (1/2)) / sqrt((1/2)/Size_A)
  
  return(Normal)
}