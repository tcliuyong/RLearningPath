#����һ������
y <- matrix(1:20, nrow=5, ncol=4)
print(y)
#��һ�ַ�ʽ��������
cells <- c(1,43,3,44)
rname <- c("R1", "R2")
cnames <- c("C1", "C2")
myMatrix <- matrix(cells, nrow=2, ncol = 2, byrow=TRUE,dimnames=list(rname, cnames))
print(myMatrix)
#�����ʹ��
print(y[2,]) #��ӡ�ڶ���
print(y[,2]) #��ӡ�ڶ���
print(y[1,2]) #����ָ����Ԫ��
print(y[1, c(2,3)]) #��ӡ��һ�е� 2 3 ��
