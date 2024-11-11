set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd= 10) #altura en cm
peso <- 0.5 * altura + rnorm(n,mean = 0, sd =5) #peso en kg, con algo de ruido
t.test(altura, peso)
cor.test(altura,peso)
