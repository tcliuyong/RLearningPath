library(grid)
library(vcd) #引入数据集合而已
#简单直方图
par(mfrow=c(2,2))
hist(mtcars$mpg)#参数就是一个数组

#指定颜色的直方图
hist(mtcars$mpg, breaks=12, col="red", xlab="Mine Per Gallon", main = "Colored histogram")

#添加轴须图
hist(mtcars$mpg,freq=FALSE ,breaks=12, col="red", xlab="Mine Per Gallon", main = "histogram , rug, density")
rug(jitter(mtcars$mpg))
lines(density(mtcars$mpg), col="blue", lwd=2)

#添加正太密度曲线
x <- mtcars$mpg
h <- hist(x, breaks=12, col="red", xlab="Mine Per Gallon", main = "histogram with normal curve and box")
xfit <- seq(min(x), max(x), length = 40)
h <- hist(x, breaks=12, col="red", xlab="Mine Per Gallon", main = "histogram with normal curve and box")
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd=sd(x))
yfit <- yfit*diff(h$mids[1:2]) * length(x)
lines(xfit , yfit, col="blue", lwd=2)