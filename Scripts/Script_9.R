#minimo 3 grupos.
#Permite comprobar si existen
#diferencias significativas entre las medias de dos o más grupos 
#y determinar si las diferencias son significativas.
#prueba de Tukey: qué grupo es diferente a cual, diferencia entre los grupos.

#anova
#experimento de cuatro parajes y sus diámetros
#Parajes de chihuahua


# importar datos ----------------------------------------------------------

paraje <-read.csv("Datos_Rascon_Anova.csv", header=T)
paraje$Paraje <- as.factor(paraje$Paraje)

boxplot(paraje$DAP ~ paraje$Paraje, col= "pink",
        xlab = "pasajes",
        ylab= "DAP")

#Aplica a una función de subconjuntos  de datos de un vector o data frame.
tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var)

shapiro.test(paraje$DAP)
#comparar normalidad

bartlett.test(paraje$DAP ~ paraje$Paraje)
#determinar la homogeneidad de varianzas

#Se utiliza para calcular una prueba de análisis de varianza (ANOVA)
par.aov <- aov(paraje$DAP ~ paraje$Paraje)
#varianza de modelo

#la función summary ofrece un resumen de información decriptiva de las columnas de un conjunto de datos.
summary(par.aov)
#*** nivel de significancia es menor a 0.05
#si hay diferencia significativa alta da 2. -16 el valor es mucho más pequeño entonces si hay diferencia
#9892 / 3 = 3297 / 90 = 36.51
#prueba de Tukey nos dice donde hay diferencias significativas entre los sitios, 
#porque ya nos dijo la prueba de varianzas que si hay diferencia entre los sitios.


# Prueba de tukey ---------------------------------------------------------
#Prueba estadística que s utiliza para comparar las medias de todos los tratamientos 
#con la media de cada uno de los demás tratamientos.
TukeyHSD(par.aov)
#diff = diferencias 
plot(TukeyHSD(par.aov))
# se genera una representación gráfica de las diferencias entre los niveles del factor analizado
#los que están más cerca de 0.05 (de 0) no tienen diferencias significativas
#y las que están más lejos si tienen una diferencia significativa.