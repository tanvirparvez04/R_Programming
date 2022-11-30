# Line Graphs;
# A line graph has a line that connects all the points in a diagram.
#To create a line, use the plot() function and add the type parameter with a value of "l":

plot(1:10)
plot(1:10,type="l")

#Line Color
plot(1:10,type="l",col="red")

#Line Width
#To change the width of the line, use the lwd parameter (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger):
plot(1:10,type="l",col="2",lwd=2)

# Line Styles
# The line is solid by default. Use the lty parameter with a value from 0 to 6 to specify the line format.
# For example, lty=3 will display a dotted line instead of a solid line:
plot(1:10,type="l",col="2",lwd=2,lty=3)

#Multiple Lines
#To display more than one line in a graph, use the plot() function together with the lines() function:

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
lines(1:10,type="l",col="6")
#--------------------------------------------
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)
plot(v,type="o")
# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")
#Multiple Lines in a Line Chart
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")
lines(t,col="blue",type="o")
