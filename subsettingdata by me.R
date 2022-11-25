#excel file import:

library(readxl)
LungCapData<-read_excel("LungCapData.xlsx")
View(LungCapData)

lcd<-LungCapData
View(lcd)
names(lcd)#header gulo show korbe
#--------------------------
Age
Height
lcd$Age
Height
lcd$Height
Gender
lcd$Gender
#---------------------
attach(lcd)
Age
Gender
Height

#####-----------------------
detach(lcd)
Age
Gender

#-------------attched----------------
attach(lcd)
names(lcd)
class(Gender)
Gender
gen<-as.factor(Gender)#gender elhon character e ase take factor e convert kora
gen
lcd2<-lcd[,-5]#5 num colmn e gender chilo ta kete gelo
names(lcd)
names(lcd2)
lcd3<-cbind(lcd2,gen)
names(lcd3)
View(lcd3)
class(lcd3$gen)

#-----------

attach(lcd)
lcd
M<-lcd[Gender=="male",]#?
dim(M)
F<-lcd[Gender=="female",]#?
dim(F)
length(M)#mot koita colmn dekhabe
View(F)

#------------------------------

maleOver15 <- lcd[Age>=15 & Gender=="male",]#?
summary(maleOver15$Age)
summary(lcd$Age)



#-------------------------

any.data<-read.table(choose.files(),header=T,sep="\t")
View(any.data)
abc<-Marks>60
View(abc)
abc2<-as.numeric(abc)
View(abc2)
table(abc2)
