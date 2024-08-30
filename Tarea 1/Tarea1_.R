
# Facturas mensuales de una estudiante universitaria de la MFC

Teléfono_celular <- 300
Transporte <- 240
Comestibles <-  1527
Gimnasio <- 400
Alquiler <- 1500
Otros <- 1833

# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833
# Total = $5800

# ¿Cuánto gastaría durante un semestre escolar?
# (suponga que el semestre implica cinco meses).
5800 * 5 # = 29000

#Manteniendo la misma suposición sobre los gastos mensuales,
#¿cuánto gastaría la estudiante durante un año escolar?
#(Suponga que el año académico es de 10 meses)
5800 * 10 # = 5800

# Autoevaluación

gastos <- c(Teléfono_celular, Transporte, Comestibles, Gimnasio, Alquiler, Otros)
gas <- c(300, 240, 1527, 400, 1500, 1833)

gastos <- c("Teléfono_celular", "Transporte", "Comestibles", "Gimnasio", "Alquiler", "Otros")
gas2 <- sort(gas, decreasing = T)

barplot(gas2, ylim = c(0,2000),
        col = "lightblue",
        names.arg = gastos,
        xlab = "gastos",
        ylab = "cantidad",
        main = "Gastos")

#Parte II Variables

#Problema 1:

#Nombre de estudiante = cualitativa
#Fecha de nacimiento = cuantitativa
#Edad = cuantitativa
#Dirección de casa = cualitativa
#Número de teléfono = cuantitativa
#Area principal de estudio = cualitativa
#Grado de año universitario = cuantitativa
#Puntaje en la prueba de mitad del periodo = cuantitativa
#Calificación general: A, B, C, D, F = cualitativa
#Tiempo (min) para completar la prueba final de MCF 202. = cuantitativa
#Número de hermanos = cuantitativa

#Problema 2
#cuantitativas =  Peso, Altura
#cualitativas = sexo, estado civil

#Problema 3
#Son variables cualitativas porque ofrecen información categórica.

#1.Individuos de interés: estudiantes de universidades públicas.
#variables: número de horas que trabajan a la semana.
#Tipo de variable: cuantitativa.

#2.Individuos de interés: estudiantes universitarios de México.
#Variable: número de alumnos inscritos.
#Tipo de variable: cuantitativa.

#3.Individuos de interés: Estudiantes mujeres y hombres en universidades públicas.
#Variable: Promedio de CENEVAL.
#Tipo de variable: cuantitativa.

#4.Individuos de interés: Atletas universitarios.
#Variable: Reciben asesoramiento académico.
#Tipo de variable: Categórica

#5.Se pueden analizar las variables cuantitativas, ya que,
# los historigramas nos muestran la distribución de dichos datos.