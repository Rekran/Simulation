mynormalexp = function(n,Size_A = 30){
#Size_A = Tamanho da amostra.

MeanExp = double(n);  

  
#na myexp o lambda padrão ta definido = 1
lambda = 1;
Exp = myexp(10000);

for(i in 1:n)
  MeanExp[i] = mean(sample(Exp,Size_A,replace = TRUE))
  
Normal = (MeanExp - (1/lambda)) / sqrt((1/lambda^2)/Size_A)
  
  return(Normal)
}