#Nama: Mohamad Rayahand V
#Kelas : 3b
#Nim : 3338250066
#Tugas Komputasi Statistika

# data airquality
data <- (airquality)
data
str(airquality)
library(lattice)

#Histogram
range(airquality$Wind)
histogram(~Wind, data = airquality,
          breaks = (0:8) * 3,
          col = "orange",
          main = "Histogram",
          xlab = "Wind (mph)"
          )
#Histogram + Density
dens <- density(airquality$Wind)
hist(airquality$Wind, 
     breaks = (0:8) * 3, 
     probability = TRUE, 
     xlab = "Wind (mph)", 
     main = "Histogram + Density",
     col = "orange")

lines(dens, col = "black", lwd = 2)

#boxplot
boxplot(airquality,
       main = "Boxplot",
       xlab = "Wind(mph)",
       col = "orange")

# steam and leaf
stem(airquality$Wind)
stem(airquality$Day)
stem(airquality$Month)
stem(airquality$Temp)
stem(airquality$Solar.R)
stem(airquality$Ozone)

#scatterplot
data(airquality)
plot(airquality$Temp, airquality$Ozone,
     pch = 16, pty = "s",
     main = "Scatterplot Temperature dan Ozone",
     xlab = "Temperature",
     ylab = "Ozone")

rug(airquality$Temp)
rug(airquality$Ozone, side = 2)
abline(0, 1, col = "red", lwd = 2)

