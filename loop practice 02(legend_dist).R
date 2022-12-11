#mean of mean:
x<-rep(0,20)
for(i in 1:20){
  x[i]=mean(rnorm(1000000))
  
 
}
mean(x)


#repeat loop:
x<-1
repeat{
  print(x)
  x=x+1
  if(x==10){
    break
  }
  
}

#take 1000 value from normal distribution;but print first 5 value and this value will not be change in any case:
#for fixed value we use:set.seed(value)
set.seed(5000)
x<-rnorm(100)
count=0
for(i in x){
  print(i)
  count=count+1
  if(count==5){
    break
  }
}

#100 ta ghor nao jekhane age thekei 0 diye vorti kora thakbe.and proteker sathe 1 jog koro
v<-rep(0,100)
v
for(i in 1:100){
  v[i]=1
  
}
print(v)

#or
v<-rep(0,100)
v+1

#mean of mean where mu=50 and sigma=5
mu=50
sig=5
set.seed(500)
l<-rnorm(20,mu,sig)
mean(l)
y<-rep(0,100)
for(i in 1:100){
  set.seed(500)
  y[i]=mean(rnorm(1000,mu,sig))
  
}
y
mean(y)
mean(l)



#function:
#mean of mean

means=function(n,N,mu,sig){
  #set.seed(5000)
  y=rep(0,N)
  for (i in 1:N) {
    y[i]=mean(rnorm(n,mu,sig))
    
  }
  y.bar=mean(y)
  y.bar
}

# case 1: mu=100,n=100,N=500,sig = 1.5
# case 2: mu=150,n=50,N=300,sig=5
means(100,500,100,1.5)
means(50,3000,150,5)
means(10,400,2,.5)
means(500,100,20,30)
means(5000,1000,80,70)

#interquantile range;
iqr=function(x){
  iqr=quantile(x,0.75)-quantile(x,0.25)
  print(iqr)
}
y=seq(1,250)
for(i in 1:250){
  x=rnorm(1000)
  y[i]=iqr(x)
}
y

x
