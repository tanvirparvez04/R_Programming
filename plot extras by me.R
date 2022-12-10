#import data
lcd<-read.table("LungCapData.txt",header=T,sep="\t")
View(lcd)

#barplot:
class(lcd$Smoke)
smoke<-as.factor(lcd$Smoke)
class(smoke)
table(smoke)
#persentage
table(smoke)/length(smoke)*100
#persentage : point er por dui ghor nite chaile
round(table(smoke)/length(smoke)*100,2)
#barplot
barplot(round(table(smoke)/length(smoke)*100,2))

#mean check:
mean(lcd$LungCap)
sum(lcd$LungCap)/length(lcd$LungCap)
#plot:
plot(1:length(lcd$LungCap),lcd$LungCap)

lcd<-read.table("LungCapData.txt",header=T,sep="\t")
View(lcd)

#taking any colmn data in a variable
lp<-lcd$LungCap
lp

#take all variable by indexing:
lp[]
lcd$LungCap[]
lp
lcd$LungCap

#class
class(lp)
class(lcd$LungCap)

#as a fixed sequenced value:like eto theke eto porjonto valu jodi nite chai:

lp[1:5]
lcd$LungCap[1:5]
lp[100:200]

#first 6 value:
head(lp)
head(lcd$LungCap)

#last 6:
tail(lcd$LungCap)
tail(lp)

#quantile:
quantile(lp,0.5)
quantile(lcd$LungCap,0.5)

#range:max-min:
max(lcd$LungCap)-min(lcd$LungCap)
range(lcd$LungCap)
rng<-range(lcd$LungCap)
rng[1]
rng[2]
rng[2]-rng[1]==max(lcd$LungCap)-min(lcd$LungCap)


#         ------           trim means:    -------

#mean function er vitor trim name ekta attributes ase:
#dhorlam amra 100 ta number niye mean korbo,ekhane trim=0.2 deya mane :
#sei 100 ta num er first theke 20 ta and last theke 20 ta num bad hoye ja thakbe sei num er mean ber kore dibe :

mean(lcd$LungCap)
mean(lcd$LungCap,trim=0.2)
mean(lcd$LungCap,0.2)

#-------------quantile:-----------------

boxplot(lcd$LungCap)
#1st quantile:
quantile(lcd$LungCap,0.25)
#or
quantile(lcd$LungCap,probs=0.25)
#1,2,3rd quantile
quantile(lcd$LungCap,c(0.25,0.50,0.75))
#median:
median(lcd$LungCap)==quantile(lcd$LungCap,0.50)
#interquantile range:
qn<-quantile(lcd$LungCap,c(0.25,0.50,0.75))
igr<-qn[3]-qn[1]
igr

#correlation:

cor(lcd$LungCap,lcd$Age,method="kendall")

cor(lcd$LungCap,lcd$Age,method="spearman")

cor(lcd$LungCap,lcd$Age)

#               chart modification:---------------------------
plot(lcd$Age,lcd$LungCap)
plot(lcd$Age,lcd$LungCap,
     main = "Age vs Lungcap",
     xlab="Age",ylab="Lungcap",
     pch=9,
     col=4,
     las=1,
     col.main="blue",
     col.lab=4,
     col.axis=10
)

#size:

plot(lcd$Age,lcd$LungCap,
     main = "Age vs Lungcap",
     xlab="Age",ylab="Lungcap",
     pch=16,
     col="red",
     las=1,
     col.main="blue",
     col.lab=10,
     col.axis=3,
     cex=2,
     cex.main=2,
     cex.lab=1.5,
     cex.axis=2,
     
)
lcd$Age[lcd$Gender=='female']

plot(lcd$Age[lcd$Gender=="female"],lcd$LungCap[lcd$Gender=="female"],
     pch=16,col="red")
points(lcd$Age[lcd$Gender=="male"],lcd$LungCap[lcd$Gender=="male"],col="blue")


#to split the window:
par(mfrow=c(2,2))
par(mfrow=c(1,1))

                           #axis modification:

#axis na dite chaile :axes=F
plot(lcd$Age,lcd$Height,main="title",axes = F)
#notun kore axis setup
#at	:the points at which tick-marks are to be drawn
#side=1: x okkhorekha bujhai
axis(side = 1,at=c(6,12.3,15),labels=c("a","b","c"))
#side=2:y okkhorekha bujhai
axis(side=2,at=c(55,65,75),labels=c(55,65,75))
