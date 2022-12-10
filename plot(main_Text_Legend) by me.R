lcd<-read.table("LungCapData.txt",header=T,sep="\t")
attach(lcd)
plot(lcd$Age,lcd$LungCap)
#correlation:
x<-cor(Age,LungCap)
x2<-round(x,2)
x2
#add text in plot:
#text(x= x er point,
     #y= y er point,
     #label=ki likhte chai
     #adj:adjustment:0.5 dile majhe,+ diye joto dibo toto baye chapbe,- diye joto dibo toto dane chapbe
#)
plot(lcd$Age,lcd$LungCap)
text(x=5,y=8,label=x,adj=.5) 
text(x=5,y=14,label="r=81.06",adj=-5)

#---------------------
plot(Age,LungCap,main = "Age vs LungCap",las=1,xlim=c(0,20),ylim = c(0,17))
text(x=5,y=14,label=paste("r=",x2),col="red",cex=2,font=6)
abline(h=quantile(LungCap,c(0.25,0.50,0.75)))
abline(h=mean(LungCap),col="green",lwd=3)
text(x=3,y=8.5,label="Mean Lungcap",col="blue",font=2)
abline(v=quantile(.5),col="6")

#---------------------- mtext:
#mtext:Write Text into the Margins of a Plot
#side:on which side of the plot (1=bottom, 2=left, 3=top, 4=right).

plot(Age,LungCap,main = "Age vs LungCap Data ",col=4)
mtext(text="mean",side = 2)
mtext(text = "quartile",side=1)

#-----------------------------

#take 1000 random varible from nornam distribution
x<-rnorm(10000)
p<-dnorm(x)
plot(x,p)
mtext("mean",2)
abline(v=quantile(x,c(0.25,0.50,0.75)),col=c(4,5,6),lwd=3)

#------------------------

x2<-rnorm(10000)
q<-pnorm(x2)
plot(x2,q)
abline(v=quantile(x2,c(0.25,0.5,0.75)),col=c(2,3,4),lwd=3)
