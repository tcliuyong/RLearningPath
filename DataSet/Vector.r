a <- c(1,2,3,4,5)
b <- c("one","two","three") 
bool <- c(TRUE, FALSE,TRUE)
#a是值向量 b是字符串向量 c 是boolean向量
print(a)
print(b[1])
#甚至支持索引的整体复制
print(a[c(1,2,3)])
#支持数组的切片
print(a[2:4])