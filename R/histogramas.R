n = 1000;
par(mfrow = c(2,2));
#minha Uniforme
hist(myunif(n), nclass = sqrt(n))
#amostra de 10
hist(mynormalunif(n,10), nclass = sqrt(n))
#amostra de 30
hist(mynormalunif(n,30), nclass = sqrt(n))
#amostra de 1000
hist(mynormalunif(n,1000), nclass = sqrt(n),freq = F)
lines(density(rnorm(n)))
#minha Exp
hist(myexp(n,1), nclass = sqrt(n))
#amostra de 10
hist(mynormalexp(n,10), nclass = sqrt(n))
#amostra de 30
hist(mynormalexp(n,30), nclass = sqrt(n))
#amostra de 1000
hist(mynormalexp(n,1000), nclass = sqrt(n))


#minha Poisson
hist(mypois(n,10), nclass = sqrt(n))
#amostra de 10
hist(mynormalpois(n,10), nclass = sqrt(n))
#amostra de 30
hist(mynormalpois(n,30), nclass = sqrt(n))
#amostra de 1000
hist(mynormalpois(n,1000), nclass = sqrt(n))

#Uniforme do r
hist(runif(n), nclass = sqrt(n))
#amostra de 10
hist(rnormalunif(n,10), nclass = sqrt(n))
#amostra de 30
hist(rnormalunif(n,30), nclass = sqrt(n))
#amostra de 1000
hist(rnormalunif(n,1000), nclass = sqrt(n))

#Exp do r
hist(rexp(n,1), nclass = sqrt(n))
#amostra de 10
hist(rnormalexp(n,10), nclass = sqrt(n))
#amostra de 30
hist(rnormalexp(n,30), nclass = sqrt(n))
#amostra de 1000
hist(rnormalexp(n,1000), nclass = sqrt(n))


#Poisson do r
hist(rpois(n,10), nclass = sqrt(n))
#amostra de 10
hist(rnormalpois(n,10), nclass = sqrt(n))
#amostra de 30
hist(rnormalpois(n,30), nclass = sqrt(n))
#amostra de 1000
hist(rnormalpois(n,1000), nclass = sqrt(n))