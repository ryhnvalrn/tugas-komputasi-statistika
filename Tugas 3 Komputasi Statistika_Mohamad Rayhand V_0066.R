data(airquality)

str(airquality)
airquality

range(airquality$Wind)
histogram(~Wind, data = airquality,
          breaks = (0:8) * 3,
          col = "orange",
          main = "Histogram",
          xlab = "Wind (mph)"
          )
dens <- density(airquality$Wind)
hist(airquality$Wind, 
     breaks = (0:8) * 3, 
     probability = TRUE, 
     xlab = "Wind (mph)", 
     main = "Histogram + Density",
     col = "orange")

lines(dens, col = "black", lwd = 2)

boxplot(airquality,
       main = "Boxplot (lattice)",
       xlab = "Total length (cm)",
       col = "orange")

stem(airquality$Wind)
stem(airquality$Day)
stem(airquality$Month)
stem(airquality$Temp)
stem(airquality$Solar.R)
stem(airquality$Ozone)

data(airquality)

plot(airquality$Temp, airquality$Ozone,
     pch = 16, pty = "s",
     main = "Scatterplot Temperature dan Ozone",
     xlab = "Temperature",
     ylab = "Ozone")

rug(airquality$Temp)

rug(airquality$Ozone, side = 2)

abline(0, 1, col = "red", lwd = 2)

