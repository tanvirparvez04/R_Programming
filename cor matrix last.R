rm(list = ls())
View(iris)
#dropping any column:
#iris$Species<-NULL
iris$Species<-as.numeric(iris$Species)
str(iris$Species)
View(iris)
cor(iris)
cor(iris,method = "pearson")
#correaltion matrix:
library(psych)
corr.test(iris,method="pearson")
b<-corr.test(iris,method="pearson")
a<-print(corr.test(iris,method="pearson"),short = F)

write.csv(b$r,"ahda.csv")
write.csv(b$p,"2.csv")
write.csv(b$ci,"p.csv")

View(read.csv("ahda.csv"))
View(read.csv("2.csv"))
View(read.csv("p.csv"))
