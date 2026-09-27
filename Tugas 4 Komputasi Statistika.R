#TUGAS 4#
#Komputasi Statistika#
#Nama : Mohamad Rayhand Vaierian
#NIM : 3338250066
#Kelas :3B

#1 POISSON
lambda <- 3
x <- 0:15
peluang <- 1 - ppois(4, lambda)
peluang
pmf <- dpois(x, lambda)
pmf
plot(x, pmf, type='h', lwd=3, main='Poisson(λ=3)', xlab='k', ylab='P(X=k)')


#2 HYPERGEOMETRIK
N <- 100 # total bola
K <- 20 # jumlah bola merah
n <- 10 # jumlah bola diambil
k <- 0:n #jumlah bola merah yg mungkin terambil
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak sukses dalam sampel)", ylab = "P(X=k)")


#3 BINOMIAL
set.seed(123)
n <- 15
p <- 0.4
simulasi <- rbinom(1000, size=n, prob=p)
hist(simulasi, breaks=seq(-0.5, n + 0.5, by=1), prob=1, 
     main="Histogram", xlab="k", ylab="P(X=k)",col="navy")
x <- 0:n
pmf <- dbinom(x, size = n, prob=p)
lines(x,pmf,type="b",pch=16, col="orange", lwd=3)