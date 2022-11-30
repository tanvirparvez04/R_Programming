#example:

## x-axis values
x <- c("A", "B", "C", "D")

# y-axis values
y <- c(2, 4, 6, 8)

barplot(y,names.arg = x)

# Example Explained:
# The x variable represents values in the x-axis (A,B,C,D)
# The y variable represents values in the y-axis (2,4,6,8)
# Then we use the barplot() function to create a bar chart of the values
# names.arg defines the names of each observation in the x-axis
#col="red" defines the colour


#bar colours:
barplot(y,names.arg = x,col="red")
#bar density or bar texture
barplot(y,names.arg = x,col="red",density=10)
#bar width:
barplot(y,names.arg = x,col="red",width = c(10,3,5,7))
#horizontal bar:
barplot(y,names.arg = x,col="red",width = c(10,3,5,7),horiz=T)

#-----------------------------------------------------------------

lcd<-read.table("LungCapData.txt",header = T,sep = "\t")
names(lcd)
###########################class01##############
#more than one column:
barplot( c(lcd$Age,lcd$Height,lcd$LungCap))#onek data hoyate onek baje plot dekhai

#any one column :
class(lcd$Gender)
barplot(lcd$Gender)#hobe na karon gender factor e nai
barplot(table(lcd$Gender))#factor nah holeo data gulo dable er vitor rekhe plot kora jai

##aother barplot with persentage:
count<-table(Gender)
persentage_of_male_and_female<-count/length(g)#persentage of male and female  367/725=male or female/n or all element 
persentage_of_male_and_female

barplot(persentage_of_male_and_female,main = "persentage of male and female")
#----------------------design part------------
#degin of barplot:
barplot(
  persentage_of_male_and_female,
  main="persentage of male and female",#uporer title
  xlab="Gender",#x okkhorekha borabor lekha
  ylab="Persentage",# y okkho rekha borabor lekha
  las=1,#las=1 mane y okkhorekhar point er likha gulo sundor soman kore likha beka thakle
  horiz=T  ,#x ke y te aar y ke t te orthat transport
  names.arg = c("Female01","male01"),#coln er je data gulor naam niye kaj korsilam 
  cex.main=2,#front size of main title
  cex.axis = par("cex.axis"), cex.names = par("cex.axis"),
)

#########################class02###################


#------------- plotting bar plot ----

#when we compare two colmun with tho differnt things like gender and smoke
View(lcd)
#create a table
table01<-table(lcd$Smoke,lcd$Gender)
table01

#create barplot
barplot(table01)
barplot(table01,
        beside=T,#pashapasi graphn dekhabe
        col=c("red","green"),
        legend.text = c("smoke","nonsmoke"),#coloer er sequence mote description dibe
        main="Title",
        las=1,
        xlab="Gender",
        ylab="Smoke vs No Smoke"
)

#another:
attach(lcd)
g<-as.factor(Gender)
s<-as.factor(Smoke)
c<-as.factor(lcd$Caesarean)

newtable<-data.frame(lcd$LungCap,lcd$Age,lcd$Height,g,s,c)
head(newtable)
summary(newtable)

attach(newtable)
count<-table(g)
p<-count/length(g)
p
barplot(count,main = "Number of Male and Female")
barplot(p,main="Percent of Male and Female")
barplot(p,main="Percetage of Male and Female",xlab="Gender",ylab="Percetage",las=1)
barplot(p,main="Percentage of Male and Female",
        xlab="%",
        ylab="Gender",
        horiz = T,
        names.arg = c("Female","Male"),
        las=1
)

#------------------piechart---------------
pie(count,main="Title")
pie(count,main="title",col=heat.colors(3))

