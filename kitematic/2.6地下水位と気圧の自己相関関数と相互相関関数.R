###2.6地下水位と気圧の自己相関関数と相互相関関数###
pdf("図2.6地下水位と気圧の自己相関関数と相互相関関数.pdf")
library(TSSS)

data(Haibara)

par(mar=c(2,3,2,1)+0.1)
crscor(Haibara, lag=50)

dev.off()