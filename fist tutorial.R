22L
class(22l)
a<-print(charToRaw("Hello"))
a
class(a)
a<-raw(3)
a
class(a)
b<-list(1,2,3)
b
typeof(b)
print(5:13)
print(6.6:12.5)
seq(5,9,0.4)
print(c("Tan","Par",5,10,"abd"))
abd<-print(c("Apple","Red",5,TRUE))
class(abd[5])

  
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

v <- t[c(TRUE,FALSE)]
print(v)
k<-t[c(-1,-5)]
k
l <- t[c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)]
print(l)
y <- t[c(FALSE,FALSE,TRUE)]
print(y)
y <- t[c(1,0,0,0,0,0,1)]
print(y)
h<-t[c(1,1,1,1,1,1,0)]
h


z22<-t[as.logical(c(1,0,1,0,0,0,1))]
z22


a2<-c(5,16,15,29,25,30)
c<-sort(a2)
c
a2
order(a2)
class(c)
a2
b2<-c(2,3,4)
a2+b2
a2-b2
a2*b2
a2/b2
class(a2/b2)
typeof(a2-b2)


v5<-c(2,3,6,4,3,7,10,22,12,13)
v5
sort(v5)
sort(v5,decreasing = TRUE)


abcd<-c("apple","red","grammer","a1a1")
print(sort(abcd))

v3<-c("red","bleu","yellow","violet","z",'k',"a")
print(sort(v3))
print(sort(v3,decreasing=TRUE))
