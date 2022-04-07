###2.2時系列データ###
pdf("図2.5船舶データの自己相関関数と相互相関関数.pdf")
library(TSSS)

data(HAKUSAN)

par(mar=c(2,3,2,1)+0.1)
unicor(HAKUSAN[,2:4], lag=50)

dev.off()