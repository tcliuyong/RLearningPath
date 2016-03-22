diabetes <- c("type1", "type2", "type1", "type2")
diabete <- factor(diabetes)
diabete <- factor(diabetes, ordered = "TRUE")
#用于统计每个属性的出现次数
summary(diabete) #查看数据的概要信息