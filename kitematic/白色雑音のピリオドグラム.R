###白色雑音のピリオドグラム###
#pdf("白色雑音のピリオドグラム.pdf")
library(TSSS)

n <- 200
x <- as.ts( rnorm(n) )
acf(x, lag=50)
l <- period( x, window=0 )
plot (log10(l$period), type="l", ylim=c(-4,1), xaxt="n")
x_pos <- seq(0, n/2, floor(n/10))
x_val <- seq(0, 0.5, 0.1) 
axis( side=1, at= x_pos, labels= x_val)


dev.off()