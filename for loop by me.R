# R – For loop Syntax: 
#   for (value in sequence)
#   {
#     statement
#   }


#A for loop is used for iterating over a sequence:

for (i in 1:10) {
  i
}

fruits<-list("apple","banna","mango")
for (x in fruits) {
  print(x)
  
}

fruits<-c("apple","banna","mango")
for (x in fruits) {
  print(x)
  
}
dice<-c(1,5,4,7)
for(i in dice){
  print(i)
}
#break:

dice2<-seq(1,10)
for (x in dice) {
  print(x)
  if(x==5){
    break
  }
}

#if jei condition dibo tar age porjonto print korte chai:
dice3<-seq(1,15)
for (x in dice3) {
  if(x==5){
    break
  }
  print(x)
}

#or
fruits<-c("apple","banna","mango")
for(x in fruits){
  if(x=="banna"){
    break
  }
  print(x)
}
#----------------------------------next--------------------

#With the next statement, we can skip an iteration without terminating the loop:
fruits<-c("apple","banna","mango")
for(x in fruits){
  if(x=="banna"){
    next
  }
  print(x)
}
for(x in dice){
  if(x==6){
    next
    
  }
  print(x)
}

#If .. Else Combined with a For Loop:
dice4<-1:6
for(x in dice4){
  if(x==6){
    print(paste("The number of the dice is",x,"it is yeahteez"))
  }else{
    print(paste("the number",x, ",is not yeaheez"))
  }
  
}
#-------------------------------------nested loop-----------------------
a1<-list("apple","banna")
b1<-list("jira","ada")
for(x in a1){
  for (y in b1) {
    print(paste(x,y))
    
  }
}
#----------------
weaks<-c("sun","mun","thu","wed","thes","fry","sat")
for(days in weaks){
  print(days)
}
