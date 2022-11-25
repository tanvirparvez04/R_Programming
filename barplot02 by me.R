#------------- plotting bar plot and pie plot ----

lcd2<-read.table("LungCapData.txt",header = T)
View(lcd2)
names(lcd2)
barplot(lcd2$LungCap,lcd2$Age,lcd2$Height)
class(lcd2$Gender)

attach(lcd2)
g<-as.factor(Gender)
s<-as.factor(Smoke)
c<-as.factor(Caesarean)

gsc.table<-data.frame(g,s,c)
lcd2

head(lcd2)
lcd3<-lcd2[,-c(4,5,6)]
lcd4<-cbind(lcd3,gsc.table)
#lcd4<-cbind(lcd3,g,s,c)

count<-table(g)
count

barplot(
  count,
  main = "Number of male and female"
)
#another:
probability_of_gender<-table(g)/length(g)
probability_of_gender
barplot(
  probability_of_gender,
  mail="persentage of male and female"
)
#another:
barplot(
  probability_of_gender,#jar plot chai
  main="persentage of male and female",
  las=1,# y okkhorekhar lekha thikthak
  xlab="probability",#y okkho rekhate ki lekha thakbe
  ylab="Gender",#x okkho rekha te likha thabe
  horiz=T,#anuvum borabor plot hobe
  names.arg = c("FeMale","Male"),#row er naam thik kora jai
  cex.main=2#title er front barabe
)
