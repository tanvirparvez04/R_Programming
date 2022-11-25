name<-c("Tanvir","Rakib","Jahid","nayon")
age<-c(10,20,30,40)
result<-c(3.92,3.93,3.94,3.95)
mails<-c("tanvir@gmailcom","Rakib@gmailcom","jahid@gmailcom","nayon@gmailcom")

#all data in table:
df<-cbind(name,age,result,mails)
df
View(df)
#all data in a data frame:
df2<-data.frame(name,age,result,mails)
df2
View(df2)
#export or save data in currnet location:

#write.csv(df2,"02.csv")
write.table(df2,"any.txt",row.names = F,sep="\t")

#Anather way of export or save data in currnet location:
write.table(df2,"03.csv")
#or
write.table(df2,"04.txt",row.names = F,sep = "\t")
#import
read.table("03.csv")

#export txt file:
write.table(df2,"083.txt",sep="\t",row.names = F)
write.table(df2,"studen.txt",sep="\t",row.names = F)

#------------------apply----------------
lcd<-read.table(file.choose(),header = T,sep="\t")
lcd2<-read.table("any.txt",header = T,sep = "\t")
View(lcd2)
tapply(lcd2$age,lcd2$result,summary)#kar sathe kar compare korbo seta tapply
summary(lcd2$age)
tapply(lcd2$age,lcd2$name,summary)
mean(lcd2$age)
