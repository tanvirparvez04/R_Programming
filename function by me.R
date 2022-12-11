#R Functions
#A function is a block of code which only runs when it is called.
#syntex:
# function_name <- function(arg_1, arg_2, ...) {
#   Function body 
# }
# 
# Function Components
# The different parts of a function are −
# 
# Function Name − This is the actual name of the function. It is stored in R environment as an object with this name.
# 
# Arguments − An argument is a placeholder. When a function is invoked, you pass a value to the argument. Arguments are optional; that is, a function may contain no arguments. Also arguments can have default values.
# 
# Function Body − The function body contains a collection of statements that defines what the function does.
# 
# Return Value − The return value of a function is the last expression in the function body to be evaluated.

#Creating a Function
function_name<-function(){
  print("Tanvir")
}

#call function:
function_name()
# call the function named my_function and last e first brackets

#arguments:
function1<-function(name){
  paste(name,"hasan")
}
function1("Tanvir")
function1("rakibul")
function1("nayon")

#Number of Arguments:
function2<-function(x1,x2){
  print(3*x1)
  print(4*x2)
}
function2(2,3)
#or
function3<-function(fname,lname){
  paste(fname,lname)
}

function3("Tanvir","PARVEZ")
#If you try to call the function with 1 or 3 arguments, you will get an error:
function3("Tanvir")

#Default Parameter Value
function4<-function(country="Bangladesh"){
  print(paste("Enter your country name:",country))
}

function4("Japan")
function4()

#return values:

function5<-function(x){
  return(5*x)
}
function5(4)
function5(5)
function5(6)

#---------------------------------Nested Functions---------------------
# Nested Functions
# There are two ways to create a nested function:
#   
# 1.Call a function within another function.
#2. Write a function within a function.

#Call a function within another function:
function6<-function(x,y){
 a<- x+y
 return(a)
}
function6(function6(2,2),function6(3,3))
# 
# Example Explained
# The function tells x to add y.
# 
# The first input Nested_function(2,2) is "x" of the main function.
# 
# The second input Nested_function(3,3) is "y" of the main function.
# 
# The output is therefore (2+2) + (3+3) = 10.


#Write a function within a function:
out_func<-function(x){
  in_fun<-function(y){
    a<-x+y
    return(a)
  }
  return(in_fun)
  
}
abc<-out_func(2)
abc(3)
# 
# Example Explained
# You cannot directly call the function because the Inner_func has been defined (nested) inside the Outer_func.
# 
# We need to call Outer_func first in order to call Inner_func as a second step.
# 
# We need to create a new variable called output and give it a value, which is 3 here.
# 
# We then print the output with the desired value of "y", which in this case is 5.
# 
# The output is therefore 8 (3 + 5).


## Create a function to print squares of numbers in sequence.
function8<-function(x){
  print(x**2)
}
function8(4)

#Create a function without an argument.
function9<-function(){
  print(5**2)
}
function9()

#Calling a Function with Argument Values (by position and by name)
function10<-function(x,y,z){
  print(x+y*z)
}
function10(2,3,4)
function10(x=2,y=3,z=4)

#Calling a Function with Default Argument
function11<-function(a=5,b=4){
  print(a*b)
}
function11()
function11(6,8)

#Lazy Evaluation of Function:
function11<-function(a,b){
  print(a*b)
}
function11()
function11(6)

# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}

# Evaluate the function without supplying one of the arguments.
new.function(6)

#----------------------------------------------------------------------------------------
# A simple R function to check
# whether x is even or odd:
evenodd<-function(x){
  if(x%%2 == 0){
    print("even")
  }else{
    print("odd")
  }
}
evenodd(50)
evenodd(25)


## A simple R function to calculate
# area of a circle: pai r square

area_of_cercle<-function(redius){
  area=pi*redius^2
  area
}
area_of_cercle(3)


#area and perimeter of a rectangle
rectanle<-function(height,width){
  area=height*width
  perimeter=2*(height+width)
  print(paste("area=",area))
  print(paste("perimeter=",perimeter))
}
rectanle(2,3)

a<-rectanle(6,8)

#inline function:joto choto function kora jai jemon 1 line:
f=function(x) x^2+x*x+x
f(2)

# passing arguments to a function:
rectanle2<-function(length=4,width=5){
  area=length*width
  print(area)
}
#case1
rectanle2()
#case2
rectanle2(2,3)
#case3
rectanle2(length=7,width = 10)



# Lazy evaluations of functions

Cylinder = function(diameter, length, radius ){
  volume = pi*diameter^2*length/4
  return(volume)
}

# This'll execute because this
# radius is not used in the
# calculations inside the function.
print(Cylinder(5, 10))
