#R Programming Basic [27 exercises with solution]
# 1. Write a R program to take input from the user (name and age)
# and display the values. 
# Also print the version of R installation

#take input from browser by readline()
#name<-readline()
#name<-readline("Enter your name:")
name<-readline(prompt = "give your name:")
name
name1<-as.character(name)
name1

#take input from browser by readline()
age<-readline()
age
age1<-as.integer(age)
age1

#check r version
#R.Version()
#R.version
R.version.string

#All in one:
anyname<-readline(prompt = "Enter your name:")
anyage<-readline(prompt = "Enter your age")
print(paste("I am ",anyname,"and i ",anyage,"year,s old"))
print(R.version.string)
#-------------------------------------------------------------


#2. Write a R program to get the details of the objects in memory.

#all variable name:
print(objects())
print(ls())

#all
name<-"Tsnvir"
n1<-20
n2<-30
print("the details of the objects in memory:")
print(objects())
print(ls())
print(ls.str())

# #3. Write a R program to create a sequence of numbers from 20 to 50
# and find the mean of numbers from 20 to 60 
# and sum of numbers from 51 to 91

print(seq(20,50))
mean(20:60)
sum(51:91)

# 4. Write a R program to create a vector
# which contains 10 random integer values between -50 and +50
print(sample(c(-50:50),10,T))
print(sample(-50:50,10,replace = TRUE))

#5.Write a R program to get the first 10 Fibonacci numbers
#answer:
#Fibonnaki hocche ager duita songkhr jog fol and start 0 diye 0,1,1 ei tinta fixed
# num<-readline(prompt = "Enter your num:")
Fibonacci<-numeric(num<-readline(prompt = "Enter your num:"))#
num
Fibonacci[2]<-Fibonacci[3]<-1
for (i in 3:num) {
  Fibonacci[i]<-Fibonacci[i-2]+Fibonacci[i-1]
}
print(Fibonacci)
  
## 7. Write a R program to print the numbers from 1 to 100 
# and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5,
# and print "FizzBuzz" for multiples of both
# answer:
# mane 1 theke 100 porjonto 1)3 dara bivajjo gulo Fizz 
# and 5 dara bivajjo gulo Buzz 
# and 3,5 duita dara bivajjo hole Fizzbuzz print korbe

for (i in 1:100) {
  if(i%%3==0 & i%%5==0){print("FizzBuzz")}
  else if(i%%3==0){print("Fizz")}
  else if(i%%5==0){print("Buzz")}
  else print(i)
  
}
#--------------------------------------
# 8. Write a R program to extract first 10 english letter in lower case
# and last 10 letters in upper case and 
# extract letters between 22nd to 24th letters in upper case. 

print("First 10 letters in lower case:")
smallletters<-head(letters,10)# choto hater letter dile choto hater boro hate LETTERS dile boro hater:
smallletters

print("last 10 letters in upper case:")
uppercase<-tail(LETTERS,10)
uppercase

anyltr<-LETTERS[22:24]
anyltr
