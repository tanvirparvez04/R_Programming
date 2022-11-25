a<-read.table("LungCapData.xlsx")

library(readxl)
a<-read_excel("LungCapData.xlsx")
View(a)

tapply(a$Age,a$Gender,summary)
class(a$Gender)
b<-as.factor(a$Gender)
class(b)
tapply(a$Smoke,a$Gender,summary)
abc<-a[-5]

head(abc)
a2<-cbind(abc,b)
a2
head(a2)
#tapply(a$Smoke,a$Gender,summary)
tapply(a2$Smoke,a2$b,summary)

