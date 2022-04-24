###図3.21次の自己回帰モデルの自己相関関数、スペクトル、および実現値###
pdf("図3.21次の自己回帰モデルの自己相関関数、スペクトル、および実現値.pdf")
library(TSSS)

n <- 200
par(mfrow=c(2,1), mar=c(2,2,1,1), 0)

# AR過程の生成
y <- arima.sim(n=n, list(ar=c(0.9 * sqrt(3), -0.81)))
plot(y, type="l", main="Realization")

autocorrelation <- acf(y, plot=FALSE)
plot(autocorrelation, main="Autocorrelation")

spectrum(y)


dev.off()