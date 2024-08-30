setwd("C:/Repositorios/Met_Est_2024/Tarea 2")
conjunto <- read.csv("base de datos tarea 2.csv", header=TRUE)
head(conjunto)

H.media <- which(conjunto$Altura<=mean(conjunto$Altura))
H.media

H.16 <-which(conjunto$Altura<16.5)
H.16

Vecinos_3 <- which(conjunto$Vecinos<=3)
Vecinos_3
Vecinos_4 <- which(conjunto>4)

DBH.media <- which(conjunto$Diametro<mean(conjunto$Diametro))
DBH.media
DBH_16 <-which(conjunto$Diametro>16)
DBH_16

Especie <- c("cegro negro", "Tsuga heterófila", "Douglasia verde")
Especie

Diametro_16.9 <- which(conjunto$Diametro<=16.9)
Diametro_16.9

Altura_18.5 <-which(conjunto$Altura>18.5)
Altura_18.5

hist(conjunto$Altura,
     ylab = "metros",
     col = "purple")

hist(H.media,
     ylab = "metros",
     col = "yellow")

hist(H.16,
     ylab = "metros",
     col = "skyblue")

hist(Vecinos_3,
     ylab = "metros",
     col = "red")

hist(Vecinos_4,
     ylab = "metros",
     col = "lightgreen")

hist(conjunto$Diametro,
     ylab = "metros",
     col = "pink")

hist(DBH.media,
     ylab = "metros",
     col= "orange")

hist(DBH_16,
     ylab = "metros",
     col = "lightblue")

mean(conjunto$Altura)
sd(conjunto$Altura)

mean(H.media)
sd(H.media)

mean(H.16)
sd(H.16)

mean(Vecinos_3)
sd(Vecinos_3)

mean(Vecinos_4)
sd(Vecinos_4)

mean(conjunto$Diametro)
sd(conjunto$Diametro)

mean(DBH.media)
sd(DBH.media)

mean(DBH_16)
sd(DBH_16)
