# #----------------------Matrix-----------------
# A matrix can be created with the matrix() function. 
# Specify the nrow and ncol parameters
# to get the amount of rows and columns:

matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow = T)


#You can also create a matrix with strings:
matrix(c("apple", "banana", "cherry", "orange"),2,2)

#example:
x<-seq(10:1)
x
length(x)
x.mat<-matrix(x,nrow = 3,ncol=3)#amar element kintu 10 ta tai last er element ta print hobe na karon eta 3*3 matrix
y.mat<-matrix(x,nrow=5,ncol=2)
y.mat
x.mat

#---------------------------------------------------------
#Access Matrix Items:
#element accesing of a matrix:
m<-sample(1:50,9,T)#T diye withreplacement and F diye without replacement bujhali
m
z.mat<-matrix(sample(1:50,9,T),nrow=3)#col and row same hole ekta diyei duita hoye jai
z.mat
z.mat[2,3]#koto koto num row and col er element chai seta dite hobe index er vitore,first e row num and 2nd a col num
z.mat[-1,1]#prothom col er prothom row ta bad jabe
z.mat[1,]#first row all elemets
z.mat[,1]#first col all elements

#Access More Than One Row:
z.mat[c(1,2),]#prothom and 2nd row er sob

#Access More Than One Column:
z.mat[,c(1,2)]#1st and 2nd col all elemnt


z.mat[-2,]#2nd row bae print hobe
#----------------------------------------------------

#Add Rows and Columns:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix

thismatrix2<-cbind(thismatrix,"age","name","game")#colnm add hobe
thismatrix2
thismatrix
thismatrix3<-rbind(thismatrix,"a","d","s")#add colmn
thismatrix3

#Remove row and colmn:
thismatrix
thismatrix4<-thismatrix[-c(1),-c(3)]#first row and 3rd colmn remove hoye jabe:
thismatrix4


#-----------------------------transpose--------------------------
#create a matrix
z.mat<-matrix(sample(1:50,9,T),nrow=3)
z.mat
#transpose:
t(z.mat)


#-------- byrow = T/F



k<-seq(1:9)
k
w.mat<-matrix(k,nrow=3)
w.mat
w.mat2<-matrix(k,nrow=3,byrow=T)#jodi col onujai element input hoye jai tokhon byrow=T dile seta row moto element entry nei
w.mat2

#name of row and col:
#rbind:name of row:
g<-rbind(age=c(1,2,3),height=c(4,5,6),weight=c(10,11,12))
g

#name of col:
d<-cbind(age=c(1,2,3),height=c(4,5,6),weight=c(10,11,12))
d

h<-matrix(seq(1:9),ncol=3,byrow = T)
h

#--------- row col names changing ----------------
z.mat<-matrix(sample(1:50,9,T),nrow=3)
z.mat

x.exis<-c("a","b","c")
colnames(z.mat)<-x.exis
z.mat

#y.axis=c("d","c","d")
rownames(z.mat)<-y.axis<-c("e","c","d")
z.mat

#Check if an Item Exists:

h6<-matrix(c("apple","bannaa","mango","guyava"),2)
h6
"apple" %in% h6
"xjdwvhcj" %in% h6


#Number of Rows and Columns:
h6
dim(h6)

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
dim(thismatrix)#dim diye dimension bujhai

#Matrix Length:
length(thismatrix)

# Total cells in the matrix is the number of rows multiplied by number of columns.
# In the example above: Dimension = 2*2 = 4.

#Combine two Matrices:rbind()and c bind()
a1<-matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
a1
a2<-matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
a2  
#matrix row combined :
matrix.combind<-rbind(a1,a2)
matrix.combind

#colmn combined
matrix.row.combined<-cbind(a1,a2)
matrix.row.combined
# #--------------------------------------------------
# 

#matrix function
#transpose funcion
j<-matrix(sample(1:100,9,T),nrow=3)
j
t(j)

h<-matrix(sample(seq(1,100),9,T),nrow=3)
h
j+h
j-h
j

# matrix multipication
j%*%h    #j*h dile vul
#--------------------------------------------------------
#------- inverse---------------
#-------- singular matrixs

h<-matrix(sample(seq(1,100),9,T),nrow=3)
#inverse;
d=solve(h)
d
num<-rnorm(9)#randomly normal distribution er je kono 9 ta value
num
n.mat<-matrix(num,3,3)
n.mat
#inverse of n.mat matrix:
solve(n.mat)

#new exapmle:
num54<-sample(1:100,9,T)
num54
s.mat<-matrix(num54,3,3)
s.mat

solve(s.mat)
det(s.mat)

#adjoint matrix:
adj<-det(s.mat)/solve(s.mat)
adj

#-------------------------------------------------------------

#Diagonal elements:#korno matrix:
b<-matrix(2:10,3,3,T)
b
diag(b)

#value input into diagonal matrix:

b<-diag(2,3,3)#first er ta value porer gulo row and colmn
b

d<-diag(7,10,10)
d

#---------------row/col means and sums;----------------

A<-matrix(1:9,3,3,T)
A
rowMeans(A)#protita row er mean mane (elementser sum)/n#mean er M boro hater
colMeans(A)
rowSums(A)
colSums(A)
A
