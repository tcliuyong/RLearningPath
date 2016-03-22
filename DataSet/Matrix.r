#构建一个矩阵
y <- matrix(1:20, nrow=5, ncol=4)
print(y)
#另一种方式构建矩阵
cells <- c(1,43,3,44)
rname <- c("R1", "R2")
cnames <- c("C1", "C2")
myMatrix <- matrix(cells, nrow=2, ncol = 2, byrow=TRUE,dimnames=list(rname, cnames))
print(myMatrix)
#矩阵的使用
print(y[2,]) #打印第二行
print(y[,2]) #打印第二列
print(y[1,2]) #访问指定的元素
print(y[1, c(2,3)]) #打印第一行的 2 3 列
