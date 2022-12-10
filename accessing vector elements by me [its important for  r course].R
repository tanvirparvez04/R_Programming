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


