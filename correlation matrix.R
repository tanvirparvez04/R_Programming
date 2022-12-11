#default data iris or cars:
#cars
iris
View(iris)
#correlation:
cor(iris)#cause iris er last data ta numeric nah
#iris er last data ta newmeric koro:
iris$Species<-as.numeric(iris$Species)
#check:
str(iris)
#now correlation:
cor(iris)
plot(iris)

#method use;
cor(iris,method = "pearson")
cor(iris,method = "kendall")
cor(iris,method = "spearman")

#correlation matrix:
cor.test(iris)
#--------------------------------------------
iris$Species<-NULL
iris

iris$Species[iris$Species=="setosa"]<-1
#------------------------------------------------------------------------
#creating correlation matrix in r:

#read in the data
installed.packages("readr")
library(readr)

#dropping any column:
View(iris)
iris$Petal.Length<-NULL
View(iris)#petal.length nai hoye gese
#record:species setosa=1 and 	versicolor=0
iris$Species[iris$Species=="setosa"]<-1
iris$Species[iris$Species=="versicolor"]<-0
#set data as nemeric:
iris$Species<-as.numeric(iris$Species)
str(iris)
#cor from base r
cor(iris)
cor(iris,method = "pearson")
#correlation test from pschy
install.packages("psych")
library(psych)
corr.test(iris,method="pearson")
#for watching confidence interval:
corrmatrix<-corr.test(iris,method="pearson")
print(corrmatrix,short = FALSE)
#save it as a csv file in your current directory
write.csv(corrmatrix$r,"correlation matrix 01.csv")
write.csv(corrmatrix$p,"p value 01.csv")
write.csv(corrmatrix$ci,"confidence interval01.csv")

a<-read.csv("correlation matrix 01.csv")
b<-read.csv("p value 01.csv")
c<-read.csv("confidence interval01.csv")
View(a)
View(b)
View(c)


