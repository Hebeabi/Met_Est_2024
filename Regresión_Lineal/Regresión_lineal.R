#Regresión lineal 

geyser <- read.csv("erupciones.csv", header =T)

plot(geyser$waiting, geyser$eruptions, pch =19,
     col = "pink",
     xlab = "Tiempo espera(min)",
     ylab = "Duración (min)")
#range nos proporciona un rango de datos 8minimo a máximo)
range(geyser$eruptions)
range(geyser$waiting)

cor.test(geyser$eruptions, geyser$waiting)
#.9 = el resultado salió mayor

# cor.test = revisar si existe una relación lineal entre 2 variables
cor.test(geyser$eruption, geyser$waiting)

#podemos redecir el tiempo de la erupción en base
#al tiempo de espera entre 2 erupciones consecutivas?

#modelo lieal = buscar la variable buscada y luego la independiente

lm(geyser$eruptions ~ geyser$waiting)
#primero la variable buscada (eruption) y en función del tiempo de espera (waiting)

gy.lm <- lm(geyser$eruption ~ geyser$waiting)
#la pendiente va incrementando muy bajito

summary(gy.lm)
#si es significativa la intercepción (Pr, y si tiene *** si es significativa)
#alpha 0.05
#R2 = coeficiente de determinación R-squared = R ajustado
#el porcentaje de variable "x" esta explicando la variabilidad del
#tiempo de la duración por erupción.

#Graficar la línea de tendencia central con abline
plot(geyser$waiting, geyser$eruptions, pch =19,
     col = "pink",
     xlab = "Tiempo espera(min)",
     ylab = "Duración (min)")
abline(gy.lm, col = "purple", lwd = 3)
#si no aparece es porque el modelo lineal lo pusimos al revés

#agregar una tabla el valor predicho
geyser$predicho <- gy.lm$fitted.values
geyser$yprima <- -1.874016 + 0.075628 * geyser$waiting
geyser$residual <- gy.lm$residuals^2

#si quiero conocer el tiempo de erupción en esas diferentes minutos de espera (70,75,82)
yprima <- c(70,75,82)
-1.87+0.075 * yprima
