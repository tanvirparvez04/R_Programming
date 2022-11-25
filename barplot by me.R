lcd<-read.table("LungCapData.txt",header = T,sep = "\t")
names(lcd)
barplot(height = c(lcd$Age,lcd$Height,lcd$LungCap))#onek data hoyate onek baje plot dekhai

#sudhu Gender er plot dekhbo:
class(lcd$Gender)

barplot(table(lcd$Gender))

#anather way :sudhu gender er plot dekhbo:
attach(lcd)
g<-as.factor(Gender)
s<-as.factor(Smoke)
c<-as.factor(Caesarean)
g
s
c
names(lcd)
lcd2<-lcd[,-c(4,5,6)]
head(lcd2)
lcd3<-cbind(lcd2,s,g,c)
head(lcd3)

count<-table(g)
count

#barplot
barplot(count)
barplot(count,main = "Gender")#height= ba surute ja dibo tar plot dekhai
              #main er vitore ja likhbo upore title tai dekhabe
#aother:
persentage_of_male_and_female<-count/length(g)#persentage of male and female  367/725=male or female/n or all element 
persentage_of_male_and_female

barplot(persentage_of_male_and_female,main = "persentage of male and female")

barplot(
  persentage_of_male_and_female,
  main="persentage of male and female",#uporer title
  xlab="Gender",#x okkhorekha borabor lekha
  ylab="Persentage",# y okkho rekha borabor lekha
  las=1,#las=1 mane y okkhorekhar point er likha gulo sundor soman kore likha beka thakle
  horiz=T  ,#x ke y te aar y ke t te orthat transport
  names.arg = c("Female01","male01")#coln er je data gulor naam niye kaj korsilam 
   
)

#agein:
s<-as.factor(lcd$Smoke)
s
               
count_smoke<-table(s)
count_smoke
barplot(count_smoke)


probabilty<-count_smoke/length(s)
probabilty
barplot(
  probabilty,
  main="probabiity of smokers",
  # xlab="Smokers",
  # ylab="probabilities",
  las=1,
  horiz=T,#xlab,ylab change korte hobe
  ylab="Smokers",
  xlab="probabilities",
  names.arg=c("yes=smokers","No:Not Smokers"),
  cex.main=2,#front size of main title
 
  cex.axis = par("cex.axis"), cex.names = par("cex.axis"),
  
  
  
  
)

