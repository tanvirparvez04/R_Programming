#The if Statement:

x<-30
if(is.numeric(x)){
  print(paste(x,"is numeric"))
}

a<-40
b<-30
if(a>b){
  print("a is greater than b")
}

#else if statement:
a<-20
b<-20
if(a>b){
  print("a is greater thn b")
}else if(a==b){
  print("a and b are equal")
}

#else:
a=10
b=10
if(a>b){
  print("a is greater than b")
}else if (a<b){
  print("b is greter than a")
}else{
  print(paste("print a and b is equal",a,b))
}
#--------
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}

#--------------------------Nested If Statements--------------------
a=18
if(a>20){
  print(paste("a is ",a))
  print("a is above 20")
  if(a>30){
    print("a is above 30")
  }else{
    print("but not above 30")
  }
}else{
  print("below 20")
}

#------------------------------And----------------
a=10
b=20
c=30
if(a<b & b<c){
  print("c is greater than a and b")
}

#-------------------------or----------------------
a=10
b=20
c=9

if(a<b | c<b){
  print("b is greater than a and c")
}

#--------------------------------------------------
x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}
