#bionomial:
#dbinom(x,n,p)
dbinom(0,4,0.4)
dbinom(2,4,0.4)
sum(dbinom(c(2:4),4,0.4))#x>=2

s<-dbinom(2,4,0.4)
hist(s)


# l<-readline(prompt = "probability of success p=")
# m<-readline(prompt = "Number of trials n=")
# g<-readline(prompt = "Random numbers x=")
# dbinom(g,m,l)
# z<-dbinom(x=c(2:4),n,p)
# sum(z)
# w<-dbinom(x,n,p)
# sum(w)


# size = readline(prompt = "n=")
# 
# prob = 1/6
# 
# probabilities = dbinom(x = c(0:9), size , prob )
# sum(probabilities)

probabilities = dbinom(x = c(0:9), size=10 , prob =1/6)
 plot(sum(probabilities))
 plot(probabilities)
data.frame(probabilities)


#qbinom(x<=2,4,0.4)
