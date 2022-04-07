###2.2時系列データ###
pdf("図2.2 自己相関関数.pdf")
library(TSSS)

data(HAKUSAN)
data(Sunspot)
data(Temperature)
data(BLSALLFOOD)
data(WHARD)
data(MYE1F)

par(mar=c(2,2,3,1)+0.1)
unicor(HAKUSAN[,1], lag=50)
unicor(log(Sunspot), lag=50)
unicor(Temperature, lag=50)
unicor(BLSALLFOOD, lag=50)
unicor(log(WHARD), lag=50)
unicor(MYE1F, lag=50)

dev.off()