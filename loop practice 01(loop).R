#print odd number:
x<-seq(1,100,2)
for(i in x){
  print(i)
}

#break use :
for(i in -10:10){
  
  if(i==6){
    break
  }
  print(i)
}
#new 

y<-rep(0,50)#50 ghor 0 nilam
x<-50
for (i in 1:length(x)) {
  y[i]=x[i]+2
  i=i+1
  print(y)
  
  
}
#prota songkhar sathe 2 sog koro
y = rep(0,50)#50 ta ghor 0 diye vorat kore nilam
x<-seq(1,100,2)#50 ta odd number nilam
for(i in 1:length(x)){
  y[i] = x[i]+2
  print(y[i])
}
#or
y=x+2
y

#normal distribution:
xnorm<-rnorm(100)
mean(xnorm)
var(xnorm)
f=rep(0,100)
#mean of mean:
for (i in 1:100) {
  f[i]=mean(rnorm(100))
  
}

mean(f)
#while loop
i=15
while(i>10){
  print("yes i is large")
  i=i-1
}

#repeat loop:
x=100
repeat{
  #statement;
  print(x)
  x=x-1
  if(x==30){
    break
  }
  
  
}
