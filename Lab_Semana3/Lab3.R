Arboles <- read.csv("DBH_1.csv", header=TRUE)
dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 
         5.4, 5.7, 11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 
         10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 
         28.5, 10.4, 11.5, 14.3, 17.3, 16.8)

#PROFEPA

#Datos de URL seguras (https): Dropbox y Github

install.packages("repmis") #instalar paquetería
library(repmis)
conjunto <- source("https://www.dropbox.com/scl/fi/mpo1u26mb3efgv4pvfg8l/cuadro1.csv?rlkey=k0ccrhwur2uosvq9rlva29004&e=1&dl=1")

## Downloanding data from: https://www.dropbox.com/scl/fi/mpo1u26mb3efgv4pvfg8l/cuadro1.csv?rlkey=k0ccrhwur2uosvq9rlva29004&e=1&dl=1"

head(conjunto) # muestra las primeras seis filas de la BD

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)

#Parte 2: Operaciones con la base de datos

mean(Arboles$dbh) #el signo $ informa que necesitamos la columna dbh

sd(Arboles$dbh)

# Indica la sumatoria de los individuos en el objeto tree con un dbh < a 10
sum (Arboles$dbh < 10)

which(Arboles$dbh < 10)

Arboles.13 <- Arboles[!(Arboles$parcela=="2"),]
Arboles.13

Arboles.1 <- subset(Arboles, dbh <= 10)
head(Arboles.1)

mean(Arboles$dbh)
mean(Arboles.1$dbh)

#Parte 3 Representación Gráfica
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep)

hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas de sueño de las 39 especies",
     xlab = "Horas de sueño",
     ylab = "Frecuencia",
     las = 1,
     col = "pink")

#Barplot o gráfico de barras

data("chickwts")
head(chickwts[c(1:2,42:43,62:64),])

feeds <- table(chickwts$feed)
feeds

barplot(feeds[order(feeds, decreasing = TRUE)])
