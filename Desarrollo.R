
k = log((23.2 - 20)/(71.3 - 20))/(-1000)

Var_Temp <- function(t, T_0 = c(1:100)){
  VT <- 20 + exp(-0.00277454*t)*(T_0 - 20)
  return(VT)
}

Var_Temp(1000, 71.3)

#Grafica
plot(Var_Temp, xlim=c(0, 1200), ylim=c(0, 25),
     0, 1500, #Intervalo 
     type = "o", pch = 17,
     xlab = "tiempo [s]", ylab = "Variacion de Temperatura [T°]", 
     main = "Variacion de temperatura")

points(1000, 23.3, pch = 4, col = "red")

abline(h =23.2, 
       lty = 10, 
       col = "red")

abline(v = 1000, 
       lty = 10, 
       col = "red")

legend(1020, 10 ,c("Cruze de lineas"), col = c("red"), 
       lty=1:5, cex=0.55)

#tendencia largo plazo

plot(Var_Temp, 
     0, 2200, #Intervalo 
     type = "o", pch = 21, col = "black",
     xlab = "tiempo [s]", ylab = "Variacion de Temperatura [T°]", 
     main = "Variacion de temperatura")

abline(h =20, 
       lty = 10, 
       col = "red")

legend(1200, 10 , c("Temperatura ambiente", "Decaimiento exponencial"), 
       col = c("red", "black"),
       lty=1:3, cex=0.75)


























