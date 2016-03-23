#初始化数据
manage <- c(1,2,3,4,5)
date <- c("10/24/08", "10/28/08", "10/1/08", "10/12/08", "5/1/09")
gender <- c("M", "F", "M", "F", "F")
age <- c(32,56,76,23,11)
q1 <-c(4,7,3,2,5)
q2 <-c(1,2,4,5,2)
q3 <-c(6,7,3,1,7)
q4 <-c(4,2,2,9,6)
leadership <- data.frame(manage, date, gender, age, q1, q2, q3, q4, stringsAsFactors=FALSE)
#  manage     date gender age q1 q2 q3 q4
#1      1 10/24/08      M  32  4  1  6  4
#2      2 10/28/08      F  56  7  2  7  2
#3      3  10/1/08      M  76  3  4  3  2
#4      4 10/12/08      F  23  2  5  1  9
#5      5   5/1/09      F  11  5  2  7  6
print(mean(leadership$age))#使用这种方式访问数据框列
#变量的重编码
leadership$agecat[leadership$age >= 55] <- "Elder"
leadership$agecat[leadership$age == 55] <- "midder"
leadership$agecat[leadership$age <= 55] <- "Younger"
print(leadership)

#  manage     date gender age q1 q2 q3 q4  agecat
#1      1 10/24/08      M  32  4  1  6  4 Younger
#2      2 10/28/08      F  56  7  2  7  2   Elder
#3      3  10/1/08      M  76  3  4  3  2   Elder
#4      4 10/12/08      F  23  2  5  1  9 Younger
#5      5   5/1/09      F  11  5  2  7  6 Younger
print(leadership[order(leadership$age),]) #按照年龄排序
print(leadership[order(-leadership$age),]) #按照年龄排序 降序
#添加行 用rbind  添加列 用merge

#随机抽样
mysample <- leadership[sample(1: nrow(leadership), 3, replace=FALSE),]
print(mysample)
