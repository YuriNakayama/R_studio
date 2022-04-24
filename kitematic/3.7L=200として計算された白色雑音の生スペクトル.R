###3.7L=200として計算された白色雑音の生スペクトル###
pdf("図3.7L=200として計算された白色雑音の生スペクトル.pdf")
library(TSSS)

r <- as.ts(rnorm(800))
x <- period(r, window=0, lag=800)
plot(log10(x$period), type="l", ylim=c(-4, 1), xaxt="n")
axis(side=1, at=c(0, 80, 160, 240, 320, 400), labels=c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))

x <- period(r, window=0, lag=200)
plot(log10(x$period), type="l", ylim=c(-4, 1), xaxt="n")
axis(side=1, at=c(0,20, 40, 60, 80, 100), labels=c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))

dev.off()