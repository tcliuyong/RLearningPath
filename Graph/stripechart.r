library(grid)
library(vcd) #引入数据集合而已
counts <- table(Arthritis$Improved)
print(counts)
#普通条形图
barplot(counts, main="Simple Bar", xlab="Improvement", ylab = "Frequency", horiz=TRUE)
#分组条形图
barplot(counts, main="Simple Bar", xlab="Improvement", ylab = "Frequency", col = c("red", "yellow", "green"), legend=rownames(counts), beside=TRUE)#加入了颜色的设置
#堆砌条形图
barplot(counts, main="Simple Bar", xlab="Improvement", ylab = "Frequency", col = c("red", "yellow", "green"), legend=rownames(counts))
#排序后均值的条形图
states <- data.frame(state.region, state.x77)
means <- aggregate(states$Illiteracy, by = list(state.region), FUN = mean)
print(means)
barplot(means$x, names.arg=means$Group.1)
title("Mean Illiteracy Rate")
#分步骤的进行图形的调试
par(mar=c(5,8,4,2))
par(las=2)
counts <- table(Arthritis$Improved)
barplot(counts, main="Treatement", horiz=TRUE, cex.names=0.8, names.arg=c("No Improvement", "Some Implovement", "Marked Improvement"))#cex.names=0.8缩小字体大小
