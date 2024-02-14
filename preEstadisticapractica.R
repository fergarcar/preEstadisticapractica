getwd()
nuevo_dir <-"C:/preEstadisticapractica"
setwd (nuevo_dir)

##Para el nuevo repositorio, primero situamos las funciones colocadas encima de esta línea, creando un nuevo directorio

#1
x <-c(1,2,3,4,5)
y <- c(9.1, 2.4, 7.5, 1.3, 3.4)
print(x)
print (y)

##creo los vectores situando el nombre antes de darles un valor numérico
##los vectores son un tipo de estructura que usamos para albergar elementos, en este caso elementos numéricos que van colocados dentro de la función c

#2
x+y #suma

x-y #resta

x/y #dividir

x*y #multiplicar

x^y #elevar

#3
y^2 #elevar

#4
y*10 #multiplicar

#5
y+25 #sumar

#6
valor_y <- c(9.1, 2.4, 7.5, 1.3, 3.4)
valor_maximo <-max(valor_y)

#7
valor_y <- c(9.1, 2.4, 7.5, 1.3, 3.4)
valor_minimo <- min(valor_y)

#8
valor_absoluto_y <- c(9.1)
valor_absoluto <- abs(9.1)

#9
raiz_y <- c(9.1, 2.4, 7.5, 1.3, 3.4)
raiz_cuadrara_y <- sqrt(raiz_y)

#10
y <- c(9.1, 2.4, 7.5, 1.3, 3.4)
suma_total <- sum(y)

#11
mi_lista <- list("vector_x" = x, "vector_y" = y )
longitud_lista <- length(mi_lista)
print (mi_lista)

##Sobre el tipo de dato que emplea R, en este caso es double al ser unos valores numericos enteros y otros valores numericos con decimales, es el modo mas fiable para evitar perdida de datos en las operaciones matematicas
###El motivo de la transformacion es como se ha mencionado, por cuestion de ser mas preciso double y a la hora de representarlos es mas fiable

#12
is.na(mi_lista)

#13
z <- c(29, NA, 12, 46, 73)

#14
mean(z)
#no puede salir una media porque dentro del vector existe NA, es decir, que no tiene ningun valor asignado, asi que no puede hacer la media del resto de valores
##esto se podria solucionar cambiando el NA por otro valor numerico

z<- c(29,32,12,46,73)
mean (z)

#15
matriz <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                 nrow = 4, ncol = 3,
                 byrow = TRUE)
                 
print (matriz)

#16
matriz_filas <- matrix(nrow = 4, ncol = 3,
                       data = c(24,69,3,90,23,56,1,63,87,21,77,19))
print (matriz_filas)

#17
a <- matrix(1:9, nrow = 3, ncol = 3,
            byrow = FALSE)

b <- matrix(10:18, nrow = 3, ncol = 3,
            byrow = FALSE)

print(a)
print(b)

#18
suma_matriz <- a+b
resta_matriz <- a-b

print(suma_matriz)
print(resta_matriz)

##El resultado obtenido es que en las lineas y columnas nos salen el numero nueve en negativo, el motivo de esto es porque al restar a la columna A los elementos de la columna B, sale negativo

#19
matriz_1 <- matrix(matriz, nrow = nrow(matriz), ncol = 4,
                   byrow = TRUE) 
##esto me da error y no se por que

#20
matriz_multiplicada <- matriz*2
print(matriz_multiplicada)

#21
matriz_mult <- a*b
print (matriz_mult)

#22
matriz_mult[2,3]

matriz_mult[2,]

matriz_mult[ ,3]

#Generar datos aleatorios de cuentas en un yacimiento
#1
set.seed(123) #Fijar semilla para reproducibilidad
num_cuentas <- round(rnorm(100, mean = 50, sd = 10))
print(num_cuentas)

#2
media <- mean(num_cuentas)
print(media)

#3
mediana <- median(num_cuentas)
print(mediana)

#4
moda <- as.numeric(names(sort(table(num_cuentas), decreasing = TRUE) [1]))
print(paste("La moda de las cuentas en el yacimiento es:", moda))
      
#5
rango <- max(num_cuentas) - min(num_cuentas)
print(rango)

#6
percentil_25 <- quantile(num_cuentas, 0.25)
print(percentil_25)

#7
percentil_75 <- quantile(num_cuentas, 0.75)
print(percentil_75)

#8
varianza <- var(num_cuentas)
print(varianza)

#9
desviacion_estandar <- sd(num_cuentas)
print(desviacion_estandar)

#10
hist(num_cuentas, main = "Histograma", col = "green",
     xlab = "Cuentas en yacimiento", ylab = "Frecuencia")

#11
boxplot (num_cuentas, main = "Diagrama", col = "orange",
         xlab = "Cuentas por yacimiento", ylab = "Frecuencia")
#12
dx <- density(num_cuentas)

lines(dx, lwd = 2, col = "red")

plot(dx, lwd = 2, col = "red",
     main = "Densidad")
rug(jitter(num_cuentas))

#13
barplot(table(num_cuentas), main = "Grafico de barras", col = "blue",
        xlab = "Cuentas en yacimiento", ylab = "Frecuencia")

#14
set.seed(123) 
tipo_de_artefacto <- c("litico", "arma", "oseo", "mueble", "ropa")
material <- c("madera", "metal", "hueso", "piedra", "tela")
periodo_cultura <- c("Neolitico", "Paleolitico", "Romano", "Islamico", "Moderno")
estado_de_conservacion <- c ("Excelente", "Bueno", "Decente", "Deficiente", "Deplorable")
ubicacion_del_artefacto <- c("Localizacion A", "Localizacion B", "Localizacion C", "Localizacion D", "Localizacion E")


