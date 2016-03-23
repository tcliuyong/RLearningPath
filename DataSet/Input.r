library(RODBC)#导入excel 包 install.package("RODBC")安装
mydataframe <- read.table("data\data.txt", head=FALSE, sep = ",") #更多的用法可以网上查找
channel <- odbcConnectExcel("data\test.xsl") #导入excel数据
mydataframe <- sqlFetch(channel, "mysheet")
odbcClose(channel)

