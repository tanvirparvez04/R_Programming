lcd<-read.table("LungCapData.txt",header = T,sep="\t")
#create a ytable
t1<-table(lcd$Smoke,lcd$Gender)
mosaicplot(t1,
           col=c(4,2),
           main = "Title",
           xlab="smoking",
           ylab="gender",
           las=1
  
)
