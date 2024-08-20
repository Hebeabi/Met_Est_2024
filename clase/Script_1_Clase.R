# Problema 1 -------------------------------------------------

# Ingresar en objetos la superficie reforestada por especie

Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juniperus <- 720

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperus)
sup <- c(3140, 1453, 450, 1200, 720)

sup
superficie #confirmar resultados

# Operaciones
# Tranformar ha a m2
m2 <- superficie * 10000
sup * 10000

nombre <- c("Pinus", "Mez", "Teka", "Jun", "Encino")
sup2 <- sort(sup, decreasing = T)

barplot(sup2, ylim = c(0,3500),   #ylim modifica la numeración de las barras
        col = "pink", names.arg = nombre,
        xlab = "Especies",
        ylab = "Superficie (ha)",
        main = "Reportes CONAFOR")
       
