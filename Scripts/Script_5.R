#Muestras DEPENDIENTES
#Mismos individuos medidos en dos tiempos diferentes
#(2012 vs 2013 producción de semillas)

boxplot(tiempo$Kgsem ~ tiempo$Tiempo)
abline(h=10.01, col= "pink", lwd = 3, lty = "dotdash")
abline(h=10.9, col= "purple", lwd =3, lty = "dotdash")
# abline (Agregar líneas rectas a un gráfico)

#Determinar las medias de Kg en ambos años
# tapply (aplicar una función sobre una combinacion de filas o grupo)
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)


#Quiero saber si hay diferencia solamente
# t.test (Prueba de T de una y dos muestras en vectores de datos)
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired = T)

#saber Si 2013 es mayor a 2012
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired = T, alternative = "less")
