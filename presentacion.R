# funciones
make_rows_sum_to_1 <- function(mat) {
  row_sums <- apply(mat, 1, sum)   # Calculate the row sums
  return(mat / row_sums)           # Divide each element by its row sum
}


# PRESENTACIÓN MOVILIDAD SOCIAL
library(markovchain)

# matrices de transición en un paso y estados
P_educativa_nac=matrix(c(0.08, 0.16, 0.27, 0.30, 0.13, 0.05, 0.01, 0.10, 0.20, 0.38, 0.20, 0.10, 0.01, 0.02, 0.15, 0.40, 0.28, 0.14, 0, 0.01, 0.05, 0.28, 0.40, 0.26, 0, 0, 0.02, 0.16, 0.43, 0.38, 0, 0, 0.02, 0.08, 0.26, 0.64), nrow = 6, byrow = TRUE)
P_educativa_M=matrix(c(0.09, 0.16, 0.28, 0.31, 0.12, 0.04, 0.02, 0.11, 0.23, 0.39, 0.17, 0.08, 0.01, 0.03, 0.14, 0.47, 0.24, 0.12, 0, 0.01, 0.07, 0.32, 0.37, 0.23, 0.01, 0, 0.03, 0.17, 0.42, 0.37, 0, 0, 0.03, 0.08, 0.28, 0.61), nrow = 6, byrow = TRUE)
P_educativa_H=matrix(c(0.07, 0.16, 0.27, 0.29, 0.15, 0.06, 0.01, 0.09, 0.17, 0.37, 0.23, 0.13, 0, 0.02, 0.15, 0.34, 0.32, 0.16, 0, 0.01, 0.03, 0.24, 0.43, 0.28, 0, 0, 0.02, 0.15, 0.44, 0.39, 0, 0, 0.2, 0.8, 0.24, 0.66), nrow = 6, byrow = TRUE)
P_educativa_norte=matrix(c(0.29, 0.42, 0.19, 0.10, 0.8, 0.39, 0.37, 0.17, 0.02, 0.21, 0.39, 0.38, 0.01, 0.13, 0.34, 0.53), nrow = 4, byrow = TRUE)
P_educativa_centro=matrix(c(0.28, 0.39, 0.21, 0.09, 0.03, 0.24, 0.43, 0.29, 0.2, 0.13, 0.44, 0.40, 0.01, 0.07, 0.24, 0.68), nrow = 4, byrow = TRUE)
P_educativa_sur=matrix(c(0.45, 0.28, 0.19, 0.08, 0.09, 0.26, 0.38, 0.27, 0.06, 0.18, 0.49, 0.28, 0.03, 0.06, 0.30, 0.62), nrow = 4, byrow = TRUE)
P_ocupacional_nac = matrix(c(0.25, 0.24, 0.21, 0.14, 0.12, 0.04, 0.01, 0.33, 0.26, 0.27, 0.07, 0.07, 0.02, 0.22, 0.39, 0.19, 0.14, 0.04, 0.03, 0.10, 0.16, 0.25, 0.26, 0.19, 0, 0.08, 0.22, 0.21, 0.28, 0.2, 0, 0.15, 0.21, 0.29, 0.11, 0.24), nrow = 6, byrow = TRUE)
P_ocupacional_M = matrix(c(0.08, 0.34, 0.15, 0.32, 0.07, 0.02, 0, 0.37, 0.13, 0.33, 0.11, 0.05, 0.01, 0.27, 0.16, 0.32, 0.18, 0.06, 0, 0.25, 0.09, 0.37, 0.16, 0.13, 0, 0.11, 0.10, 0.27, 0.34, 0.19, 0, 0.19, 0.06, 0.20, 0.22, 0.33), nrow = 6, byrow = TRUE)
P_ocupacional_H = matrix(c(0.30, 0.15, 0.31, 0.17, 0.04, 0.04, 0.01, 0.27, 0.36, 0.16, 0.14, 0.06, 0.01, 0.16, 0.45, 0.16, 0.13, 0.09, 0.01, 0.11, 0.25, 0.36, 0.13, 0.14, 0, 0.13, 0.21, 0.20, 0.26, 0.19, 0, 0.11, 0.24, 0.14, 0.17, 0.35), nrow = 6, byrow = TRUE)
estados_educativa = c("Sin estudios", "Primaria incompleta", "Primaria", "Secundaria", "Preparatoria", "Profesional")
estados_educativa_r = c("Primaria o menos", "Secundaria", "Preparatoria", "Profesional")
estados_ocupacional = c("Agrícolas", "MBC", "MAC", "Comercio", "NMBC", "NMAC")

# Cadena de Markov
P <- make_rows_sum_to_1(P_educativa_M)
CM = new("markovchain", transitionMatrix=P, states=estados_educativa)
CM
plot(CM,  edge.width = 0.2)
summary(CM)
pi=steadyStates(CM)
pi

# permanencia promedio en un estado
avg_time <- lapply(1:nrow(P), function(i) {
  1/(1-P[i,i])
})
avg_time
sd_time <- lapply(1:nrow(P), function(i) {
  sqrt(P[i,i])/(1-P[i,i])
})
sd_time

PMI <- (6 -sum(diag(P)))/(6-1)
PMI

## probabilidades de subir
# hombres vs mujeres
P_M <- make_rows_sum_to_1(P_educativa_M)
CM_M = new("markovchain", transitionMatrix=P, states=estados_educativa)
P_H <- make_rows_sum_to_1(P_educativa_H)
CM_H = new("markovchain", transitionMatrix=P, states=estados_educativa)


# regiones: norte, centro, sur
P_edu_norte <- make_rows_sum_to_1(P_educativa_norte)
CM_edu_norte = new("markovchain", transitionMatrix=P_edu_norte, states=estados_educativa_r)
P_edu_centro <- make_rows_sum_to_1(P_educativa_centro)
CM_edu_centro = new("markovchain", transitionMatrix=P_edu_centro, states=estados_educativa_r)
P_edu_sur <- make_rows_sum_to_1(P_educativa_sur)
CM_edu_sur = new("markovchain", transitionMatrix=P_edu_sur, states=estados_educativa_r)
P_edu_M <- make_rows_sum_to_1(P_educativa_M)
CM_edu_M = new("markovchain", transitionMatrix=P_edu_M, states=estados_educativa)
P_edu_H <- make_rows_sum_to_1(P_educativa_H)
CM_edu_H = new("markovchain", transitionMatrix=P_edu_H, states=estados_educativa)
P_ocu_M <- make_rows_sum_to_1(P_ocupacional_M)
CM_ocu_M = new("markovchain", transitionMatrix=P_ocu_M, states=estados_ocupacional)
P_ocu_H <- make_rows_sum_to_1(P_ocupacional_H)
CM_ocu_H = new("markovchain", transitionMatrix=P_ocu_H, states=estados_ocupacional)


avg_time_norte <- lapply(1:nrow(P_edu_norte), function(i) {
  1/(1-P_edu_norte[i,i])
})
avg_time_norte
avg_time_centro <- lapply(1:nrow(P_edu_norte), function(i) {
  1/(1-P_edu_centro[i,i])
})
avg_time_centro
avg_time_sur <- lapply(1:nrow(P_edu_norte), function(i) {
  1/(1-P_edu_sur[i,i])
})
avg_time_sur

prob_extremos <- function(Cad, estados) {
  v = c()
  for (i in c(1,2, 3, 4, 5)) {
    v <- c(v, transitionProbability(Cad^i, estados[2], estados[2]))
  }
  return(v)
}


### Gráfica: sexo - ocupacional
grafica_sexo_o = data.frame(Mujeres = prob_extremos(CM_ocu_M, estados_ocupacional), 
                          Hombres = prob_extremos(CM_ocu_H, estados_ocupacional))
rownames(grafica_sexo_o) <- c(1,2, 3, 4, 5)

# Plot the bar chart.
plot(rownames(grafica_sexo_o), grafica_sexo_o$Hombres,type = "o", col = "darkgreen", xlab = "generaciones", ylab = "probabilidad",
     main = "Permanencia en MBC por sexo", ylim = c(0.1, 0.4))
lines(rownames(grafica_sexo_o), grafica_sexo_o$Mujeres, type = "o", col = "darkorange")
legend("topright", legend = c("Mujeres", "Hombres"), col = c("darkorange", "darkgreen"), lty = 1)



