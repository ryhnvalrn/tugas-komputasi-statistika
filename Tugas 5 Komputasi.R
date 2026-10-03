#Nama:Mohamad Rayhand V
#Kelas:3b
#Nim:3338250066
#Tugas Komstat

#Soal 1 (Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)?)
pexp(5, rate = 1/5, lower.tail = FALSE)

#Soal 2 (Kereta komuter tiba di stasiun secara acak antara pukul 07.00 hingga 07.20 
#(interval 20 menit). Berapakah ragam (varians) waktu tunggu penumpang?)
set.seed(2025)
n <- 1000
a <- 0
b <- 20
x <- runif(n, min = a, max = b)
var(x)

#Soal 3 (Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun. Berapa 
#peluang sensor tersebut rusak sebelum mencapai usia 5 tahun?)
pexp(5, rate = 1/10, lower.tail = TRUE)


#Soal 4 (Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan sigma = 5 gram. 
#Kemasan dianggap underweight jika beratnya kurang dari 240 gram. 
#Berapa proporsi produk yang tergolong underweight?)
mu <- 250
sigma <- 5
pnorm(240, mean = mu, sd = sigma)
