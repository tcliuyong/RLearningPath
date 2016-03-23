library(vcd)
library(plotrix)
#简单拼图
par(mfrow=c(2,2))
slices <- c(10,12,4,16,8)
lbls <- c("US", "UK", "Aus", "Ger", "Fran")
pie(slices, label = lbls, main = "Simple Pie")
#给图添加比例
pct <- round(slices / sum(slices) * 100)
lbls2 <- paste(lbls, "", pct,"%",sep="")
pie(slices, labels=lbls2,col = rainbow(length(lbls2)), main="Pie Chart with Percentages")
#3D Pie
pie3D(slices, labels = lbls, explode=0.1, main = "3D Pie")
#变形的扇形图
fan.plot(slices, labels = lbls, main="Fan Flot")