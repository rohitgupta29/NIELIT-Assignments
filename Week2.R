

x<-read.csv(file.choose()) # to read a csv file



plot.new()
plot.window(xlim=c(0,10),ylim=c(0,10))
axis(1)
axis(2)
abline(v=0)
abline(h=0)

abline(v = 4)

abline(h = 3)


abline(a=1,b=1)

abline(a=3,b=1)

points(4,6)

points(7,7)

title(main="This is main heading.",xlab="X values",ylab="Y values")

##########################################################################################



#Pie Chart

#Create data for the graph
x <- c(21,62,10,53)
x
pie(x)

labels <- c("London","New York", "Singapore", "Mumbai")
labels
pie(x, labels)

colors = c("red","green","blue","yellow")
colors
pie(x,labels,main = "City Pie chart", col = rainbow(length(x)))
#rainbow function gives color codes, with length of x, here x = 4

dev.off() # takes it away, from what i percieve.

###########################################################################################




#Create the data for the chart.
H <- c(7,12,28,3,41)
barplot(H)

#BArplot

#Create the data for the chart.
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")


#Plot the bar chart.
barplot(H,names.arg = M,xlab = "Month",ylab = "Revenue", col = "blue", main = "Revenue chart", border = "red")

#Create the input vectors.
colors <- c("green","orange","brown")
month <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")


#Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3,ncol = 5, byrow = TRUE)
Values
#Create the bar chart.

barplot(Values,main = "total revenue",names.arg = month, xlab = "month",ylab = "revenue",col = colors)


#Add legend to the chart.
legend("topleft", regions, cex = 1.3, fill = colors) #cex- to adjust the size of the legend.

#Save the file.
dev.off()       #clear the graph

#Thats all about bar plot

##########################################################################################@@

#Histogram

#Create data for the graph.

v <- c(9,13,21,8,36,22,12,41,31,33,19)

hist(v)

#Create the histogram
hist(v,xlab = "Range", col = "Yellow", border = "blue")


#Create data for the graph.
v <- c(9,13,21,8,36,22,12,41,31,33,19)

#Create the histogram.
hist(v,xlab = "Range", col = "green",border = "red", xlim = c(0,40),ylim = c(0,5))


#create data for the graphics.

v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v)

#Create the histogram
hist(v,xlab = "Range",col = "yellow", border = "blue")


#Create data for the graph

v <- c(9,13,21,8,36,22,12,41,31,33,19)

#Create histogram

hist(v,xlab = "Range",col = "green", border = "red", xlim = c(0,40),ylim = c(0,5))






##############################################################################################
#Scatter plot

#Create the data for the chart.

x<- c(7,12,28,3,41)
plot(x)

y <- c(14,7,6,19,3)
plot(y)


plot(x,y)

#Plot the chart.
plot(v,type = "o") #"o" = points as o.

#create the data for the chart.
v<- c(7,12,28,3,41)
t<- c(14,7,6,19,3)


#Plot the Bar chart.
plot(v,type = "o", col = "red",xlab = "Month",ylab = "Rain fall",
     main = 'Rain fall chart')


#Plot the bar chart
plot(v,type = "s", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")  #step diagram


lines(t,type = "o", col = "blue")

#save the file 
dev.off()   #clear the graph

?plot #give details of plots in R




#####################################################################################

input <- mtcars[,c('mpg','cyl')]
print(head(input))


#plot the chart. 
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "miles per Gallon",
        main = "milage Data")

#save the file.
dev.off()


#Plot the chart.
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "miles Per Gallon",
        main = "Milage data",
        notch = TRUE,
        col = c("green","yellow","purple"),
        names = c("high","medium", "low"))


jpeg(file = "box1.jpg") #saving the plot

dev.off()




#Scatter Plot Matrix

#Get the input values.
input <- mtcars[,c('wt','mpg')]
input

#Plot the chart for cars with weight between 2.5 to 5 and milage between 

plot(x = input$wt, y = input$mpg,
     xlab = "weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage"
     )


#save the file
dev.off()


pairs(~wt+mpg+disp+disp+cyl, data = mtcars,
      main = 'Scatterplot Matrix')

#Save the file
dev.off()