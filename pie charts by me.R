x<-c(10,20,30,40)
y<-seq(10,50,by=5)
pie(x)
pie(y)
#By default, the plotting of the first pie starts from the x-axis and move counterclockwise.
#Note: The size of each pie is determined by comparing the value with all the other values, by using this formula:
  #The value divided by the sum of all values: x/sum(x)
x/sum(x)
pie(x)

#Start Angle
#The value of init.angle is defined with angle in degrees, where default angle is 0.
pie(x)
pie(x,init.angle=90)

#-------------------Labels:lebel="" and Header:main=""-------
# Create a vector of pies
x <- c(10,20,30,40)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")

#colours:
# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)
pie(x, label = mylabel, main = "Fruits", col = 1:length(x))
#-----------------------------legend----

#Legend:
x
# Create a vector of labels
anylabel <- c("Apples", "Bananas", "Cherries", "Dates")
# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

pie(x,col=colors,label = anylabel,main="pie charts")
legend("top",anylabel,fill=colors)

#the legend can be positioned as either:
#bottomright, bottom, bottomleft, left, topleft, top, topright, right, center

#-------------------------------3d pie chart-----------------------------
library(plotrix)
g<-c(21,62,10,30)
pie(g)
lbl<-c("green","rajshahi","dubai","qatar")
pie3D(g,label=lbl,explode=.1)
pie3D(g,explode=.2,labels= lbl,col=colors)

pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")
