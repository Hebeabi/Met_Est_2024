#Importar datos de Github

url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"
madera <- read.csv(url, header = T)

boxplot(madera$Peso_g ~ madera$Especie,
        xlab = "Peso_g",
        ylab = "Especie",
        col = "lemonchiffon2" )
#Gavia variabilidad de datos que la barreta 
#Tienen casi la misma media
#Peso en la especie gavia es más grande que la barreta

shapiro.test(madera$Peso_g)
p-value = 0.1548 
#los datos son normales porque es más alto que lo que equivale alpha = 0.05
# Prueba de w (Shapiro)

bartlett.test(madera$Peso_g ~ madera$Especie) # ~ en función
p-value = 0.00005715 
#Prueba de K (Bartlett)
# No son homogeneos, son muy diferentes pesos
#df = grados de libertad comparando dos especies, menos 1 es 1

madera$Peso_t <- log(madera$Peso_g+ 0.5) 
boxplot(madera$Peso_t ~ madera$Especie,
        xlab = "Peso_t",
        ylab = "Especie",
        col = "darkslategray3")

t.test(madera$Peso_g ~ madera$Especie, var.equal =F)
#si el valor de t tabulado (1.4) es menor que t calculado (-3.4) hay diferencias, 
#si es menor no hay diferencias 

boxplot(madera$Lado_C ~ madera$Especie,
        xlab = "Lado_C",
        ylab = "Especie",
        col = "lavenderblush2")

which(madera$Lado_C > 20.5)
madera[c(23,30),]
