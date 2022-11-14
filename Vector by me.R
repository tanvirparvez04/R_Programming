# Vectors:
# A vector is simply a list of items that are of the same type.
# 
# To combine the list of items to a vector, 
#use the c() function and separate the items by a comma.


# Vector of strings:
fruits<-c("apple","banna","mango")
fruits


#vectors of numbers:
num<-c(1,2,3,4)
num
#----------------------sequence-------------------------

#vectors of a newmerical value in a sequence
# use : or seq()

num<- 1:10
num

#or

num2<-seq(1,10)
num2
#again
num66<-seq(1,20,3)#last er ta bebodhan bujhai
num66

# Vector with numerical decimals in a sequence

decimals<- 1.5:10.5
decimals

# Vector with numerical decimals in a sequence 
# where the last element is not used
decimals2<-1.5:10.4   #10.5 na thakar karone 9.5 porjonto print hobe
decimals2


## Vector of logical values
logical_value <- c(TRUE,FALSE,TRUE,FALSE)
logical_value

#---------------------------------------------------------------
#Vector Length:

fruits<-c("apple","banna","mango","orange")
fruits
length(fruits)

#Sort a Vector(choto theke boro or order akare sajano)

fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)
sort(numbers)

#Access Vectors or
#index vectors:(index e joto num dibo thik toto num print hobe)
#
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[2]
#access multiple elements by referring to different index positions
fruits[c(2,3)]
#negative index:[index e - diye jeta dibo seta bade baki sob print hobe]
fruits[-1]
#multiple negative index:
fruits[c(-2,-5)]

num405<-seq(1:100)
num405
num405[5]
num405[1:10]
num405[50:55]
num405[95:length(num405)]

#negative indexing
num405[-1]
num405[-c(2,5,10,6)]


#Change an Item:

fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits
# Change "banana" to "guyava"
fruits[3]<-"guyava"
fruits

#Repeat Vectors:
#Repeat each value:
rep.num<- rep(c(1,2,3),each=2) #each dile prota print hobe totobar
rep.num

#Repeat the sequence of the vector:

rep.anynum<- rep(c(5,10,15),times=3)#(times dile prothom theke ses porjonto to purata totobar print hobe)
rep.anynum


#Repeat each value independently:
rep.indepndnt <- rep(c(10,20,30),times=c(3,2,1))
rep.indepndnt

#
num44<-rep(0,100)#0 print hobe 100 bar
num44
length(num44)

z<-rep(1:4,3)

num101<-rep(seq(1,10,.25),2)
num101

char.x<-rep("ad",times=10)#times na dilo ekoi kaj korbe
char.x
z#-------------------------------------------------------

#Generating Sequenced Vectors:
num3<-1:10
num3

#To make bigger or smaller steps in a sequence, 
#use the seq() function:

num4<-seq(from=1,to=15,by=3)
num4

# 
#  The seq() function has three parameters:
#    from is where the sequence starts, 
#      to is where the sequence stops,
#       and by is the interval of the sequence.


#----------------------------------------------------------

#round:
num5<-3.165648654
round(num5,2)#2 diyar karon point er por amra 2 ghor e chai

#abs:negetive ke positive kore
abs(-35)
abs(36)

#square root:
sqrt(16)
27^{1/3}



# vector arithmatic
# if the length of two vector are same then we can do 
# +,-,* and / everything will be done element wise
x <- 1:3
y <-4:6
x+y
x-y
x*y
x/y
