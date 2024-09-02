library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

View(conjunto)

conjunto$Clase <- as.factor(conjunto$Clase)
conjunto$Especie <- as.factor(conjunto$Especie)
summary(conjunto)

boxplot(conjunto$Altura ~ conjunto$Especie,
        xlab = "Especie",
        ylab = "Altura",
        col = "palevioletred1")
boxplot(conjunto$Vecinos ~ conjunto$Especie,
        xlab = "Vecinos",
        ylab = "Especie",
        col = "paleturquoise")
boxplot(conjunto$Diametro ~ conjunto$Especie,
        xlab = "Diametro",
        ylab = "Especie",
        col = "lightgoldenrod1")

#Seleccionar la especie F mediante subset ( subconjunto)
Spf <- subset(conjunto, conjunto$Especie == "F")

#Seleccionar exceptuando F (!=, diferente o igual a F)
SpHC <- subset(conjunto, conjunto$Espcie != "F")

#Señala la media (promedio) de intersección de datos
#tapply indica una caracteristica que querramos encontrar entre varias variables, en este caso el promedio
tapply(conjunto$Altura, conjunto$Especie, mean)

#Señala si hay una media(promedio) entre todos los datos mayor o igual a la Variable Altura
mean(conjunto$Altura)
#13.94
SpHpro <- subset(conjunto, conjunto$Altura >= mean(conjunto$Altura))

#Señala si hay una media (promedio) igual a la Altura
SpHpro <- subset(conjunto, conjunto$Altura == mean(conjunto$Altura))

which(conjunto$Altura > 20)
#El dato se encuentra en la fila 18
conjunto[18:20,7]
conjunto[c(18,20), ]
conjunto[,3]
