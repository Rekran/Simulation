rnormalpois = function(n,Size_A = 30){
#Size_A = Tamanho da amostra.
  
MeanPois = double(n);  
  
lambda = 10;
Pois = rpois(10000,lambda);
  
for(i in 1:n)
  MeanPois[i] = mean(sample(Pois,Size_A,replace = TRUE));
  
Normal = (MeanPois - lambda) / sqrt(lambda/Size_A);
  
return(Normal)
}