
#-----------BOXPLOT--------:

# Boxplots are a measure of how well distributed is the data in a data set.
#It divides the data set into three quartiles.
#This graph represents the minimum, maximum, median, first quartile and third quartile in the data set.
#It is also useful in comparing the distribution of data across data sets by drawing boxplots for each of them.
# 
# Boxplots are created in R by using the boxplot() function.
# 
# Syntax
# The basic syntax to create a boxplot in R is −
# 
# boxplot(x, data, notch, varwidth, names, main)
# Following is the description of the parameters used −
# 
# x is a vector or a formula.
# 
# data is the data frame.
# 
# notch is a logical value. Set as TRUE to draw a notch.
# 
# varwidth is a logical value. Set as true to draw width of the box proportionate to the sample size.
# 
# names are the group labels which will be printed under each boxplot.
# 
# main is used to give a title to the graph.

#------------------------------------------------------
#EXAMLE:  mtcars default data set in r environment
#check default data set:
mtcars
names(mtcars)

#take colmn mpg and cyl colmn 
input<-mtcars[,c("mpg","cyl")]
input

#Creating the Boxplot
#The below script will create a boxplot graph for the relation between mpg (miles per gallon) and cyl (number of cylinders).

# Give the chart file a name.
png(file = "boxplot.png")

#plot the chart:
boxplot(mpg~cyl,
        mtcars,
        main="mpg and cyl"
        )


# Save the file.
#dev.off()

#Boxplot with Notch:
#We can draw boxplot with notch to find out how the medians of different data groups match with each other.

boxplot(mpg~cyl,data=mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data",
        notch=TRUE,#median ta valo bojha jai
        varwidth=TRUE,#majher ta chepe ase,dekhte sundor lage
        col=c("red","yellow","green"),#colour
        names=c("High","Medium","Low")#chitro gulor name
  )

#--------------------new chapter of box plot:-----------------
#take a txt file:
lcd<-read.table("LungCapData.txt",header=T,sep="\t")
View(lcd)

#is.factor(to check if factor)/as.factor
names(lcd)
is.factor(lcd$Smoke)

#converted data character/numeric to factor
smoke<-as.factor(lcd$Smoke)
gender<-as.factor(lcd$Gender)
Caesarean<-as.factor(lcd$Caesarean)
height<-as.factor(lcd$Height)

summary(smoke)
summary(c(smoke,gender,Caesarean))
lcd$Caesarean
#---------------five number summary-------
# The five-number summary is a set of descriptive statistics that provides information about a dataset. It consists of the five most important sample percentiles:
#   
# the sample minimum (smallest observation)
# the lower quartile or first quartile
# the median (the middle value)
# the upper quartile or third quartile
# the sample maximum (largest observation)

summary(lcd$LungCap)
boxplot(lcd$LungCap)

# In addition to the median of a single set of data
# there are two related statistics called the upper 
# and lower quartiles. If data are placed in order,
# then the lower quartile is central to the lower half
# of the data and the upper quartile is central to the
# upper half of the data. These quartiles are used to 
# calculate the interquartile range, which helps to 
# describe the spread of the data, and determine 
# whether or not any data points are outliers.


#for better knowledge:C:\Users\88017\Downloads\R\MY PROGRAM\five number summary.jpg


boxplot(lcd$LungCap)
#1stquartile -+ .5 IQR
#IGR(IQR = Interquartile Range ) =3rd quartile - 1st quartile
#Quartiles are a set of three values that divide ordered data sets into four equal parts. Quantiles are units of equal, adjacent quantities in a distribution
igr<-quantile(lcd$LungCap,.75)-quantile(lcd$LungCap,.25)
igr
#to check
summary(lcd$LungCap)
9.8-6.150==igr

#-----------------------abline():stright line------
#information:

#stright line in the graph is it horizontal or vartical
#What does Abline do in R?
#The R function abline() can be used to add vertical, horizontal or regression lines to a graph

#create  a plot

dim(lcd)
plot(1:725,lcd$LungCap)

#take some point

lb<-4.5#kon point diye line hobe
hb<-11.5
#create abline/stright line
abline(h=lb)#horizontal wise
abline(h=hb)
abline(v=300)#verticle wise
abline(v=725/2)


#-------------levels() factor:--------------
#information:

#vinno vinno koi dhoroner data ase
#Levels() function provides access to the levels attribute of a variable

levels(gender)
levels(smoke)

#-------------------separeted-------------------
#information:
#ekta page ke koyekta ongshe vag kora:par(mfrow=c(nrow=,ncol=))
#The par() function allows to set parameters to the plot. The mfrow() parameter allows to split the screen in several panels. 
lcd$LungCap
boxplot(lcd$LungCap)
boxplot(lcd$LungCap~gender)#lungcap data ke gender mane male er lungcap er jonno alada graph ,female er lungcap datar jonno alada graph
par(mfrow=c(2,2))
boxplot(lcd$LungCap~gender)
boxplot(lcd$LungCap~smoke)
boxplot(mtcars$mpg~mtcars$cyl)
boxplot(mtcars$mpg)
par(mfrow=c(1,1))


#------------designs  part---------

boxplot(lcd$LungCap,
        main="Lungcap",
        xlab="male and female",
        ylab="abcd",
        col='lightblue',
        las=1,
        cex.main=1.5,
        cex.xlab=2,
        cex.ylab=2
        
        )

#-----------------stratify-----------------
#cut() function in R Language is used to divide a numeric vector into different ranges
lcd$Age
#create an class interval 0-5,5-10,10-15,15-20 and <13,.....
AgeGroup<-cut(lcd$Age,breaks = c(0,5,10,15,25),levels=c("<13","6/7","9/10","21>"))
AgeGroup              
boxplot(lcd$LungCap~AgeGroup,col=c(6,2,4,5))
levels(AgeGroup)

#another

AgeGroup2<-cut(lcd$Age,breaks = c(0,5,10,15,25),labels = c("<13","14/15","16/17","18+"))
AgeGroup2
boxplot(lcd$LungCap~AgeGroup2,col=c(2,4,6,9))
levels(AgeGroup2)


#another;
boxplot(lcd$LungCap[lcd$Age>18])
boxplot(lcd$LungCap[lcd$Gender=="male"])
boxplot(lcd$LungCap[lcd$Gender=="female"])
