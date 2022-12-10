# R – While loop Syntax: 
#   while ( condition ) 
#   {
#     statement
#   }


i<-1
while(i<6){
  print(i)
  i=i+1
}
#break:

i<-1
while (i<10) {
  print(i)
  i=i+1
  if(i==6){
    break
  }
  
}

#next:skip kora
i<-1
while (i<10) {
  #print(i)
  i=i+1
  if(i==5){
    next
  }
  print(i)
  
}

i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}
#yehtzeez game:
dice=1
while(dice<=6){
  print(dice)
  if(dice<6){
    print("not yehtzeez")
  }else{
    print("yehtezz")
  }
  dice=dice+1
}
#factorial
i<-1
n<-5
factorial<-1
while (i<=n) {
  factorial=factorial*i
  i=i+1
  print(i)
  #print(factorial)
  
}
print(factorial)
