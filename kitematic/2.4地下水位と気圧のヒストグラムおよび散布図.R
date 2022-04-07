###2.4地下水位と気圧のヒストグラムおよび散布図###
pdf("図2.4地下水位と気圧のヒストグラムおよび散布図.pdf")
library(TSSS)

data(HAKUSAN)
data(Haibara)

pairs(HAKUSAN[, c(2, 3, 4)])

dev.off()