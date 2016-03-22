g <- "my First list"
h <- c(45,45,78,66)
j <- matrix(1:10, nrow=5)
k <- c("one", "two", "three")
myList <- list(title=g, test=h, j, k)

print(myList)
#list的访问
print(myList[[2]])
print(myList[["test"]])


