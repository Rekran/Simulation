import matplotlib.pyplot as plt
import numpy as np
from math import sqrt
import scipy.stats as stats

mu = 0
variance = 1
sigma = sqrt(variance)
y = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)

mean_x = np.array(range(1000),dtype = float)
lambda_exp = 1.0
x = np.random.exponential(lambda_exp,100000)
n = 10

for i in range(1000):
    mean_x[i] = (np.sum(np.random.choice(x, n, replace=True))/n)
    mean_x[i] = (mean_x[i] - (1/lambda_exp)) / sqrt((1/(lambda_exp*lambda_exp)/n))

plt.figure(1)
#linhas da normal mu = 0 , var = 1
plt.plot(y, stats.norm.pdf(y, mu, sigma))
plt.hist(mean_x, bins = int(sqrt(1000)),density = True)

plt.title('Normal Pela   Exponencial Python/Numpy com N = 10')
plt.ylabel('Frequência')
plt.xlabel('Classes')

n = 30

for i in range(1000):
    mean_x[i] = (np.sum(np.random.choice(x, n, replace=True))/n)
    mean_x[i] = (mean_x[i] - (1/lambda_exp)) / sqrt((1/(lambda_exp*lambda_exp)/n))

plt.figure(2)

#linhas da normal mu = 0 , var = 1
plt.plot(y, stats.norm.pdf(y, mu, sigma))
plt.hist(mean_x, bins = int(sqrt(1000)),density = True)

plt.title('Normal Pela   Exponencial Python/Numpy com N = 30')
plt.ylabel('Frequência')
plt.xlabel('Classes')

n = 1000

for i in range(1000):
    mean_x[i] = (np.sum(np.random.choice(x, n, replace=True))/n)
    mean_x[i] = (mean_x[i] - (1/lambda_exp)) / sqrt((1/(lambda_exp*lambda_exp)/n))

plt.figure(3)
#linhas da normal mu = 0 , var = 1
plt.plot(y, stats.norm.pdf(y, mu, sigma))
plt.hist(mean_x, bins = int(sqrt(1000)),density = True)

plt.title('Normal Pela   Exponencial Python/Numpy com N = 1000')
plt.ylabel('Frequência')
plt.xlabel('Classes')

plt.show()
