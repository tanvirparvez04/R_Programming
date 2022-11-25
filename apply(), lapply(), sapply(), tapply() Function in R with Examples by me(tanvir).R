# apply(), lapply(), sapply(), and tapply() in R:
toknow<-read.table("apply(), lapply(), sapply(), tapply() Function in R with Examples by me(tanvir).txt",header=T,sep="\t")
View(toknow)
# 
# -------------------apply() function:------------------
# apply() takes Data frame or matrix as an input
# and gives output in vector, list or array. 
# Apply function in R is primarily used to
# avoid explicit uses of loop constructs. 
# It is the most basic of all collections can be used over a matrice.
# 
# This function takes 3 arguments:
#   
# apply(X, MARGIN, FUN)
# Here:
# -x: an array or matrix
# -MARGIN:  take a value or range between 1 and 2 to define where to apply the function:
# -MARGIN=1`: the manipulation is performed on rows
# -MARGIN=2`: the manipulation is performed on columns
# -MARGIN=c(1,2)` the manipulation is performed on rows and columns
# -FUN: tells which function to apply. Built functions like mean, median, sum, min, max and even user-defined functions can be applied>
#code:

#create a matrics:
#matrix1<-read.table("StockExample.csv")
# or, lcd<-read.csv("LungCapData.csv")
lcd<-women #women default data
lcd
apply(lcd,2,mean)#mean,sum, median, sum, min, max
#to check
mean(lcd$height)
mean(lcd$weight)  

#another way of apply function:
mat3<-matrix(c(1:10),nrow=5,ncol=6,)
mat3
allsum<-apply(mat3, MARGIN = 2, FUN = sum)#margin=1:row,margin=2:colmn
allsum
sum(allsum)
#to check:
sum(mat3)
#----------------------apply another way---------------
#another way:
stockprice<-read.csv("StockExample.csv")
head(stockprice)
stockdata<-stockprice[,-1]
head(stockdata)
apply(
  stockdata,
  MARGIN = 2,
  FUN=max,
  na.rm=T
)
#to check:
max(stockdata$Stock1)
max(stockdata$Stock4)

#another:
apply(stockdata,2,FUN = quantile,na.rm=T)
apply(stockdata,2,quantile,probs=c(0.2,0.8),na.rm=T)
apply(stockdata,MARGIN =  2,FUN=quantile,probs=c(0.2,0.8),na.rm=T)

#to check
quantile(stockdata$Stock2,probs=c(0.2,0.8),na.rm=T)

#another:
apply(
  stockdata,
  MARGIN = 2,
  FUN = plot,
  type="l",#plot futa futa na theke futa gulo milito ekta dag hoye jabe
  xlab ="price",
  ylab ="day",
  main="stock",
  na.rm=T
)

#-------------colmean for stock data:-----
colMeans(stockdata)
colMeans(stockdata,na.rm=T)
rowMeans(stockdata)
any.mean.data<-rowMeans(stockdata,na.rm = T)
any.mean.data
plot(rowMeans(stockdata,na.rm=T),main="stockmeans per day",ylab="prize",xlab="day")
plot(any.mean.data,main = "stocks",type="l")

#---------------------------------------------------
#-------------------lapply() function------
#lapply() function is useful for performing operations on list objects and returns a list object of same length of original set. lappy() returns a list of the similar length as input list object, each element of which is the result of applying FUN to the corresponding element of list. Lapply in R takes list, vector or data frame as input and gives output in list.
# lapply(X, FUN)
# Arguments:
# -X: A vector or an object
# -FUN: Function applied to each element of x	

movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)#tolower= all letter lower case,#toupper=all letter upper case
str(movies_lower)    #string kore lekha                 
movies_lower
unlist(movies_lower)#list kore aschilo ,unlist kora
movies_upper <-lapply(movies, toupper)
unlist(movies_upper)

#----------------------------------------------
#------------    sapply() function--------------
#sapply() function takes list, vector or data frame as input and gives output in vector or matrix. It is useful for operations on list objects and returns a list object of same length of original set. Sapply function in R does the same job as lapply() function but returns a vector.


#We can measure the minimum speed and stopping distances of cars from the cars dataset.
dt<-cars
sapply(dt, min)
lmn_cars <- lapply(dt, min)
lmn_cars
smn_cars <- sapply(dt, min)
smn_cars

#another:
df<-cars
a<-sapply(df,max)
a
b<-lapply(df,max)
b
#--a user built-in function into lapply() or sapply()----
#We can use a user built-in function into lapply() or sapply(). 
#We create a function named avg to 
#compute the average of the minimum and maximum of the vector.

avg<-function(x){
  (min(x)+max(x))/2
}
anycars<-sapply(dt,avg)
anycars
anycars<-lapply(dt,avg)
anycars


#-------------------------tapply----------------

# tapply() function:
# tapply() computes a measure (mean, median, min, max, etc..) or a function for each factor variable in a vector. It is a very useful function that lets you create a subset of a vector and then apply some functions to each of the subset.

# tapply(X, INDEX, FUN = NULL)
# Arguments:
# -X: An object, usually a vector
# -INDEX: A list containing factor
# -FUN: Function applied to each element of x

View(lcd)
tapply(lcd$Age,lcd$Height,mean)
tapply(lcd$Age,lcd$Height,median)

#or using cars data (default)
tapply(cars$speed,cars$dist,median)
