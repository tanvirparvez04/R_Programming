#install.packages(combinat)
library(combinat)
permutation<-permn(3)
permutation
length(permutation)
length(permn(3))

#combination
library(combinat)
combination<-combn(4,2)
combination
countany<-ncol(combination)
countany
