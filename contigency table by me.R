lcd <- read.table("LungCapData.txt",header = T,sep="\t")
table(lcd$Smoke,lcd$Gender)
table(lcd$Age,lcd$Smoke)
