#csv import:
#--- read.table():
#a1<-read.table("StockExample.csv")
a1<-read.table("StockExample.csv",header=T,sep=",")
a1
View(a1)
head(a1)
tail(a1)

a2<-read.csv("StockExample.csv")
a2

View(a2)

a5<-read.table(choose.files())
a5
View(a5)

#------------------------------------------------
#excel file import:
library(readxl)
anyyxlfile<-read_excel("exceldemo.xlsx")
View(anyyxlfile)
#---------------------------------
#txt file:

anytxtfile<-read.table("studentstxt.txt",header = T,sep = "\t")
#anytxtfile<-read.table("studentstxt.txt")
#anytxtfile<-read.table(file.choose(),header = T,sep = " ")
anytxtfile
View(anytxtfile)

#------------------------------------
#basic analysis

names(anytxtfile)#just header show korbe
cgpa<-anytxtfile$CGPA
cgpa
all.sum<-sum(anytxtfile$CGPA)# $ ei jinho dile header gulor je kono ekta niye kaj kora jai
all.sum

# -------------- 5 number summary -------------------- 
# min, 1st qunatile,median,mean, 3rd quantile,max ---

names(anytxtfile)#uporer header gulo

summary(anytxtfile)#all datar all summary dekhabe
summary(anytxtfile$Marks)#specific kono datar summary

marks<-anytxtfile$Marks#all datar vitore shudhu marks gulo import korbe
marks

mean(marks)
min(marks)
max(marks)
median(marks)
mode(marks)#mode kaj kore na


# #the 25th percentile is the value at which 25% of the answers lie below that value, 
# and 75% of the answers lie above that value.
# 50th Percentile - Also known as the Median

quantile(marks,0.25)#first quantile
quantile(marks,0.50)#2nd quantile
median(marks)
#2nd quantile== mode
quantile(marks,0.75)#3rd quantile
sum(marks)


summary(anytxtfile)
summary(as.factor(anytxtfile$Marks))#mode ber kora jabe

#---------------------------
# names(anytxtfile)
# Marks<-as.factor(marks)
# anytxtfile<-anytxtfile[-c(6,7),]
# anytxtfile
# anytxtfile<-cbind(anytxtfile,Marks)
# names(anytxtfile)
# 
names(anytxtfile)
abc <- as.factor(Marks)
# anytxtfile <- anytxtfile[,-c(1,2)]
# anytxtfile <- cbind(anytxtfile,Marks)
# names(anytxtfile)

anytxtfile<-read.table("studentstxt.txt",header=T,sep="")

View(anytxtfile)
class(anytxtfile$Marks)
class(anytxtfile$Names)
View(anytxtfile)
summary(anytxtfile)
