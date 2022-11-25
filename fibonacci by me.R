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