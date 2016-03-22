#mydata <- data.frame(col1, col2,col3)
patient <- c(1,2,3,4)
age <- c(23,34,45,76)
status <- c("Type1", "Type2", "Type1", "Type2")
mydata <- data.frame(patient, age, status) #构建一个数据框
print(mydata)

#选取数据框中的元素

print(mydata[1,2]) #获取第一行第二列
print(mydata[1:2]) #获取第一行和第二列
print(mydata[c("status","age")]) #使用指定的列名来获取数据


