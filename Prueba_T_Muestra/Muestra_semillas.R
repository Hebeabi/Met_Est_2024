#Prueba de T de una muestra
#Realizar la comparación de una muestra experimental vs una muestra
# teórica
library(readr)
semillas <- read_csv("Datos semillas.csv")
View(Datos_semillas)


# Ejemplo 1 ---------------------------------------------------------------


#Probar la normalidad de los datos de las semillas con shapiro.test
shapiro.test(semillas$Peso)

#Primera visualización de los datos
boxplot(semillas$Peso,
        col = "salmon1")
abline(h =6.2, col="tomato2", lwd = 3, lty = "dotdash")
abline(h=5.7,col="turquoise3", lwd =3, lty = "dotdash")
#lwd = ancho y lty = tipo

t.test(semillas$Peso, mu = 6.2)
#mu = media teorética
#no existen diferencias entre el peso observado y el peso de
#la media teorética
#aceptando la hpótesis alternativa


# Ejemplo 2 ---------------------------------------------------------------

#Ahora la media teorética es de 5.85
boxplot(semillas$Peso,
        col = "salmon1")
abline(h =5.85, col="tomato2", lwd = 3, lty = "dotdash")
abline(h=5.7,col="turquoise3", lwd =3, lty = "dotdash")
#Conclusión = las semillas de la facultad son menores de otros lugares de Nuevo León


# Ejercicio 3 -------------------------------------------------------------

#Ahora la media teorética es de 5.78 g
boxplot(semillas$Peso,
        col = "salmon1")
abline(h =5.78, col="tomato2", lwd = 3, lty = "dotdash")
abline(h=5.7,col="turquoise3", lwd =3, lty = "dotdash")

t.test(semillas$Peso, mu = 5.78)
