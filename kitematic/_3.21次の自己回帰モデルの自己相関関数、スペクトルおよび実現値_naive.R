###図3.21次の自己回帰モデルの自己相関関数、スペクトル、および実現値###
pdf("図3.21次の自己回帰モデルの自己相関関数、スペクトル、および実現値.pdf")
library(TSSS)

n <- 200
m <- 1
ii <- m+1:n
mm <- 1:m
a <- c(0.9)
par(mfrow=c(2,1), mar=c(2,2,1,1), 0)

# 正規乱数の生成
v <- rnorm(n)
y <- numeric(n)

# AR過程の生成
y[1] <- v[1]
y[2] <- v[2] 

for (i in ii){
  y[i] <- v[i]
  for (j in mm){
    y[i] <- y[i] + a[j] * y[i - j]
  }
}
plot(y, type="l", main="Realization")



dev.off()