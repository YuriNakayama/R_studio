###3.6白色雑音の標本自己相関関数とピリオドグラム###
pdf("図3.6白色雑音の標本自己相関関数とピリオドグラム.pdf")
library(TSSS)

r <- as.ts(rnorm(3200))
unicor(r, lag=50)
x <- period(r, window=0)
plot(log10(x$period), type="l", ylim=c(-4, 1), xaxt="n")
axis(side=1, at=c(0, 320, 640, 960, 1280, 1600), labels=c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))

r1 <- r[1:800]
unicor(r1, lag=50)
x1 <- period(r1, window=0)
plot(log10(x1$period), type="l", ylim=c(-4, 1), xaxt="n")
axis(side=1, at=c(0, 80, 160, 240, 320, 400), labels=c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))

r2 <- r[1:200]
unicor(r2, lag=50)
x2 <- period(r2, window=0)
plot(log10(x2$period), type="l", ylim=c(-4, 1), xaxt="n")
axis(side=1, at=c(0, 20, 40, 60, 80, 100), labels=c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))

dev.off()