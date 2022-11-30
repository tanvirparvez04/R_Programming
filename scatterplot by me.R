# A "scatter plot" is a type of plot used to display the relationship between two numerical variables, and plots one dot for each observation.
# Scatterplots show many points plotted in the Cartesian plane. Each point represents the values of two variables. One variable is chosen in the horizontal axis and another in the vertical axis.
# The simple scatterplot is created using the plot() function.
# 
# Syntax

# The basic syntax for creating scatterplot in R is −
# 
# plot(x, y, main, xlab, ylab, xlim, ylim, axes)

# Following is the description of the parameters used −
# 
# x is the data set whose values are the horizontal coordinates.
# 
# y is the data set whose values are the vertical coordinates.

# main is the tile of the graph.
# 
# xlab is the label in the horizontal axis.
# 
# ylab is the label in the vertical axis.
# 
# xlim is the limits of the values of x used for plotting.
# 
# ylim is the limits of the values of y used for plotting.
# 
# axes indicates whether both axes should be drawn on the plot.
#-------------------------------------------------
# Get the input values.
input <- mtcars[,c('wt','mpg')]

# Give the chart file a name.
png(file = "scatterplot.png")

# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)

pairs(~wt+mpg+disp+cyl,data = mtcars,
      main = "Scatterplot Matrix")

#---------------------------------------
#example:
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
length(x)==length(y)
plot(x,y)
plot(x,y,main="observations of cars",xlab="car age",ylab="car speed")

#Compare Plots:
#To compare the plot with another plot, use the points() function:

# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1,y1,main = "age and speed",xlab="age",ylab="speed",col="red",cex=2)
points(x2,y2,col="blue",cex=2)   
#--------------------------------------------------------------
lcd<-read.table("LungCapData.txt",header = T,sep="\t")
plot(lcd$Age,lcd$Height,
     ylab = "Height",
     xlab="Age22",
     xlim = c(0,25),
     ylim=c(30,90),
     las=1,
     cex=.5
     
)

abline(lm(Height~Age),col="red",lwd=3)
lines(smooth.spline(Height~Age),col="blue",lwd=3,lty=4)
cor(Age,Height)#correlation
