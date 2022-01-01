Ecuación de Enfriamiento
================
Diego Morante Suarez
3/1/2022

### DESARROLLO DE SITUACION DE ENFRIAMIENTO

Se halla la constante de enfriamiento *k* con ayuda de temperatura final
e inicial y el tiempo de variacion, en este caso de enfriamiento. Por
otro lado, tambien se podria hallar con la Masa y Área de transferencia
de calor, que son medibles, como tambien de el Coeficiente de
transferencia de calor y Calor especifico.

``` r
k = log((23.2 - 20)/(71.3 - 20))/(-1000)
k
```

    ## [1] 0.00277454

Creación de de la ecuación en Rstudio:

``` r
Var_Temp <- function(t, T_0 = c(1:100)){
  VT <- 20 + exp(-0.00277454*t)*(T_0 - 20)
  return(VT)
}
```

Probamos la ecuación programada para un t=1000 segundos y una
temperatura de partida o inicial T_0 = 71.3 °C

``` r
Var_Temp(1000, 71.3)
```

    ## [1] 23.2

# GRÁFICA DE LA ECUACIÓN DE ENFRIAMIENTO

Grafica para un t=1000 segundos y una temperatura de partida o inicial
T_0 = 71.3 °C

``` r
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
```

![](Desarrollo-de-la-ecuacion-de-Enfriamiento_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

Tendencia al largo plazo

``` r
plot(Var_Temp, 
     0, 2200, #Intervalo 
     type = "o", pch = 21, col = "black",
     xlab = "tiempo [s]", ylab = "Variacion de Temperatura [T°]", 
     main = "Variacion de temperatura")
```

    ## Warning in exp(-0.00277454 * t) * (T_0 - 20): longitud de objeto mayor no es
    ## múltiplo de la longitud de uno menor

``` r
abline(h =20, 
       lty = 10, 
       col = "red")

legend(1200, 10 , c("Temperatura ambiente", "Decaimiento exponencial"), 
       col = c("red", "black"),
       lty=1:3, cex=0.75)
```

![](Desarrollo-de-la-ecuacion-de-Enfriamiento_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->