############slicing#----------------

attach(lcd)
g<-as.factor(Gender)
s<-as.factor(Smoke)
c<-as.factor(Caesarean)
#make a table of factors:
gsc.table<-data.frame(g,s,c)
head(gsc.table)
lcd2<-lcd[,-c(4,5,6)]
lcd3<-cbind(lcd2,gsc.table)
View(lcd3)



