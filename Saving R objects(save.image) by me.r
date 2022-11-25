# #etar muloto kaj hocche amra je data ta r script
# te save kori seta muloto environtment soho save hoi na ,
# punorai first theke run kora lage 
# kintu ekhane save.image e environment soho save hobe,
# jekhan theke kono code ses koro sekhan theke start hobe:

lcd<-read.table("LungCapData.txt",header = T)
#attach it

attach(lcd)
# check if some need to make as factor
Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)
names(lcd)
newdata<-data.frame(LungCap,Age,Height,Smoke,Gender,Caesarean)
class(newdata)
class(newdata$Gender)

meanage<-mean(Age)
meanage
z<-summary(newdata)
z

#how to save all objets and varible is runing:
save.image("saving r objects.Rdata")#extension .Rdata
