# Vectors
v<-c(1,8,2,6)
v
# Matrix
a = matrix(c(1,2,3,4),nrow = 2 ,byrow = T)
a
a<-matrix(c(1,2,3,4),nrow = 1)
a
a<-matrix(c(1,2,3,4,5),ncol = 2)
a
x<-matrix(c(1:5),nrow=5,ncol =5,byrow = F,dimnames = list(c('r1','r2','r3','r4','r5'),
                                                          c('c1','c2','c3','c4','c5')))
x
# Arrays
arr<-array(c(1:6),dim = c(2,4,3))
arr
arr[1,2,3]

# List
List<-list(Id=c(1,2,3,4),name=c('D','k','L','S'),marks=c(9,9.5,8,8.5))
List
List$marks

# Data Frame
DF2<-data.frame(Id=c(5,6,7,8),name=c('A','T','V','p'),marks=c(7,9.5,8.5,5.6))
DF2

# Class excercise
exc <- data.frame(x=c(1,2,3),y=c('A','B','C'))
exc
exc[1]
exc[,1]
exc(1)
exc[1,]
exc[1,1]
