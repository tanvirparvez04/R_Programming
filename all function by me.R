#define a function
afunc <- function(a)
 for(i in 1:a)
 {
  b<-2*i
  print(b)
}
#calling function
afunc(5)

my_function<-function()
{
 print("Hello world")
}
my_function()

#Arguments

namefunction <- function(firstname)
{
  paste(firstname,"Parvez")
}
namefunction("Tanvir")

namefunction("Rizwan")

#Default Parameter Value

afunc <- function(country ="Bangladesh")
{
 paste("my country is",country)
}
afunc("Dubai")
afunc()
afunc("INDIA")

#Return Values

numfunction <- function(x)
{ 
 return(3*x)
 #paste(3*x) na diye return diye krai better
}
numfunction(5)
print(numfunction(6))

#Nested Functions:

nestfunction<- function(x,y)
{ 
  z=x+y
  return(z)
}
nestfunction(2,5)
nestfunction(nestfunction(2,3),nestfunction(4,5))


#nested 2nd example

outsidefunc<- function(x)
{
 insidefunc<- function(y)
  {
    z=x+y
    return(z)
  }
 return(insidefunc)
}
a <- outsidefunc(3)
a(8)


#global variables
txt<-"Tanvir parvez"
myfunc<-function(name)
{
 print(txt)
 paste("name is :",txt)
}
myfunc()









