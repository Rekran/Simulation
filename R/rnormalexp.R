rnormalexp = function(n,Size_A = 30){
#Size_A = Tamanho da amostra.
  
MeanExp = double(n);  
  
lambda = 1;
Exp = rexp(10000,lambda);
  
for(i in 1:n)
  MeanExp[i] = mean(sample(Exp,Size_A,replace = TRUE))
  
Normal = (MeanExp - (1/lambda)) / sqrt((1/lambda^2)/Size_A)
  
return(Normal)
}