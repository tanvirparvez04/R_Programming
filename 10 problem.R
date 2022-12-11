#1read
print(iris)
#View
View(iris)
na.omit(iris)


#take matrix name x
y<-c(2,4,6,7,8,9,7,6,4)
x<-matrix(y,nrow=3,ncol=3,byrow=T)
x
t_of_x<-t(x)
t_of_x

g<-t_of_x%*%x
g
i<-g^-1
i
# two matrix multiplication:
i==g**-1

dim(i)
k<-matrix(1:9,3,3)
k
u<-k%*%t_of_x
u
yyyyy<-i%*%u
yyyyy

y2<-((t(x)%*%x)**-1)%*%(t(x)%*%k)
y2
y3<-inv(t(x)%*%x)%*%(t(x)%*%k)

